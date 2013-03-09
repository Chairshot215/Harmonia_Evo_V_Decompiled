// Copyright 2010 Google Inc. All Rights Reserved.


/**
 * Alias for {@code document.getElementById}.
 * @param {string} id DOM ID of the element to return.
 * @return {Element} DOM element with the given ID (undefined if not found).
 */
function $(id) {
    return document.getElementById(id);
}


/**
 * Returns all descendants of the element with the given class name as a NodeList.
 * @param {Element} element Parent element.
 * @param {string} className CSS class name.
 * @return {NodeList} Descendant elements with the given class name (may be empty).
 */
function $$(element, className) {
    return element.getElementsByClassName(className);
}


/**
 * Returns the first descendant of the element with the given class name.
 * @param {Element} element Parent element.
 * @param {string} className CSS class name.
 * @return {Element} First descendant element with the given class name (undefined if none).
 */
function $$$(element, className) {
    return element.getElementsByClassName(className)[0];
}


/**
 * Returns the class names applied to the given element as an array of strings.
 * @param {Element} element Element whose class names are to be returned.
 * @return {Array.<string>} (Possibly empty) array of class name strings.
 */
function getClassNames(element) {
    return element.className ? element.className.split(/\s+/) : [];
}


/**
 * Applies the class name to the element. Does nothing if the element already has that class name.
 * @param {Element} element Element.
 * @param {string} className Class name to add.
 */
function addClassName(element, className) {
    var classNames = getClassNames(element);
    if (classNames.indexOf(className) == -1) {
        classNames.push(className);
        element.className = classNames.join(' ');
    }
}


/**
 * Removes the class name from the element. Does nothing if the element doesn't have that class
 * name.
 * @param {Element} element Element.
 * @param {string} className Class name to remove.
 */
function removeClassName(element, className) {
    var classNames = getClassNames(element);
    var index = classNames.indexOf(className);
    if (index != -1) {
        classNames.splice(index, 1);
        element.className = classNames.join(' ');
    }
}


/**
 * Adds or removes the class name based on the value of the {@code enable} parameter.
 * @param {Element} element Element.
 * @param {string} className Class name to add or remove.
 * @param {boolean} enable Whether to add or remove the class name.
 */
function enableClassName(element, className, enable) {
    if (enable) {
        addClassName(element, className);
    } else {
        removeClassName(element, className);
    }
}


/**
 * Determines whether or not an element has a given class.
 * @param {Element} element Element.
 * @param {string} className The class name to query.
 * @return {boolean} Whether or not the provided element has the class.
 */
function hasClassName(element, className) {
    return getClassNames(element).indexOf(className) != -1;
}


/**
 * Returns a function closure binding the given function to the given context object.  The function
 * will be invoked as a method on the object.
 * @param {Function} fn Function to bind.
 * @param {Object} context Object on which the function is to be called as a method.
 */
function bind(fn, context) {
    return function() {
        return fn.apply(context, arguments);
    };
}


/**
 * Returns the computed style of the element.
 * @return {CSSStyleDeclaration} The computed style of the element.
 */
function getComputedStyle_(element) {
  return document.defaultView.getComputedStyle(element, '');
}


/**
 * Returns the page offset of an element.
 *
 * @param {Element} element The element to return the page offset for.
 * @return {left: number, top: number} A tuple including a left and top value representing
 *     the page offset of the element.
 */
function getTotalOffset(el) {
    var result = {
        left: 0,
        top: 0
    };
    var parent = el;

    while (parent) {
        result.left += parent.offsetLeft;
        result.top += parent.offsetTop;
        parent = parent.offsetParent;
    }

    return result;
}


// Gmail JS namespace.
var gm = {};


/**
 * The one and only conversation.
 * @type {gm.Conversation}
 */
gm.conversation = null;


/**
 * Conversation class.  Serves as the model and controller for the conversation view.
 * @constructor
 */
gm.Conversation = function() {

    // Map of message IDs to gm.Message objects.
    this.messages = {};

    // Discover messages and wrap them in gm.Message objects.
    var messageElements = $$(document.body, 'gm-message');
    for (var i = 0, messageElement; messageElement = messageElements[i]; i++) {
        this.addMessage(messageElement);
    }
};


/**
 * Wraps a single message element in a gm.Message object and adds it to the map.
 * @param {Element} messageElement Message root element.
 */
