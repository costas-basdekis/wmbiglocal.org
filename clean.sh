#!/usr/bin/env bash
# shellcheck disable=SC3060

cd wmbiglocal.org || exit

chmod -R +rw .

echo "Renaming files with ?, &, %3F, and = in their name"

while IFS= read -r -d '' path; do
  filename="${path##*/}"
  clean_filename="$(echo "${filename}" | sed 's/%3F/\?/g' | sed 's/\?/_q_/g' | sed 's/&/_a_/g' | sed 's/=/_e_/g' | sed 's/#/_h_/g')"
  clean_path="$(echo "${path}" | sed 's/%3F/\?/g' | sed 's/\?/_q_/g' | sed 's/&/_a_/g' | sed 's/=/_e_/g' | sed 's/#/_h_/g')"
  escaped_filename="$(echo "${filename}" | sed 's/[^^]/[&]/g; s/\^/\\^/g')"
  escaped_clean_filename="$(echo "${clean_filename}" | sed 's/[&/\]/\\&/g')"
  echo "${filename} -> ${clean_path}"
  grep -rl "${filename}" | xargs --no-run-if-empty -n 1 sed -i 's/'"${escaped_filename}"'/'"${escaped_clean_filename}"'/g'
  mv "${path}" "${clean_path}"
done < <(find . -type f -regextype posix-extended -iregex '.*(\?|&|=|%3F).*')

echo "Disabling links to ReCaptcha and GTM"

grep -rl 'https://www.google.com/recaptcha' | xargs --no-run-if-empty -n 1 sed -i -E 's@(src=["'\'']https://www.google.com/recaptcha.*?["'\''])@data-\1@g'
grep -rl 'https://www.googletagmanager.com' | xargs --no-run-if-empty -n 1 sed -i -E 's@(src=["'\'']https://www.googletagmanager.com.*?["'\''])@data-\1@g'

echo "Replace CSS URL(), href, action, src, and srcset references to domain with relative ones"

while IFS= read -r path; do
  echo "${path}"
  depth_slashes="${path//[!\/]}" # Keep only the slashes
  prefix="${depth_slashes////../}" # Replace '/' with '../', syntax is ${VAR//find/replace}
  sed -i -E 's@(src=['\''"]|href=['\''"]|action=['\''"]|url\()https://wmbiglocal.org/@\1'"${prefix}"'@g' "${path}"
  while grep -q -P 'srcset=['\''"][^'\''"]*https://wmbiglocal.org' "${path}"; do
    sed -i -E 's@(srcset=['\''"][^'\''"]*)https://wmbiglocal.org/@\1'"${prefix}"'@g' "${path}"
  done
done < <(grep -rl -P '(src(set)?=['\''"][^'\''"]*|href=['\''"]|action=['\''"]|url\()https://wmbiglocal.org')

echo "Manual fixes"

sed -i -E 's@"\\&quot;|\\&quot;"@\\"@g' home.html
