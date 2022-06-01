//Auto scroll current line to the
var sections = document.querySelectorAll("section[id]");
function onScrollHeader() {
    var scrollY = window.scrollY;

    sections.forEach(current => {
        var sectionHeight = current.offsetHeight;
        var sectionTop = current.offsetTop - 60;
        var sectionId = current.getAttribute("id");

        if (scrollY > sectionTop && scrollY <= sectionTop + sectionHeight) {
            document.querySelector(".header__navbar-item a[href*=" + sectionId + "]").classList.add("current-line");
        } else {
            document.querySelector(".header__navbar-item a[href*=" + sectionId + "]").classList.remove("current-line");
        }
    })
}
window.addEventListener('scroll', onScrollHeader);

//Auto scroll current line to the (Menu Only)
function onScrollHeaderMobile() {
    var scrollY = window.scrollY;

    sections.forEach(current => {
        var sectionHeight = current.offsetHeight;
        var sectionTop = current.offsetTop - 60;
        var sectionId = current.getAttribute("id");

        if (scrollY > sectionTop && scrollY <= sectionTop + sectionHeight) {
            document.querySelector(".header__navbar-item.on-mobile a[href*=" + sectionId + "]").classList.add("current-line-mobile");
        } else {
            document.querySelector(".header__navbar-item.on-mobile a[href*=" + sectionId + "]").classList.remove("current-line-mobile");
        }
    })
}
window.addEventListener('scroll', onScrollHeaderMobile);

let mixerProducts = mixitup('.products__content', {
    selectors: {
        target: '.products__card'
    },
    animation: {
        duration: 300
    }
});
mixerProducts.filter('.delicacies');

//Check if checkbox was check then animation angle down to up
var loggingIcon = document.querySelector(".header__logging-title .header__logging-icon");
var headerLoggingTable = document.querySelector(".header__logging-data");
var headerLoggingList = document.querySelector(".header__logging-list");
var mainElement = document.querySelector(".main");
var closeElement = document.querySelector(".header__logging-close");
var overLayElement = document.querySelector(".header__logging-overlay");

function loggingTable(event) {
    if (headerLoggingTable.style.display === "") {
        headerLoggingTable.style.display = 'none';
    }
    if (((event.target.classList.contains("header__logging-img") || event.target.classList.contains("header__logging-icon-down")) && headerLoggingTable.style.display === 'none')) {
        headerLoggingTable.style.display = 'block';
        loggingIcon.style.transform = 'rotate(180deg)';
        headerLoggingList.style.transform = 'translateX(0%)';
        overLayElement.style.display = 'block';
    } else {
        if (!headerLoggingList.contains(event.target)) {
            loggingIcon.style.transform = 'rotate(0deg)';
            headerLoggingList.style.transform = 'translateX(-100%)';
            headerLoggingTable.style.boxShadow = 'none';
            overLayElement.style.display = 'none';
            setTimeout(function () {
                headerLoggingTable.style.display = 'none';
            }, 300);
        }
    }
}
mainElement.addEventListener('click', loggingTable);
mainElement.addEventListener('click', function (event) {
    event.stopPropagation();
});

//Left and right products type 
var productsGroup = document.querySelectorAll(".products__group");
var arrow = document.querySelectorAll(".products__arrow");
var leftArrow = arrow[0];
var rightArrow = arrow[1]

function clickArrow(foo) {
    var productsItemBlock;
    var visibleProductItemBlock;
    var index = 0;
    console.log(index);
    for (var i = 0; i < productsGroup.length; i++) {
        if (productsGroup[i].style.display === "block") {
            productsItemBlock = productsGroup[i];
            index = i;
        }
    }

    index = foo(index, productsGroup);

    productsItemBlock.style.display = "none";
    visibleProductItemBlock = productsGroup[index];
    var showVisibleProductItem = visibleProductItemBlock;
    showVisibleProductItem.click();
    visibleProductItemBlock.style.display = "block";
}

function clickArrowLeft() {
    return clickArrow((index, productsGroup) => {
        if (index - 1 < 0) {
            return productsGroup.length - 1;
        } else {
            return index - 1;
        }
    });
}
leftArrow.addEventListener("click", clickArrowLeft);

function clickArrowRight() {
    return clickArrow((index, productsGroup) => {
        if (index === productsGroup.length - 1) {
            return 0;
        } else {
            return index + 1;
        }
    });
}
rightArrow.addEventListener("click", clickArrowRight);
//Close table when user click X icon
function closeTable() {
    loggingIcon.style.transform = 'rotate(0deg)';
    headerLoggingList.style.transform = 'translateX(-100%)';
    headerLoggingTable.style.boxShadow = 'none';
    overLayElement.style.display = 'none';
    setTimeout(function () {
        headerLoggingTable.style.display = 'none';
    }, 1000);
}
if (closeElement !== null) {
    closeElement.addEventListener('click', closeTable);
}