gm.Conversation.prototype.addMessage = function(messageElement) {
    var id = messageElement.id;
    if (id) {
        var serverId = messageElement.getAttribute('serverId');
        var index = parseInt(messageElement.index, 10);
        this.messages[id] = new gm.Message(messageElement, id, serverId, index);
    }
};


/**
 * Invalidates the geometry cache.  The cache will be rebuilt the next time the user starts
 * scrolling.
 */
gm.Conversation.prototype.invalidateGeometryCache = function() {
    gm.measureHeights();
};


/**
 * Class representing a single message in a conversation.
 * @param {Element} messageElement Root element for the message.
 * @param {string} id Local Message ID.
 * @param {string} serverId Server Message ID.
 * @param {number} index 0-based message index within the conversation.
 * @constructor
 */
gm.Message = function(messageElement, id, serverId, index) {
    this.element = messageElement;
    this.id = id;
    this.serverId = serverId;
    this.index = index;

    this.bodyElement = $$$(this.element, 'gm-body');
    this.initializeBody();
};


/**
 * Initializes the message body contents by processing inline images and quoted
 * text.
 */
gm.Message.prototype.initializeBody = function() {
    if (this.bodyInitialized_) {
        return;
    }

    this.bodyInitialized_ = true;

    gm.processElidedText(this.bodyElement);

    var messageElement = $$$(this.element, 'gm-message-content');
    var showImages = hasClassName(messageElement, 'gm-show-images');

    var imgElements = this.bodyElement.getElementsByTagName('img');
    for (var i = 0, imgElement; imgElement = imgElements[i]; i++) {
        gm.attachImageLoadListener(imgElement);
        gm.rewriteImageSrc(imgElement, !showImages);
    }
};


/**
 * Displays the pictures in this particular message.
 */
gm.Message.prototype.showPictures = function() {
    var imgElements = this.bodyElement.getElementsByTagName('img');
    for (var i = 0, imgElement; imgElement = imgElements[i]; i++) {
        var blockedSrc = imgElement.getAttribute('gm-src');
        if (blockedSrc) {
            imgElement.src = blockedSrc;
            imgElement.removeAttribute('gm-src');
        }
    }
};

gm.unblockPictures = function(messageDomId) {
    var msg = gm.conversation.messages[messageDomId];
    if (!msg) {
        console.log("can't unblock, no matching message for id: " + messageDomId);
        return;
    }
    msg.showPictures();
};


/**
 * Attaches an onload event listener to the image element, called when the image is fully loaded,
 * used to invalidate the cached snap header geometry cache (bug 2709571).
 * @param {Element} imageElement Image element.
 */
gm.attachImageLoadListener = function(imageElement) {
    // Reset the src attribute to the empty string because onload will only fire if the src
    // attribute is set after the onload listener.
    var originalSrc = imageElement.src;
    imageElement.src = '';
    imageElement.onload = function() {
        gm.conversation.invalidateGeometryCache();
    };
    imageElement.src = originalSrc;
};


/**
 * Changes relative paths to absolute path by pre-pending the account uri, as
 * well as making the {@code src} of the image element blank, saving it in a
 * custom attribute so that it can be retrieved later.
 * @param {Element} imgElement Image for which the src path will be updated.
 * @param {boolean} blockImage Whether or not to block the image.
 */
gm.rewriteImageSrc = function(imgElement, blockImage) {
    var src = imgElement.src;
    if (src.indexOf('x-thread://') == 0) {
        var questionPos = src.indexOf('?');
        if (questionPos != -1) {
            // A typical relative url looks like:
            // x-thread://NUMBER?view=KEYVALUES
            // This changes it to:
            // http://gmail.com/g/?view=KEYVALUES
            src = ACCOUNT_URI + src.substring(questionPos);
        }
    }

    // Block external images and inline attachment images
    if (blockImage && ((src.indexOf('http://') == 0) || src.indexOf('https://') == 0)) {
      imgElement.setAttribute('gm-src', src);
      imgElement.src = 'data:';
    } else {
      imgElement.src = src;
    }
};


/**
 * Discovers and handles elided text blocks in the given element (assumed to be a message body).
 * @param {Element} parentElement Parent element in which to look for elided text blocks.
 */
