
var starOn = "file:///android_asset/btn_star_big_on.png";

var starOff = "file:///android_asset/btn_star_big_off.png";

var presenceData = [];

function toggleHeader(objectId) {

    var message = document.getElementById(objectId);
    var bodyDiv = findById(objectId, "div", "a:body");
    var line2Div = findById(objectId, "div", "a:line2");
      
    if (bodyDiv.style.display == "none" || bodyDiv.innerHTML == "") {
        line2Div.innerHTML = window.gmail.getAddress(objectId);
        bodyDiv.innerHTML = window.gmail.getMessageBody(objectId);
        bodyDiv.style.display = "";
    } else {
        line2Div.innerHTML = window.gmail.getCollapsedSnippet(objectId);
        bodyDiv.style.display = "none";
    }
}

function contactSender(element, senderPersonal, senderEmail) {
    // Find the dimensions of the on-screen element adjusted to scrolling
    var left = -element.ownerDocument.defaultView.scrollX;
    var top = -element.ownerDocument.defaultView.scrollY;
    var walk = element;
    do {
        left += walk.offsetLeft;
        top += walk.offsetTop;
        walk = walk.offsetParent;
    } while(walk != null);

    var right = left + element.offsetWidth;
    var bottom = top + element.offsetHeight;

    window.gmail.contactSender(senderPersonal, senderEmail, left, top, right, bottom);
}
    
function uncollapse(objectId, first, last) {
    var collapsedDiv = document.getElementById(objectId);
    collapsedDiv.innerHTML = window.gmail.getMessageHeaders(first, last);
    updatePresencesInt();
}

function findById(ancestorId, tag, id) {
    var ancestor = document.getElementById(ancestorId);
    var candidates = ancestor.getElementsByTagName(tag);
    
    for (i=0;i< candidates.length;i++) {
        var child = candidates[i];
        if (id == child.id) {
            return child;
        }
    }
    return null;
}

function toggleStar(ancestorId) {
    var starImg = findById(ancestorId, "img", "a:star");
    if (starImg.src == starOff) {
        starImg.src = starOn;
        window.gmail.setStarred(ancestorId, true);
    } else {
        starImg.src = starOff;
        window.gmail.setStarred(ancestorId, false);
    }
}

function setStar(messageId, starValue) {
    var starImg = findById(messageId, "img", "a:star");
    if (starValue) {
        starImg.src = starOn;
    } else {
        starImg.src = starOff;
    }
}

function hideDivs(idArray) {
     var length = idArray.length;
     for (i = 0; i < length; i++) {
        var id = idArray[i];
         var div = document.getElementById(id);
         if (div != null) {
             div.style.display = "none";
         }
    }
}

function setLabels(labels) {
    var labelsDiv = document.getElementById("labels");
    labelsDiv.innerHTML = labels;
}

function edit(messageId) {
    window.gmail.edit(messageId);
}

/**
 * @return the first div found that contains the bottom of the screen 
 */
function findDiv(e) {
    var divs = document.getElementsByTagName("div");
    var currentY = window.pageYOffset + window.innerHeight;
    var currentDiv = divs[0];
    var foundDiv = divs[0];

    for (i = divs.length - 1; i >= 0; i--) {
        var d = divs[i];
        if (d.offsetTop < currentY) {
            foundDiv = d;
            break;
        } else {
          currentDiv = d;
        }
    }
}

/**
 * Update the header of the message to newContent.
 */
function updateHeader(messageId, newContent) {
    var div = document.getElementById("outboxDiv_" + messageId);
    if (div != null) {
        div.parentNode.innerHTML = "<div class=\"fromDiv\">" + newContent + "</div>";
    }
}

function updatePresences(data) {
    presenceData = data;
    updatePresencesInt();
}

function updatePresencesInt() {
    for (i = 0; i < presenceData.length; i += 2) {
        var email = presenceData[i];
        var img = presenceData[i + 1];
        var x = document.getElementsByName(email);
        for (j = 0; j < x.length; j++) {
            x[j].src = "file:///android_asset/" + img;
        }
    }
}
