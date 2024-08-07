jQuery(document).ready(function ($) {
  //
  // Carousel.
  if ($(".sptp-carousel").length > 0) {
    $(".sptp-carousel").each(function () {
      var sptpID = $(this)
        .closest(".sptp-section")
        .attr("id");
      var sptpCarousel = $("#" + sptpID + " .sptp-main-carousel").data(
        "carousel"
      );
      if (sptpCarousel.mode === "ticker") {
        $("#" + sptpID + " .sptp-main-carousel .swiper-wrapper").bxSlider({
          ticker: true,
          tickerHover: sptpCarousel.stop_onhover,
          speed: 20000,
          easing: null,
          slideWidth: 480,
          slideMargin: sptpCarousel.spaceBetween,
          minSlides: sptpCarousel.items,
          maxSlides: sptpCarousel.items,
          moveSlides: sptpCarousel.items,
          shrinkItems: false,
          auto: false
        });
      }
      if (sptpCarousel.mode === "standard") {
        var swiper = new Swiper("#" + sptpID + " .sptp-main-carousel", {
          speed: sptpCarousel.speed,
          slidesPerView: sptpCarousel.items,
          spaceBetween: sptpCarousel.spaceBetween,
          autoplay: sptpCarousel.autoplay ? ({ delay: sptpCarousel.autoplay_speed }) : false,
          preloadImages: false,
          runCallbacksOnInit: false,
          initialSlide: 0,
          loop: sptpCarousel.loop,
          autoHeight: sptpCarousel.autoHeight,
          pagination: {
            el: "#" + sptpID + " .sptp-main-carousel .swiper-pagination",
            clickable: true
          },
          navigation: {
            nextEl: "#" + sptpID + " .sptp-main-carousel .sptp-button-next",
            prevEl: "#" + sptpID + " .sptp-main-carousel .sptp-button-prev"
          },
          breakpoints: {
            320: {
              slidesPerView: sptpCarousel.breakpoints.mobile
            },
            414: {
              slidesPerView: sptpCarousel.breakpoints.tablet
            },
            768: {
              slidesPerView: sptpCarousel.breakpoints.laptop
            },
            1024: {
              slidesPerView: sptpCarousel.breakpoints.desktop
            }
          },
          ally: {
            enabled: sptpCarousel.enabled,
            prevSlideMessage: sptpCarousel.prevSlideMessage,
            nextSlideMessage: sptpCarousel.nextSlideMessage,
            firstSlideMessage: sptpCarousel.firstSlideMessage,
            lastSlideMessage: sptpCarousel.lastSlideMessage,
            paginationBulletMessage: sptpCarousel.paginationBulletMessage
          },
          keyboard: {
            enabled: true
          }
        });
        $('.sptp-main-carousel').css('opacity', 1);
      }
      if (sptpCarousel.stop_onhover && sptpCarousel.autoplay) {
        $("#" + sptpID + " .sptp-main-carousel").hover(
          function () {
            swiper.autoplay.stop();
          },
          function () {
            swiper.autoplay.start();
          }
        );
      }
    });
  }

  function progressBarAnimation() {
    $(".sptp-progress-container").each(function () {
      var percent = $(this).data("title");
      $(this)
        .find(".sptp-progress-bar")
        .animate(
          {
            width: percent
          },
          1000
        );
      var percentInt = parseInt(percent);
      if (percentInt >= 95) {
        $(this)
          .find(".sptp-top")
          .css("right", 0);
      }
      if (percentInt === 100) {
        $(this)
          .find(".sptp-top")
          .css("width", "40px");
      }
    });
  }
  function iconOnImage() {
    $(document).on(
      {
        mouseenter: function () {
          $(this)
            .find(".sptp-icon")
            .animate(
              {
                opacity: 1
              },
              50
            );
        },
        mouseleave: function () {
          $(this)
            .find(".sptp-icon")
            .animate(
              {
                opacity: 0
              },
              50
            );
        }
      },
      ".sptp-icon-on-image"
    );
  }
  function contentOverImage() {
    $(".sptp-content-on-image").hover(
      function () {
        $(this)
          .find(".content")
          .addClass("animation");
      },
      function () {
        $(this)
          .find(".content")
          .removeClass("animation");
      }
    );
  }

  progressBarAnimation();
  // iconOnImage();
  contentOverImage();

  if ($(".overlay_on_image").length > 0) {
    $(".overlay_on_image").each(function () {
      var sptpID = $(this)
        .closest(".sptp-section")
        .attr("id");
      var width = $("#" + sptpID + " .overlay_on_image>.image").width();
      $("#" + sptpID + " .overlay_on_image>.content").css("width", width);
    });
  }

  // REMOVE AND ADD CLICK EVENT
  $(".doAddItem").on("click", function () {
    $(".gridder")
      .data("gridderExpander")
      .gridderAddItem("TEST");
  });

  // Call Gridder
  if ($(".gridder").length != 0) {
    $(".gridder").gridderExpander({
      scrollOffset: 60,
      scrollTo: "panel", // "panel" or "listitem"
      animationSpeed: 400,
      animationEasing: "easeInOutExpo",
      nextText: "<i class='fa fa-angle-right'></i>", // Next button text
      prevText: "<i class='fa fa-angle-left'></i>", // Previous button text
      closeText: "",
      onContent: function (object) {
        $(object).find(".sptp-left-content");
      },
      onExpanded: function (object) {
      },
      onChanged: function (object) {
      },
      onClosed: function () {
      }
    });
  }

  $(document).on("click", ".sptp-team-inline-thumb", function () {
    var member = $(this).find("img").data("member");
    var sptpGeneratorID = $(this).find("img")
      .closest(".sptp-section")
      .attr("id")
      .substring(5);
    var specialArea = $(this).find("img")
      .parents(".sptp-col-md-2-half")
      .siblings()
      .attr("id");
    $.ajax({
      url: thumbnail.ajax_url,
      type: "POST",
      data: {
        action: "thumbnail_click_function",
        nonce: thumbnail.nonce
      },
      beforeSend: function () {
        $("#sptp-" + sptpGeneratorID + " .page-loading-image").css(
          "visibility",
          "visible"
        );
      },
      success: function (response) {
        document.cookie = sptpGeneratorID + "sptpThumbnail=" + member;
        $("#" + specialArea).load(document.URL + " #" + specialArea + " > *");
      }
    });
  });

  //
  // Filter Layout.
  if ($(".sptp-filter").length != 0) {
    $(".sptp-filter").each(function () {
      var sptpGeneratorID = $(this).attr("id");

      var filterPaginationStr = 'filterPagination' + sptpGeneratorID.slice(5);
      var filterPaginationObj = window[filterPaginationStr];
      // var filterMembers = filterPaginationObj.filter_members;
      var totalMember = parseInt(filterPaginationObj.filter_member_number);
      var filterPagination = filterPaginationObj.filter_pagination;
      var perClick = parseInt(filterPaginationObj.filter_per_click);
      var perPage = 1 == filterPagination ? parseInt(filterPaginationObj.filter_per_page) : totalMember;

      var isopope_selector = $('#' + sptpGeneratorID + ' .grid');
      function isotope_init() {
        $(window).on('load', function () {
          $grid.isotope('layout');
        });
        isopope_selector.imagesLoaded(function () {
          $grid.isotope('layout');
        });
      }
      var $grid = isopope_selector.isotope({
        itemSelector: '.element-item',
        layoutMode: 'fitRows',
        stamp: '.element-item--static',
      });
      // bind filter button click
      $('#' + sptpGeneratorID + ' .filters-button-group').on('click', 'button', function () {
        var filterValue = $(this).attr('data-filter');
        // use filterFn if matches value
        $grid.isotope({ filter: filterValue });
        updateFilterCounts();
      });
      function updateFilterCounts() {
        // get filtered item elements
        var itemElems = $grid.isotope('getFilteredItemElements');
        var count_items = $(itemElems).length;

        if (count_items > perPage) {
          $('#' + sptpGeneratorID + ' .sptp-filter-load-more span').show();
        }
        else {
          $('#' + sptpGeneratorID + ' .sptp-filter-load-more span').hide();
        }
        if ($('#' + sptpGeneratorID + ' .element-item').hasClass('hide-item')) {
          $('#' + sptpGeneratorID + ' .element-item').removeClass('hide-item');
        }
        var index = 0;

        $(itemElems).each(function () {
          if (index >= perPage) {
            $(this).addClass('hide-item');
          }
          index++;
        });

        isotope_init();

      }

      // change active class on buttons
      $('#' + sptpGeneratorID + ' .filters-button-group').each(function (i, buttonGroup) {
        var $buttonGroup = $(buttonGroup);
        $buttonGroup.on('click', 'button', function () {
          $buttonGroup.find('.is-checked').removeClass('is-checked');
          $(this).addClass('is-checked');
        });
      });

      function showNextItems(pagination) {
        var itemsMax = $('#' + sptpGeneratorID + ' .hide-item').length;
        var itemsCount = 0;
        $('#' + sptpGeneratorID + ' .hide-item').each(function () {
          if (itemsCount < pagination) {
            $(this).removeClass('hide-item');
            itemsCount++;
          }
        });
        if (itemsCount >= itemsMax) {
          $('#' + sptpGeneratorID + ' .sptp-filter-load-more span').hide();
        }
        isotope_init();
      }

      // function that hides items when page is loaded
      function hideItems(pagination) {
        var itemsMax = $('#' + sptpGeneratorID + ' .element-item').length;
        var itemsCount = 0;
        $('#' + sptpGeneratorID + ' .element-item').each(function () {
          if (itemsCount >= pagination) {
            $(this).addClass('hide-item');
          }
          itemsCount++;
        });
        if (itemsCount < itemsMax || perPage >= itemsMax) {
          $('#' + sptpGeneratorID + ' .sptp-filter-load-more span').hide();
        }

        isotope_init();

      }

      $('#' + sptpGeneratorID + ' .sptp-filter-load-more span').on('click', function (e) {
        e.preventDefault();
        showNextItems(perClick);
      });

      hideItems(perPage);
      // if ($(".sptp-filter").length != 0) {
      //   $(".sptp-filter").each(function () {
      //     var sptpGeneratorID = $(this).attr("id");
      //     var filterPaginationStr = 'filterPagination' + sptpGeneratorID.slice(5);
      //     var filterPaginationObj = window[filterPaginationStr];
      //     // var filterMembers = filterPaginationObj.filter_members;
      //     var filterPagination = filterPaginationObj.filter_pagination;
      //     var perPage = parseInt(filterPaginationObj.filter_per_page);
      //     //console.log(perPage);
      //     var items = "#" + sptpGeneratorID + " .element-item";

      //     var $grid = $("#" + sptpGeneratorID + " .grid").isotope({
      //       itemSelector: ".element-item",
      //       layoutMode: "fitRows",
      //     });
      //     var filterItems = $grid.isotope("getFilteredItemElements");
      //     if (filterPagination) {
      //       var hideItem = filterItems.slice(perPage);
      //     } else {
      //       var hideItem = 0;
      //     }
      //     $grid.isotope("hideItemElements", hideItem);
      //     $grid.imagesLoaded().progress( function() {
      //       $grid.isotope("layout");
      //     });
      //     var filterItems = $grid.isotope("getFilteredItemElements");
      //     var totalTop = [];
      //     $(filterItems).each(function (index, value) {
      //       if (index < perPage) {
      //         var style = $(value).attr("style");
      //         var top = style.split(";");
      //         top.forEach(item => {
      //           if (item.includes("top")) {
      //             totalTop.push(item);
      //           }
      //         });
      //       }
      //     });
      //     function onlyUnique(value, index, self) {
      //       return self.indexOf(value) === index;
      //     }
      //     totalTop = totalTop.filter(onlyUnique);
      //     var totalRow = Object.values(totalTop).length;
      //     // var itemHeight = $("#" + sptpGeneratorID + " .element-item").height();
      //     var itemHeight = [];
      //     $("#" + sptpGeneratorID + " .element-item").each(function (index, value) {
      //       if (index < perPage) {
      //         var itemHeightSingle = $(value).height();
      //         //console.log(itemHeightSingle);
      //         itemHeight.push(itemHeightSingle);
      //       }
      //     });
      //     itemHeight = Math.max(...itemHeight) + 30;

      //     var areaHeight = (totalRow * itemHeight);
      //    // console.log(totalRow, itemHeight, areaHeight)
      //     //$("#" + sptpGeneratorID + " .grid").css('max-height', areaHeight);

      //     // if (filterItems.length <= perPage) {
      //     //   $("#" + sptpGeneratorID + " .sptp-filter-load-more").hide();
      //     // }

      //     updateFilter = (
      //       totalItem,
      //       sptpGeneratorID,
      //       perPage,
      //       perClick,
      //       clickCount
      //     ) => {
      //       var totalItemLength = totalItem.length;
      //       var itemToView = perPage + perClick * (clickCount + 1);
      //       var activeFilter = $('#' + sptpGeneratorID + ' .button.is-checked').data('filter');
      //       var totalTop = [];
      //       $(totalItem).each(function (index, value) {
      //         if (index < itemToView) {
      //           var style = $(value).attr("style");
      //           var top = style.split(";");
      //           top.forEach(item => {
      //             if (item.includes("top")) {
      //               totalTop.push(item);
      //             }
      //           });
      //         }
      //       });
      //       if (activeFilter == "*") {
      //         var totalRow = [...new Set(totalTop)].length;
      //       } else {
      //         var totalRow = [...new Set(totalTop)].length - 1;
      //       }
      //       // var itemHeight = $("#"+ sptpGeneratorID + " .element-item").height();
      //       var itemHeight = [];
      //       $("#" + sptpGeneratorID + " .element-item").each(function (index, value) {
      //         if (index < itemToView) {
      //           var itemHeightSingle = $(value).height();
      //           itemHeight.push(itemHeightSingle);
      //         }
      //       });
      //       itemHeight = Math.max(...itemHeight)+15;

      //       var areaHeight = (totalRow * itemHeight);
      //      // $("#" + sptpGeneratorID + " .grid").css('max-height', areaHeight);

      //       // if (itemToView < totalItemLength) {
      //       //   $("#" + sptpGeneratorID + " .sptp-filter-load-more").show();
      //       // } else {
      //       //   $("#" + sptpGeneratorID + " .sptp-filter-load-more").hide();
      //       // }
      //     };

      //     var button = "button";
      //     $("#" + sptpGeneratorID + " .filters-button-group").on("click", button, function () {
      //       if ($(this).hasClass("is-checked")) {
      //         return;
      //       }
      //       var perPage = parseInt(filterPaginationObj.filter_per_page);
      //       var perClick = parseInt(filterPaginationObj.filter_per_click);
      //       var filterValue = $(this).data("filter");

      //       $grid.isotope({ filter: filterValue });
      //       // $grid.imagesLoaded().progress( function() {
      //         $grid.isotope("layout");
      //         var filterItems = $grid.isotope("getFilteredItemElements");
      //       // });


      //       var itemToView = 0;
      //       if (filterValue == "*") {
      //         itemToView = perPage;
      //       } else {
      //         $("#" + sptpGeneratorID + " .element-item").each(function (
      //           index,
      //           value
      //         ) {
      //           var itemFilter = $(value).data("category");
      //           var clickFilter = filterValue.substring(1);
      //           if (itemFilter.includes(clickFilter)) {
      //             itemToView++;
      //           }
      //         });
      //       }

      //       if ($(this).hasClass("click")) {
      //         var classStr = $(this).attr("class");
      //         var classArr = classStr.split(" ");
      //         var clickStr = classArr.find(function (element) {
      //           if (element.match(/click-/)) {
      //             return element;
      //           }
      //         });
      //         var clickCount = parseInt(clickStr.substring(6));
      //         var hideItem = filterItems.slice(itemToView + clickCount * perClick);
      //         itemToView = itemToView + clickCount * perClick;
      //       } else {
      //         var hideItem = filterItems.slice(itemToView);
      //       }
      //       // console.log(itemToView);
      //       // $grid.isotope("hideItemElements", hideItem);
      //       // if (hideItem.length) {
      //       //   $("#" + sptpGeneratorID + " .sptp-filter-load-more").show();
      //       // } else {
      //       //   $("#" + sptpGeneratorID + " .sptp-filter-load-more").hide();
      //       // }
      //       var totalTop = [];
      //       $(filterItems).each(function (index, value) {
      //         if (index < itemToView) {
      //           var style = $(this).attr("style");
      //           if (style) {
      //             var top = style.split(";");
      //             top.forEach(item => {
      //               if (item.includes("top")) {
      //                 totalTop.push(item);
      //               }
      //             });
      //           }
      //         }
      //       });
      //       totalTop = totalTop.filter(onlyUnique);
      //       var totalRow = totalTop.length;
      //       // var itemHeight = $("#" + sptpGeneratorID + " .element-item").height();
      //       var itemHeight = [];
      //       $("#" + sptpGeneratorID + " .element-item").each(function (index, value) {
      //         if (index < itemToView) {
      //           var itemHeightSingle = $(value).height();
      //           itemHeight.push(itemHeightSingle);
      //         }
      //       });
      //       itemHeight = Math.max(...itemHeight);

      //       var areaHeight = (totalRow * itemHeight) + 50;
      //       // console.log(areaHeight);

      //       //$("#" + sptpGeneratorID + " .grid").css('max-height', areaHeight);
      //     });

      //     // add is-checked class on buttons in drop down filte
      //     $("#" + sptpGeneratorID + " .button-group").each(function (i, buttonGroup) {
      //       var buttonGroup = $(buttonGroup);
      //       $("#" + sptpGeneratorID + " .button-group").on("click", "button", function () {
      //         $("#" + sptpGeneratorID + " .button-group").find(".is-checked").removeClass("is-checked");
      //         $(this).addClass("is-checked");
      //       });
      //     });

      //     $(document).on("click", "#" + sptpGeneratorID + " .sptp-filter-load-more", function () {
      //       var perPage = parseInt(filterPaginationObj.filter_per_page);
      //       var perClick = parseInt(filterPaginationObj.filter_per_click);
      //       var filter = $("#" + sptpGeneratorID + " .button.is-checked");
      //       var totalItem = $grid.isotope("getFilteredItemElements");

      //       if ($(filter).hasClass("click")) {
      //         var classStr = $(filter).attr("class");
      //         var classArr = classStr.split(" ");
      //         var clickStr = classArr.find(function (element) {
      //           if (element.match(/click-/)) {
      //             return element;
      //           }
      //         });
      //         var clickCount = parseInt(clickStr.substring(6));
      //         $(filter).removeClass(clickStr);
      //         $(filter).addClass("click-" + (clickCount + 1));
      //         updateFilter(totalItem, sptpGeneratorID, perPage, perClick, clickCount);
      //         var shownItems = perPage + clickCount * perClick;
      //         var newItems = totalItem.slice(shownItems, shownItems + perClick);
      //         $grid.imagesLoaded().progress( function() {
      //           $grid.isotope("revealItemElements", newItems);
      //           $grid.isotope("layout");
      //         });
      //       } else {
      //         var clickCount = 0;
      //         $(filter).addClass("click");
      //         $(filter).addClass("click-1");
      //         updateFilter(totalItem, sptpGeneratorID, perPage, perClick, clickCount);
      //         var shownItems = perPage + clickCount * perClick;
      //         var newItems = totalItem.slice(shownItems, shownItems + perClick);
      //         // $grid.imagesLoaded().progress( function() {
      //           $grid.isotope("revealItemElements", newItems);
      //           $grid.isotope("layout");
      //         // });
      //       }
      //     });

      //     var filterSelectTag = "#" + sptpGeneratorID + ".sptp-filter .filterSelect";

      //     $(filterSelectTag).on("change", function () {
      //       var selectedValue = $(this).val();

      //       if (selectedValue === "all") {
      //         $(
      //           "#" +
      //           sptpGeneratorID +
      //           ' .filters-button-group>button[data-filter="*"]'
      //         ).click();
      //       } else {
      //         $("#" + sptpGeneratorID + " .filters-button-group>button").each(
      //           function () {
      //             var filterValue = $(this)
      //               .data("filter")
      //               .substring(1);
      //             if (selectedValue.indexOf(" ")) {
      //               var str = selectedValue.split(" ").join("");
      //             } else {
      //               str = selectedValue;
      //             }
      //             if (str === filterValue) {
      //               $(this).click();
      //             }
      //           }
      //         );
      //       }
      //     });

      //     $(".sptp-filter-search").on("search", function () {
      //       var searchText = $(this).val();
      //       var filterOn = $(
      //         "#" + sptpGeneratorID + " .filters-button-group>.is-checked"
      //       ).data("filter");
      //       if (filterOn !== "*") {
      //         filterString = filterOn;
      //       } else {
      //         filterString = "";
      //       }

      //       $("#" + sptpGeneratorID + " .element-item" + filterString).each(function (
      //         index,
      //         value
      //       ) {
      //         var itemsText = $(value)
      //           .text()
      //           .trim();
      //         if (itemsText.indexOf(searchText) !== -1) {
      //           $(this).show();
      //         } else {
      //           $(this).hide();
      //         }
      //       });
      //     });
      //     $(".sptp-filter-search").keyup(function () {
      //       var e = $.Event("search");
      //       e.which = 13; //choose the enter key
      //       e.keyCode = 13;
      //       $(this).trigger(e);
      //     });
      //   })
      // }

    })
  }

  if ($(".pagination_number").length > 0) {
    $('.pagination-disable').css('pointer-events', 'none');
    $(document).on("click", ".ajax-page-numbers", function (event) {
      event.preventDefault();
      var sptpGeneratorID = $(this)
        .closest(".sptp-section")
        .attr("id");

      var currentPage = $(this)
        .closest(".sptp-post-pagination")
        .find(".current")
        .html();
      var currentPageInt = parseInt(currentPage);
      var totalPagination =
        $("#" + sptpGeneratorID + " .ajax-page-numbers").length - 2;

      var paginationType = pagination.pagination_type;
      var perPage = pagination.per_page;
      var perClick = pagination.per_click;

      if ($(this).hasClass("prev")) {
        if (currentPageInt > 1) {
          var pageNumber = currentPageInt - 1;
        } else {
          return;
        }
      }

      if ($(this).hasClass("next")) {
        if (currentPageInt < totalPagination) {
          var pageNumber = currentPageInt + 1;
        }
        //console.log(pageNumber);
      }

      if (!($(this).hasClass("next") || $(this).hasClass("prev"))) {
        var pageNumber = $(this)
          .html()
          .trim();
      }

      $.ajax({
        url: pagination.ajax_url,
        type: "POST",
        data: {
          action: "pagination_function",
          nonce: pagination.nonce,
          page_number: pageNumber,
          paginationType: paginationType,
          perPage: perPage,
          perClick: perClick
        },
        beforeSend: function () {
          $("#" + sptpGeneratorID + " .page-loading-image").css(
            "visibility",
            "visible"
          );
        },
        success: function (response) {
          cookieName = sptpGeneratorID.substring(5);
          document.cookie = cookieName + "sptpPagination=" + pageNumber;
          // console.log(document.cookie);
          iconOnImage();

          $("#" + sptpGeneratorID).load(
            document.URL + " #" + sptpGeneratorID + "> *"
          );
          $(document).on("click", ".sptp-popup-close", function () {
            $(".sptp-popup-items").removeClass("sptp-popup-on");
            $(".sptp-popup-item").removeClass("sptp-popup-open");
          });
          $(document).on("click", ".gridder-list", function () {
            $(".gridder-list").removeClass("selectedItem");
            $(this).addClass("selectedItem");
            var gridderItem = $(this)
              .data("griddercontent")
              .substring(1);
            var totalGridder = $(".gridder-list").length;
            var position = $(".gridder-list").index($(this)) + 1;
            $(".gridder-show").remove();
            $(this).after(
              '<div class="gridder-show"><div class="gridder-padding"><div class="gridder-navigation"><a href="#0" class="gridder-close"></a><a href="#0" class="gridder-nav prev "><i class="fa fa-angle-left"></i></a><a href="#0" class="gridder-nav next"><i class="fa fa-angle-right"></i></a></div><div class="gridder-expanded-content">'
            );
            var data = $(".gridder-content#" + gridderItem).html();
            $(".gridder-expanded-content").html(data);

            $(".sptp-progress-container").each(function (i, v) {
              var skillPercetage = $(this).data("title");
              $(this)
                .find(".sptp-progress-bar")
                .animate({ width: skillPercetage }, 1000);
            });
            $(document).on("click", ".gridder-nav.next i", function (e) {
              e.preventDefault();
              $(this)
                .closest(".gridder-show")
                .next()
                .click();
            });
            $(document).on("click", ".gridder-nav.prev i", function (e) {
              e.preventDefault();
              $(this)
                .closest(".gridder-show")
                .prev()
                .prev()
                .click();
            });
            if (position == totalGridder) {
              $(".sptp-drawer .gridder-nav.next").hide();
            }
            if (position == 1) {
              $(".sptp-drawer .gridder-nav.prev").hide();
            }
          });
          $(document).on("click", ".gridder-show .gridder-close", function () {
            $(".gridder .gridder-list").removeClass("selectedItem");
          });
          $(document).on("click", ".sptp-popup-trigger", function () {
            $(".simplebar-content-wrapper").css("visibility", "visible");
            var modalItem = $(this)
              .attr("wptpmodal")
              .substring(1);
            //console.log(modalItem);
            var sectionId = $(this)
              .closest(".sptp-section")
              .attr("id");
            $(this)
              .closest(".sptp-section#" + sectionId)
              .find(".sptp-popup-items")
              .addClass("sptp-popup-on").css('display', 'block');
            $(this)
              .closest(".sptp-section#" + sectionId)
              .find(".sptp-popup-item#" + modalItem)
              .addClass("sptp-popup-open");
            new Swiper(".sptp-popup-open .swiper-container", {
              loop: false,
              slidesPerView: 1,
              pagination: {
                el: ".swiper-pagination",
                clickable: true
              },
              navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev"
              }
            });
            var swiperItem = $(
              "#" + modalItem + ".sptp-popup-item.sptp-popup-open .swiper-slide"
            ).length;
            if (swiperItem < 3) {
              $("#" + modalItem + " .sptp-pagination").hide();
              $("#" + modalItem + " .sptp-button-next").hide();
              $("#" + modalItem + " .sptp-button-prev").hide();
            } else {
              var itemHeight = $(
                "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
              ).height();
              $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
                "height",
                itemHeight + 30
              );
            }
          });
          $(document).on(
            "click",
            ".sptp-popup-nav .sptp-nav-right i",
            function () {
              var sectionId = $(this)
                .closest(".sptp-section")
                .attr("id");
              var popupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item.sptp-popup-open")
                .attr("id");
              var nextPopupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item.sptp-popup-open")
                .next()
                .attr("id");
              var firstPopupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item")
                .first()
                .attr("id");
              $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item#" + popupItem)
                .removeClass("sptp-popup-open");
              if (nextPopupItem == null) {
                $(this)
                  .closest(".sptp-popup-items-main")
                  .find(".sptp-popup-item#" + firstPopupItem)
                  .addClass("sptp-popup-open");
              } else {
                $(this)
                  .closest(".sptp-popup-items-main")
                  .find(".sptp-popup-item#" + nextPopupItem)
                  .addClass("sptp-popup-open");
              }
              new Swiper(".sptp-popup-open .swiper-container", {
                loop: false,
                slidesPerView: 1,
                pagination: {
                  el: ".swiper-pagination",
                  clickable: true
                },
                navigation: {
                  nextEl: ".sptp-popup-open .swiper-button-next",
                  prevEl: ".sptp-popup-open .swiper-button-prev"
                }
              });
              var swiperItem = $(
                "#" +
                popupItem +
                ".sptp-popup-item.sptp-popup-open .swiper-slide"
              ).length;
              if (swiperItem < 2) {
                $("#" + popupItem + " .sptp-pagination").hide();
              } else {
                var itemHeight = $(
                  "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
                ).height();
                $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
                  "height",
                  itemHeight + 30
                );
              }
              var modalClass = $("#" + popupItem)
                .closest(".sptp-popup-items.sptp-popup-on")
                .attr("class");
              if (modalClass != null) {
                var modalStyle = modalClass.substring(17, 25);
                var itemHeight = $(
                  "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
                ).height();
                if (modalStyle.trim() === "style-1") {
                  $(
                    "#" + sectionId + " #" + popupItem + " .swiper-wrapper"
                  ).css("height", itemHeight + 30);
                }
              }
            }
          );

          $(document).on(
            "click",
            ".sptp-popup-nav .sptp-nav-left i",
            function () {
              var sectionId = $(this)
                .closest(".sptp-section")
                .attr("id");
              var popupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item.sptp-popup-open")
                .attr("id");
              var prevPopupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item.sptp-popup-open")
                .prev()
                .attr("id");
              var lastPopupItem = $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item")
                .last()
                .attr("id");
              $(this)
                .closest(".sptp-popup-items-main")
                .find(".sptp-popup-item#" + popupItem)
                .removeClass("sptp-popup-open");
              if (prevPopupItem == null) {
                $(this)
                  .closest(".sptp-popup-items-main")
                  .find(".sptp-popup-item#" + lastPopupItem)
                  .addClass("sptp-popup-open");
              } else {
                $(this)
                  .closest(".sptp-popup-items-main")
                  .find(".sptp-popup-item#" + prevPopupItem)
                  .addClass("sptp-popup-open");
              }
              new Swiper(".sptp-popup-open .swiper-container", {
                loop: false,
                slidesPerView: 1,
                pagination: {
                  el: ".sptp-popup-open .swiper-pagination",
                  clickable: true
                },
                navigation: {
                  nextEl: ".sptp-popup-open .swiper-button-next",
                  prevEl: ".sptp-popup-open .swiper-button-prev"
                }
              });
              var swiperItem = $(
                "#" +
                popupItem +
                ".sptp-popup-item.sptp-popup-open .swiper-slide"
              ).length;
              if (swiperItem < 2) {
                $("#" + popupItem + " .sptp-pagination").hide();
              } else {
                var itemHeight = $(
                  "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
                ).height();
                $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
                  "height",
                  itemHeight + 30
                );
              }
            }
          );
        }
      });
    });
  }

  if ($(".sptp-post-load-more").length > 0) {

    $(".sptp-post-load-more").each(function (index, element) {
      var sptpGeneratorID = $(element)
        .closest(".sptp-section")
        .attr("id");
      var mosaicLayout = $('#' + sptpGeneratorID + ' .sptp-grid').hasClass("sptp-mosaic");
      if (mosaicLayout) {
        var appendClass = '.sptp-grid>.sptp-row>div';
      } else {
        var appendClass = '.sptp-grid .sptp-row>div';
      }
      var paginationScroll = $('#' + sptpGeneratorID).hasClass("pagination_scrl");
      if (paginationScroll) {
        $('#' + sptpGeneratorID + ' .sptp-grid>.sptp-row').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' ' + appendClass,
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
        });
        $('#' + sptpGeneratorID + ' .sptp-table-layout .sptp-table-responsive').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-table-layout .sptp-table-responsive tbody',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
        });
        $('#' + sptpGeneratorID + ' .sptp-popup-items-main').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-popup-items-main .sptp-popup-item',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
        });
        $('#' + sptpGeneratorID + ' .sptp-drawer-items').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-drawer-items>.gridder-content',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
        });
      }

      var paginationButton = $('#' + sptpGeneratorID).hasClass("pagination_btn");
      if (paginationButton) {
        $('#' + sptpGeneratorID + ' .sptp-grid>.sptp-row').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' ' + appendClass,
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
          loadOnScroll: false,
          elementScroll: true,
          hideNav: '.sptp-post-pagination'
        });
        $('#' + sptpGeneratorID + ' .sptp-table-layout .sptp-table-responsive').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-table-layout .sptp-table-responsive tbody',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
          loadOnScroll: false,
          elementScroll: true,
          hideNav: '.sptp-post-pagination'
        });
        $('#' + sptpGeneratorID + ' .sptp-popup-items-main').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-popup-items-main .sptp-popup-item',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
          loadOnScroll: false,
          elementScroll: true,
          hideNav: '.sptp-post-pagination'
        });
        $('#' + sptpGeneratorID + ' .sptp-drawer-items').infiniteScroll({
          // options
          path: '#' + sptpGeneratorID + ' .next.page-numbers',
          append: '#' + sptpGeneratorID + ' .sptp-drawer-items>.gridder-content',
          scrollThreshold: 100,
          history: false,
          status: '.page-load-status',
          button: '.sptp-post-load-more',
          loadOnScroll: false,
          elementScroll: true,
          hideNav: '.sptp-post-pagination'
        });
      }
    });
  }

  $(document).on("click", ".sptp-popup-trigger", function () {
    $(".simplebar-content-wrapper").css("visibility", "visible");
    var modalItem = $(this)
      .attr("wptpmodal")
      .substring(1);
    var sectionId = $(this)
      .closest(".sptp-section")
      .attr("id");
    var popupItem = $("#" + sectionId + " .sptp-popup-items-main")
      .find(".sptp-popup-item.sptp-popup-open")
      .attr("id");
    $(this)
      .closest(".sptp-section#" + sectionId)
      .find(".sptp-popup-items")
      .addClass("sptp-popup-on");
    $(this)
      .closest(".sptp-section#" + sectionId)
      .find(".sptp-popup-item#" + modalItem)
      .addClass("sptp-popup-open");
    new Swiper(".sptp-popup-open .swiper-container", {
      loop: false,
      slidesPerView: 1,
      pagination: {
        el: ".sptp-popup-open .swiper-pagination",
        clickable: true
      },
      navigation: {
        nextEl: ".sptp-popup-open .swiper-button-next",
        prevEl: ".sptp-popup-open .swiper-button-prev"
      }
    });
    var swiperItem = $(
      "#" + modalItem + ".sptp-popup-item.sptp-popup-open .swiper-slide"
    ).length;
    if (swiperItem < 3) {
      $("#" + modalItem + " .sptp-pagination").hide();
      $("#" + modalItem + " .sptp-button-next").hide();
      $("#" + modalItem + " .sptp-button-prev").hide();
    } else {
      var itemHeight = $(
        "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
      ).height();
      $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
        "height",
        itemHeight + 30
      );
    }
  });

  if ($(".sptp-content-on-image").length > 0) {
    $(document).on("click", ".sptp-content-on-image .content", function () {
      $(this)
        .parents(".sptp-content-on-image")
        .find(".image .sptp-member-avatar")
        .click();
    });
  }

  $(document).on("click", ".sptp-popup-nav .sptp-nav-right i", function () {
    var sectionId = $(this)
      .closest(".sptp-section")
      .attr("id");
    var popupItem = $(this)
      .closest(".sptp-popup-items-main")
      .find(".sptp-popup-item.sptp-popup-open")
      .attr("id");

    new Swiper(".sptp-popup-open .swiper-container", {
      loop: false,
      slidesPerView: 1,
      pagination: {
        el: ".sptp-popup-open .swiper-pagination",
        clickable: true
      },
      navigation: {
        nextEl: ".sptp-popup-open .swiper-button-next",
        prevEl: ".sptp-popup-open .swiper-button-prev"
      }
    });
    var swiperItem = $(
      "#" + popupItem + ".sptp-popup-item.sptp-popup-open .swiper-slide"
    ).length;
    if (swiperItem < 2) {
      $("#" + popupItem + " .sptp-pagination").hide();
    } else {
      var itemHeight = $(
        "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
      ).height();
      $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
        "height",
        itemHeight + 30
      );
    }
    var modalClass = $("#" + popupItem)
      .closest(".sptp-popup-items.sptp-popup-on")
      .attr("class");
    if (modalClass != null) {
      var modalStyle = modalClass.substring(17, 25);
      var itemHeight = $(
        "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
      ).height();
      if (modalStyle.trim() === "style-1") {
        $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
          "height",
          itemHeight + 30
        );
      }
    }
  });

  $(document).on("click", ".sptp-popup-nav .sptp-nav-left i", function () {
    var sectionId = $(this)
      .closest(".sptp-section")
      .attr("id");
    var popupItem = $(this)
      .closest(".sptp-popup-items-main")
      .find(".sptp-popup-item.sptp-popup-open")
      .attr("id");
    new Swiper(".sptp-popup-open .swiper-container", {
      loop: false,
      slidesPerView: 1,
      pagination: {
        el: ".sptp-popup-open .swiper-pagination",
        clickable: true
      },
      navigation: {
        nextEl: ".sptp-popup-open .swiper-button-next",
        prevEl: ".sptp-popup-open .swiper-button-prev"
      }
    });
    var swiperItem = $(
      "#" + popupItem + ".sptp-popup-item.sptp-popup-open .swiper-slide"
    ).length;
    if (swiperItem < 2) {
      $("#" + popupItem + " .sptp-pagination").hide();
    } else {
      var itemHeight = $(
        "#" + popupItem + " .swiper-wrapper .swiper-slide-active img"
      ).height();
      $("#" + sectionId + " #" + popupItem + " .swiper-wrapper").css(
        "height",
        itemHeight + 30
      );
    }
  });

  $(document).on("click", ".gridder-close", function () {
    $(this)
      .closest(".gridder-show")
      .remove();
  });

  $(document).mouseup(function (e) {
    var container = $(".sptp-popup-content, .sptp-popup-nav");
    if (!container.is(e.target) && container.has(e.target).length === 0) {
      $(".sptp-popup-close").click();
    }
  });

  $(document).on("click", ".gridder-list", function () {
    var totalGridder = $(".gridder-list").length;
    var position = $(".gridder-list").index($(this)) + 1;
    if (position == totalGridder) {
      $(".sptp-drawer .gridder-nav.next").hide();
    }
    if (position == 1) {
      $(".sptp-drawer .gridder-nav.prev").hide();
    }
  });

  $(document).ajaxComplete(function () {
    progressBarAnimation();
    $('.pagination-disable').css('pointer-events', 'none');
    setTimeout(function () {
      $(".page-loading-image").css("visibility", "hidden");
    }, 3000);
  });

  $(".page-loading-image").css("visibility", "hidden");
});