gm.processElidedText = function(parentElement) {
    var elidedTextElements = $$(parentElement, 'elided-text');
    for (var i = 0, elidedTextElement; elidedTextElement = elidedTextElements[i]; i++) {
        var toggleElement = document.createElement('div');
        toggleElement.className = 'gm-elided-text';
        toggleElement.innerHTML = MSG_SHOW_ELIDED;
        toggleElement.onclick = gm.toggleElidedText;
        elidedTextElement.parentNode.insertBefore(toggleElement, elidedTextElement);
    }
};


/**
 * Handles click events on the toggle control for an elided text block.  The event target is
 * assumed to be the toggle control element, and the elided text block is assumed to be its next
 * sibling.
 * @param {Event} e Click event to handle.
 */
gm.toggleElidedText = function(e) {
    var toggleElement = e.target;
    var elidedTextElement = toggleElement.nextSibling;
    var isHidden = getComputedStyle_(elidedTextElement).display == 'none';
    toggleElement.innerHTML = isHidden ? MSG_HIDE_ELIDED : MSG_SHOW_ELIDED;
    elidedTextElement.style.display = isHidden ? 'block' : 'none';
    gm.conversation.invalidateGeometryCache();
};


/**
 * Initializes the page by creating the one and only {@code gm.Conversation} instance and restoring
 * the previous scroll position (if any).
 */
gm.init = function() {
    gm.conversation = new gm.Conversation();
    window.gmail.onConversationInitialized();
};


// Measure the height of all HTML blocks so the Java side can place its overlay views correctly.
// (This includes the conversation header and all message bodies.)
gm.measureHeights = function() {

    var messageHeights = [];
    var i = 0;
    var len;
    var nextTop;
    var h;
    var currTop;

    var headers = document.querySelectorAll(".gm-header-spacer, .gm-super-collapsed-spacer");

    for (i = 0, len = headers.length; i < len; i++) {
        if (nextTop) {
            currTop = nextTop;
        } else {
            currTop = getTotalOffset(headers[i]).top;
        }
        if (i == len - 1) {
            nextTop = document.body.offsetHeight;
        } else {
            nextTop = getTotalOffset(headers[i+1]).top;
        }
        h = nextTop - currTop - headers[i].offsetHeight;
        // addJavascriptInterface handler only supports string arrays
        messageHeights.push("" + h);
    }

    window.gmail.onWebContentGeometryChange(messageHeights);
}


gm.setConversationHeaderSpacerHeight = function(height) {
    $("gm-conversation-header-spacer").style.height = height + "px";
}


gm.setMessageSpacerHeight = function(messageDomId, height) {
    var spacer = document.querySelector("#" + messageDomId + " > .gm-header-spacer");
    if (!spacer) {
        console.log("can't set spacer for message with id: " + messageDomId);
        return;
    }
    spacer.style.height = height + "px";
};


gm.setMessageBodyVisible = function(messageDomId, isVisible, spacerHeight) {
    var messageBody = document.querySelector("#" + messageDomId + " > .gm-body");
    if (!messageBody) {
        console.log("can't set body visibility for message with id: " + messageDomId);
        return;
    }
    gm.setMessageSpacerHeight(messageDomId, spacerHeight);
    messageBody.style.display = isVisible ? "block" : "none";
    gm.conversation.invalidateGeometryCache();
};


gm.replaceSuperCollapsedBlock = function(startIndex) {
    var parent, block, header;

    block = document.querySelector(".gm-super-collapsed-spacer[index='" + startIndex + "']");
    if (!block) {
        console.log("can't expand super collapsed block at index: " + startIndex);
        return;
    }
    parent = block.parentNode;
    block.innerHTML = window.gmail.getTempMessageBodies();

    header = block.firstChild;
    while (header) {
        parent.insertBefore(header, block);
        gm.conversation.addMessage(header);
        header = block.firstChild;
    }
    parent.removeChild(block);
    gm.conversation.invalidateGeometryCache();
};


// TODO(attila): Clean up the legacy JS code below this line.


// nodeType values
var ELEMENT_NODE = 1;
var TEXT_NODE = 3
var highlightStrings = '';

function highlightInMessageBodies(data) {
    highlightStrings = data;

    if (highlightStrings.length == 0) {
        return;
    }

    var divs = document.getElementsByTagName("div");
    for (var i = 0; i < divs.length; i++) {
        if (divs[i].classList.contains("gm-message-content")) {
            internalHighlight(divs[i]);
        }
    }
}

function internalHighlight(node) {
    var children = node.childNodes;
    for (var i = 0; i < children.length; i++) {
        var child = children[i];
        if (child.nodeType == ELEMENT_NODE) {
            internalHighlight(child);
        } else if (child.nodeType == TEXT_NODE) {
            for (var j = 0; j < highlightStrings.length; j++) {
                var highlightString = highlightStrings[j];
                var pos = getFirstMatchIndex(child, highlightString);
                if (pos >= 0) {
                    var highlightedSpanNode = document.createElement("span");
                    highlightedSpanNode.className = "highlight";
                    var patternNode = child.splitText(pos);
                    patternNode.splitText(highlightString.length);
                    highlightedSpanNode.appendChild(patternNode.cloneNode(true));
                    node.replaceChild(highlightedSpanNode, patternNode);
                    // Skip ahead one, since we just added a child
                    i++;
                }
            }
        }
    }
}

function getFirstMatchIndex(node, highlightString) {
    // Since lookbehind isn't supported we need to check both possibilities
    var pos1 = node.data.search(new RegExp("\\W" + highlightString + "(?!\\w)", "gi"));
    // Move position to beginning of highlightString (don't count \W).
    if (pos1 >= 0) {
        pos1++;
    }

    var pos2 = node.data.search(new RegExp("^" + highlightString + "(?!\\w)", "gim"));

    // Decide which comes first
    var pos = pos2;
    if (pos < 0 || (pos1 < pos && pos1 >= 0)) {
        pos = pos1;
    }
    return pos;
}

var handledInitialLoad = false;

function handleLoadOrResize() {
    var scrollYPercent;

    gm.conversation.invalidateGeometryCache();

    if (!handledInitialLoad) {
        handledInitialLoad = true;

        scrollYPercent = window.gmail.getScrollYPercent();
        if (scrollYPercent) {
            if (document.body.offsetHeight > window.innerHeight) {
                // Must set initial scroll *after* the overlay layer is spaced out using body
                // heights.
                document.body.scrollTop = Math.floor(scrollYPercent * document.body.offsetHeight);
            } else {
                window.gmail.revealOverlay();
            }
        }
    }
}

// Attempt to measure message body heights as soon as correct geometries are ready.
// Turns out 'onload' is not reliable for this, so look for the first window resize event
// where the document body width matches the webview width.
//
// WebView sometimes delivers multiple resize events upon load, first to a wrong mdpi size
// and then to the correct size. Ingore any resize events where the body width is smaller
// than the expected width (the webview width), until the correct width is present.
// In general, we don't expect more than one window resize event per conversation because
// the view size never changes (rotation makes a new webview).
//
// Filed as b/4723800.
var ignoreSpuriousResizeEvents = true;

// DOM document width and WebView width must differ by no more than this amount
var VIEW_WIDTH_TOLERANCE = 1;

function widthIsSane(bodyWidth) {
    return (Math.abs(bodyWidth - VIEW_WIDTH) <= VIEW_WIDTH_TOLERANCE);
}

window.onload = function() {
    var bodyWidth = document.body.offsetWidth;
    if (widthIsSane(bodyWidth)) {
        handleLoadOrResize();
    } else {
        console.log("ignoring bad initial width: expected=" + VIEW_WIDTH + ", actual=" +
            bodyWidth);
    }

    // PAGE READINESS SIGNAL FOR JELLYBEAN AND NEWER
    // Notify the app on 'webkitAnimationStart' of a simple dummy element with a simple no-op
    // animation that immediately runs on page load. The app uses this as a signal that the
    // content is loaded and ready to draw, since WebView delays firing this event until the
    // layers are composited and everything is ready to draw.
    //
    // This code is conditionally enabled on JB+ by setting the 'initial-load' CSS class on this
    // dummy element.
    $("initial-load-signal").addEventListener("webkitAnimationStart", onContentReady, false);
};

function onContentReady(event) {
    window.gmail.onContentReady();
}

window.onresize = function() {
    var bodyWidth = document.body.offsetWidth;
    if (!widthIsSane(bodyWidth)) {
        if (ignoreSpuriousResizeEvents) {
            // ignore
            console.log("ignoring bad resize width: expected=" + VIEW_WIDTH + ", actual=" +
                bodyWidth);
            return;
        }
    } else if (ignoreSpuriousResizeEvents) {
        // stop ignoring after the first valid resize
        ignoreSpuriousResizeEvents = false;
    }
    handleLoadOrResize();
};

