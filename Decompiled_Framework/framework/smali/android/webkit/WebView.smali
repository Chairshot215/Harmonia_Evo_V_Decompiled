.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$OnWebViewTabEffectListener;,
        Landroid/webkit/WebView$WrapActions;,
        Landroid/webkit/WebView$QuickSelectWV;,
        Landroid/webkit/WebView$QuickSelectAbs;,
        Landroid/webkit/WebView$AutoScrollerWrapper;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$TouchEventQueue;,
        Landroid/webkit/WebView$QueuedTouch;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$SaveWebArchiveMessage;,
        Landroid/webkit/WebView$PackageListener;,
        Landroid/webkit/WebView$ProxyReceiver;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$OnTrimMemoryListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$InnerScrollChangedListener;,
        Landroid/webkit/WebView$InnerGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SCRIPT_CHOOSER_JAVASCRIPT:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field private static final ANYWHERE:I = 0x2

.field static final AUTOFILL_COMPLETE:I = 0x86

.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final DEBUG_TEXT_HANDLES:Z = false

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = true

.field public static DEFAULT_TEXT_RATIO:F = 0.0f

.field private static DEFAULT_TEXT_WIDTH:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field static final DID_FIRST_LAYOUT_MSG_ID:I = 0xca

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final FIND_AGAIN:I = 0x7e

.field static final FINISH_VIEW_SIZE_CHANGE:I = 0xc8

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_DID_BLUR:I = 0x7c

.field private static final FULLY_ON_SCREEN:I = 0x0

.field private static final HEAVY_WEBSITE_DOUBLE_TAP_TIMEOUT:I = 0x258

.field private static final HEAVY_WEBSITE_LONGPRESS_TIMEOUT:I = 0x320

.field static final HIDE_FULLSCREEN:I = 0x79

.field private static HIGHLIGHT_COLOR:I = 0x0

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

.field static final HTCACTIONMODE_POPUP_FOCUSABLE:Z = false

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field private static final INTERSECTS_SCREEN:I = 0x1

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x83

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x2bc

.field private static final LONG_PRESS_TIMEOUT_FOR_TEXTSELECTION:I = 0x12c

.field static final MARK_DEBUG:Z = false

.field private static final MAX_DURATION:I = 0x2ee

.field public static MAX_SMARTZOOM_SCALE:I = 0x0

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_FLING_TIME:I = 0xfa

.field public static MIN_SMARTZOOM_SCALE:I = 0x0

.field private static final MMA_WEIGHT_N:F = 5.0f

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MULTI_TOUCH_RECOVERY_STATUS:I = 0xc9

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field static final NO_LEFTEDGE:I = -0x1

.field public static final OVER_SCROLL_NOTE_CUSTOMIZED:I = 0x6

.field public static final OVER_SCROLL_WEBVIEW_CUSTOMIZED:I = 0x5

.field private static final PACKAGE_FP:Ljava/lang/String; = "com.adobe.flashplayer"

.field private static final PADDING_ALIGN_LEFT:I = 0x14

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PATTERN_MATCH_AXS_URL_PARAMETER:Ljava/lang/String; = "(\\?axs=(0|1))|(&axs=(0|1))"

.field static final PAUSE_TIMER_HEAVY_PAGE:I = 0x136

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_PENDING_PICTURE:I = 0x133

.field private static final RELEASE_PENDING_SCROLL:I = 0x132

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_BASE_CONTENT:I = 0x7b

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final RESUME_TIMER_HEAVY_PAGE:I = 0x137

.field static final RETURN_LABEL:I = 0x7d

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field static final SCREEN_ON:I = 0x88

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field static final SELECT_AT:I = 0x87

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_IS_LOADING:I = 0xcc

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SET_TOUCH_HIGHLIGHT_RECTS:I = 0x83

.field static final SET_WILL_DRAW:I = 0x12f

.field static final SET_WILL_NOT_DRAW:I = 0x12e

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_QUICK_DESCRIPTION:I = 0xcb

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SNED_VIEW_SIZE_ZOOM:I = 0x131

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field public static TAB_EFFECT_PIVOT_L_X:F = 0.0f

.field public static TAB_EFFECT_PIVOT_L_Y:F = 0.0f

.field public static TAB_EFFECT_PIVOT_P_X:F = 0.0f

.field public static TAB_EFFECT_PIVOT_P_Y:F = 0.0f

.field private static final TAP_TIMEOUT:I = 0x12c

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_HIGHLIGHT_ARC:F = 5.0f

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UNHANDLED_NAV_KEY:I = 0x6e

.field static final UPDATE_SELECTION:I = 0x8a

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_WEB_CONTNET_MSG_ID:I = 0xcd

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final USE_JAVA_TEXT_SELECTION:Z = true

.field static final USE_WEBKIT_RINGS:Z = false

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field static final WEBVIEW_INIT:I = 0x130

.field private static final ZOOM_BITS:I = 0x86

.field public static gbIsAnimationZoomOut:Z

.field protected static mBottomOverScrollEnabled:Z

.field private static mIncrementEGLContextHack:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field protected static mOverscrollMode:I

.field public static mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

.field protected static mTopOverScrollEnabled:Z

.field public static m_bHostFullScreenMode:Z

.field private static m_nTabEffectType_Transition:I

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;


# instance fields
.field public final DEFAULT_TAB_MIN_RATIO:F

.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field protected cursorRect:Landroid/graphics/Rect;

.field private howToSelection:I

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mAccessibilityScriptInjected:Z

.field public mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

.field public mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field protected mAutoScroller:Landroid/webkit/WebViewAutoScroller;

.field mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

.field private mAverageAngle:F

.field private mBackgroundColor:I

.field public mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRemoved:Z

.field private mBlockWebkitViewMessages:Z

.field private mBrowserCustomizedDefaultScale:Z

.field private mCacheDrawScale:F

.field private mCacheDrawX:F

.field private mCacheDrawY:F

.field private mCachedOverlappingActionModeHeight:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentVisibleRect:Landroid/graphics/Rect;

.field private mContentWidth:I

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field mCustomFindMode:Z

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field public mDefaultZoomInDuration:I

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDoubleTapSlopSquare:I

.field protected mDragAfterActionDown:Z

.field mDragFromTextInput:Z

.field private mDrawCanvas:Landroid/graphics/Canvas;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mExtendSelection:Z

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private final mGLRectViewport:Landroid/graphics/Rect;

.field private mGLViewportEmpty:Z

.field private mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

.field protected mHTCWebCore:Landroid/webkit/HTCWebCore;

.field private mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mHardwareAccelSkia:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHtcCustomizedDefaultScale:Z

.field private mInLoading:Z

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field public mIntervalScale:F

.field private mIsHeavyWebSite:Z

.field private mIsPaused:Z

.field private mIsStopDrawing:Z

.field mIsTouchOnScreen:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field mLastTouchX:I

.field mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mMapTrackballToArrowKeys:Z

.field private mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

.field protected mMatrixValues:[F

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field private mNativeClass:I

.field private mNavSlop:I

.field private mOrientation:I

.field public mOriginalScale:F

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPausedTimerByZoom:Z

.field private mPendingScrollX:I

.field private mPendingScrollY:I

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field public mPluginHide:Z

.field private mPositionRectBase:Landroid/graphics/Rect;

.field private mPositionRectEnd:Landroid/graphics/Rect;

.field private mPositionRectExtend:Landroid/graphics/Rect;

.field private mPositionRectLock:Ljava/lang/Object;

.field private mPositionRectStart:Landroid/graphics/Rect;

.field private mPreventDefault:I

.field final mPrivateHandler:Landroid/os/Handler;

.field private mPureZoomMode:Z

.field public mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

.field private mRemoveBackground:Z

.field private mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectCallback:Landroid/webkit/SelectActionModeCallback;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field protected mSelection:Landroid/webkit/WebViewSelectionMethod;

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field public mStartTime:J

.field private mStartTouchX:I

.field private mStartTouchY:I

.field public mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

.field private mTabEffectTimeout:Ljava/lang/Runnable;

.field private mTextGeneration:I

.field private mTextSelectionPaint:Landroid/graphics/Paint;

.field private mTextSelectionRegion:Landroid/graphics/Region;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTitleBar:Landroid/view/View;

.field private mTitleBarHeight:I

.field private mTitleGravity:I

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private final mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightRequested:J

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchMode:I

.field mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field final mViewManager:Landroid/webkit/ViewManager;

.field private final mViewRectViewport:Landroid/graphics/Rect;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field public mZoomInDuration:I

.field private mZoomManager:Landroid/webkit/ZoomManager;

.field m_bCustomizeEnableTBS:Z

.field m_bEnableTBS:Z

.field m_bHasNewWebView:Z

.field private m_bIsBrowserApp:Z

.field m_bIsLoadFinish:Z

.field m_bIsLoading:Z

.field private m_bIsScrollingPause:Z

.field public m_bMailClientUsed:Z

.field private m_bNeedInvokeTabDialog:Z

.field private m_bNeedRestore:Z

.field m_bPauseAll:Z

.field m_bPauseTextReflowbyCurrentScale:Z

.field m_bsetScaleWithoutCheck:Z

.field private m_fResotreActualScale:F

.field public m_nCurrentTabMinLeft:I

.field public m_nCurrentTabMinLeft_modify:I

.field public m_nCurrentTabMinTop:I

.field public m_nCurrentTabMinTop_modify:I

.field public m_nHostStatusbarHeight:I

.field private m_nRestoreScrollX:I

.field private m_nRestoreScrollY:I

.field m_nSelectHighlightColor:I

.field m_nTextWrapWidth_pauseTextReflow:I

.field public m_nVisibleTitleHeight:I

.field public mbIsAnimationZoomOutFinish:Z

.field public mbNeedCallBack:Z

.field public mfTabRatio:F

.field private misCacheDrawBitmap:Z

.field private needVibrate:Z

.field ownerActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private selectionUIType:I

.field protected shortTapOnWebView:Z

.field private triggerByTouch:Z

.field private willSelectWord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x6633b5e5

    sput v0, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCROLL_SELECT_TEXT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "102"

    aput-object v1, v0, v4

    const-string v1, "103"

    aput-object v1, v0, v5

    const-string v1, "104"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNHANDLED_NAV_KEY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "REPLACE_BASE_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FORM_DID_BLUR"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SELECTION_STRING_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SET_AUTOFILLABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AUTOFILL_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SELECT_AT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ENTER_FULLSCREEN_VIDEO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "UPDATE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UPDATE_ZOOM_DENSITY"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    const/16 v0, 0x3d4

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    sput-boolean v4, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    sput-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sput v3, Landroid/webkit/WebView;->m_nTabEffectType_Transition:I

    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    const/4 v0, -0x1

    sput v0, Landroid/webkit/WebView;->mOverscrollMode:I

    sput v3, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    const v0, 0x3faaaaab

    sput v0, Landroid/webkit/WebView;->DEFAULT_TEXT_RATIO:F

    const/16 v0, 0x82

    sput v0, Landroid/webkit/WebView;->MIN_SMARTZOOM_SCALE:I

    const/16 v0, 0x96

    sput v0, Landroid/webkit/WebView;->MAX_SMARTZOOM_SCALE:I

    sput-boolean v4, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    sput-boolean v3, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    const/high16 v0, 0x3f00

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v0, 0x3f333333

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    const v0, 0x3ef0a3d7

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v0, 0x3f547ae1

    sput v0, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    iput-object v2, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iput v5, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    iput-boolean v6, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    iput-boolean v6, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    iput v5, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    iput-boolean v6, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    iput v5, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    iput v5, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    iput v5, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    iput-wide v7, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    new-instance v0, Landroid/webkit/WebView$TouchEventQueue;

    invoke-direct {v0, p0, v2}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mBackgroundRemoved:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    iput-object v2, p0, Landroid/webkit/WebView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mPausedTimerByZoom:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mCustomFindMode:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mInLoading:Z

    iput v5, p0, Landroid/webkit/WebView;->mOrientation:I

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectingText:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput v5, p0, Landroid/webkit/WebView;->mSelectX:I

    iput v5, p0, Landroid/webkit/WebView;->mSelectY:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    iput-wide v7, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    iput-boolean v6, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    iput-object v2, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/WebView;->mMatrixValues:[F

    iput v5, p0, Landroid/webkit/WebView;->mTitleBarHeight:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const v0, 0xd0f7a7

    iput v0, p0, Landroid/webkit/WebView;->m_nSelectHighlightColor:I

    iput v5, p0, Landroid/webkit/WebView;->howToSelection:I

    iput v5, p0, Landroid/webkit/WebView;->selectionUIType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/webkit/WebViewAutoScroller;

    invoke-direct {v0}, Landroid/webkit/WebViewAutoScroller;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoScroller:Landroid/webkit/WebViewAutoScroller;

    iput-boolean v5, p0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    iput v5, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    iput-boolean v5, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->willSelectWord:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->needVibrate:Z

    new-instance v0, Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$AutoScrollerWrapper;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    iput-boolean v6, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bNeedRestore:Z

    iput v5, p0, Landroid/webkit/WebView;->m_nRestoreScrollX:I

    iput v5, p0, Landroid/webkit/WebView;->m_nRestoreScrollY:I

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebView;->m_fResotreActualScale:F

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mPluginHide:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/WebView;->mStartTime:J

    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    iget v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    iput v0, p0, Landroid/webkit/WebView;->mZoomInDuration:I

    iput-object v2, p0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean v6, p0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->DEFAULT_TAB_MIN_RATIO:F

    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->mfTabRatio:F

    iput-boolean v5, p0, Landroid/webkit/WebView;->mbNeedCallBack:Z

    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    iput v5, p0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    iput-object v2, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    iput v5, p0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    iput v5, p0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    new-instance v0, Landroid/webkit/WebView$13;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$13;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    iput-boolean v5, p0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bEnableTBS:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bCustomizeEnableTBS:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->m_bHasNewWebView:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    iput v5, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    iput v5, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    new-instance v0, Landroid/widget/OverScroller;

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    new-instance v0, Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-direct {v0, v1, p0}, Landroid/webkit/HTCWebCore;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    if-eqz p5, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->startPrivateBrowsing()V

    :cond_1
    new-instance v0, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method public static SetWebViewTabEffectListener(Landroid/webkit/WebView$OnWebViewTabEffectListener;)V
    .locals 0

    sput-object p0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    return-void
.end method

.method private abortAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    return-void
.end method

.method static synthetic access$100(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$10002(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$1002(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    return v0
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeSelectAt(II)V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelectionColors()V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetIsBrowser(Z)V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$12000(Landroid/webkit/WebView;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$12002(Landroid/webkit/WebView;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$12102(Landroid/webkit/WebView;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$12500(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    return-void
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13200(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$13300(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$13400(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method static synthetic access$13600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$13700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$13800(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    return v0
.end method

.method static synthetic access$13900()I
    .locals 1

    sget v0, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    return v0
.end method

.method static synthetic access$14000(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14100(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$14200(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14300(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$14400(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method static synthetic access$14402(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return p1
.end method

.method static synthetic access$14500(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    return-void
.end method

.method static synthetic access$14600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$14700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$14800(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->needVibrate:Z

    return v0
.end method

.method static synthetic access$14802(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->needVibrate:Z

    return p1
.end method

.method static synthetic access$14900(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->willSelectWord:Z

    return v0
.end method

.method static synthetic access$14902(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->willSelectWord:Z

    return p1
.end method

.method static synthetic access$15000(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    return v0
.end method

.method static synthetic access$15100(Landroid/webkit/WebView;)J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$15200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$15600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$15700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$15800(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$15900(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->selectionUIType:I

    return v0
.end method

.method static synthetic access$1602(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mTouchHighlightX:I

    return p1
.end method

.method static synthetic access$16200(Landroid/webkit/WebView;ILandroid/graphics/Region;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$16500(Landroid/webkit/WebView;IIZI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$16600(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$16800(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$16900(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$17000(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1702(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mTouchHighlightY:I

    return p1
.end method

.method static synthetic access$17200(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->handleTouchEventEditable(Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/WebView;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)F
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$2502(Landroid/webkit/WebView;F)F
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)F
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebView;F)F
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$2702(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$4402(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;IIZI)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$4902(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$5102(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object p1
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$6702(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7000(IZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;IIZJ)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    return v0
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    return-void
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8102(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8202(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8302(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;IZ)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mPausedTimerByZoom:Z

    return v0
.end method

.method static synthetic access$9202(Landroid/webkit/WebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mPausedTimerByZoom:Z

    return p1
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    return v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;)I
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$9702(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    return p1
.end method

.method static synthetic access$9802(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    return p1
.end method

.method static synthetic access$9902(Landroid/webkit/WebView;I)I
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method private accessibilityScriptInjected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    return v0
.end method

.method private addAccessibilityApisToJavaScript()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".**webview**"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v6, v6, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v3, "accessibility"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private adjustWebTextViewSize(Landroid/graphics/Rect;)V
    .locals 14

    const/4 v1, -0x1

    const/16 v11, 0x19

    const v13, 0x3fcccccd

    const v12, 0x400ccccd

    iget-object v10, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v10, "m.yahoo.com"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_c

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v6

    const/4 v10, 0x3

    if-ne v6, v10, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Landroid/webkit/WebView;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()F

    move-result v10

    float-to-int v4, v10

    add-int v5, v4, v4

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRight()I

    move-result v10

    const/16 v11, 0x140

    if-le v10, v11, :cond_6

    move v9, v5

    :goto_3
    cmpl-float v10, v0, v13

    if-lez v10, :cond_2

    cmpg-float v10, v0, v12

    if-gez v10, :cond_7

    sub-float v10, v0, v13

    const v11, 0x3f19999a

    div-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    :cond_2
    :goto_4
    iget v10, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v9

    iput v10, p1, Landroid/graphics/Rect;->right:I

    :goto_5
    add-int/lit8 v5, v5, 0x4

    iget v10, p1, Landroid/graphics/Rect;->right:I

    if-lez v10, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v10, v5, :cond_0

    :cond_3
    iget v10, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v5

    iput v10, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    const-string v10, "Android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    add-int v9, v5, v4

    goto :goto_3

    :cond_7
    const v10, 0x40733333

    cmpl-float v10, v0, v10

    if-lez v10, :cond_8

    const v0, 0x40733333

    :cond_8
    sub-float v10, v0, v12

    div-float/2addr v10, v13

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v10, v4

    add-int/2addr v9, v10

    goto :goto_4

    :cond_9
    add-int v9, v5, v4

    cmpl-float v10, v0, v12

    if-lez v10, :cond_b

    const v10, 0x404ccccd

    cmpl-float v10, v0, v10

    if-lez v10, :cond_a

    const v0, 0x404ccccd

    :cond_a
    sub-float v10, v0, v12

    const/high16 v11, 0x3f80

    div-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    :cond_b
    iget v10, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v9

    iput v10, p1, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_c
    const-string/jumbo v10, "http://www.google.com.eg/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v11, :cond_d

    const-string/jumbo v10, "m?site"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "?source"

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_e

    :goto_6
    if-ltz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v10, p1, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iput v10, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    :cond_e
    const-string v10, "Android"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_6
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 5

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v1, v1, Landroid/webkit/WebView$QuickSelectAbs;->testWordSelect:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v1, Landroid/webkit/WebView$QuickSelectAbs;->testWordPos:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0xa

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, -0xa

    iget v3, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v3, v3, 0xa

    iget v4, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private calculateDragAngle(II)F
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double v0, p2

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private cancelSelectDialog()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    :cond_0
    return-void
.end method

.method private cancelTouch()V
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x3

    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 8

    const/16 v7, 0x8d

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    new-array v3, v6, [I

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    aput v5, v3, v5

    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v1, v3, v4

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v2, v3, v4

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    const/4 v3, 0x3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    const/4 v3, 0x4

    iput v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eqz p3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->ignoreCurrentlyMissingEvents()V

    :cond_1
    return-void
.end method

.method private static checkThread()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private clearActionModes()V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    goto :goto_0
.end method

.method private clearHelpers()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearActionModes()V

    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    invoke-direct {p0}, Landroid/webkit/WebView;->cancelSelectDialog()V

    return-void
.end method

.method private clearTextEntry()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method private static computeDuration(II)I
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2

    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private destroyImpl()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    iget-object v1, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "webview"

    const-string v2, "Webview destroy release video buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->release()V

    iput-object v3, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    iput-object v3, p0, Landroid/webkit/WebView;->mListBoxDialog:Lcom/htc/dialog/HtcAlertDialog;

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->remove()V

    iput-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeStopGL()V

    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v3}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    :cond_5
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v1, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_7

    iput-object v3, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    :cond_7
    iput-object v3, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private didUpdateWebTextViewDimensions(I)Z
    .locals 9

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    packed-switch p1, :pswitch_data_0

    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "invalid parameter passed to didUpdateWebTextViewDimensions"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_0
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/WebTextView;->setRect(IIII)V

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->updateTextSize()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    const/4 v4, 0x1

    :goto_1
    return v4

    :pswitch_1
    invoke-static {v3, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->remove()V

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    const/4 v1, 0x0

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/webkit/WebView;->disableProxyListener(Landroid/content/Context;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3

    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private doDrag(II)V
    .locals 19

    or-int v2, p1, p2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v12

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    :cond_0
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 p1, v12

    move/from16 p2, v13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    move v7, v14

    move v8, v15

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    return-void

    :cond_4
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method private doFling()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    const/16 v24, 0x3e8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7b

    if-ne v2, v5, :cond_2

    const/16 v24, 0x5dc

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mMaximumFling:I

    int-to-float v5, v5

    move/from16 v0, v24

    invoke-virtual {v2, v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    const/16 v19, 0x0

    move/from16 v25, v19

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    const/16 v29, 0x0

    :cond_4
    :goto_1
    if-nez v6, :cond_5

    if-eqz v29, :cond_6

    :cond_5
    if-nez v8, :cond_a

    if-nez v28, :cond_a

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :cond_9
    const/16 v28, 0x0

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_c

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v27, v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v29

    int-to-double v11, v0

    move/from16 v0, v28

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    const v20, 0x40c90fdb

    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_b

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_c

    :cond_b
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v28, v0

    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    :cond_c
    if-eqz v3, :cond_d

    if-ne v3, v6, :cond_e

    :cond_d
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_e

    const/16 v28, 0x0

    :cond_e
    if-eqz v4, :cond_f

    if-ne v4, v8, :cond_10

    :cond_f
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_10

    const/16 v29, 0x0

    :cond_10
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    if-lez v28, :cond_11

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v3, v2, :cond_12

    :cond_11
    if-gez v28, :cond_13

    add-int v2, v6, v25

    if-ne v3, v2, :cond_13

    :cond_12
    const/16 v28, 0x0

    :cond_13
    if-lez v29, :cond_14

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v4, v2, :cond_15

    :cond_14
    if-gez v29, :cond_16

    add-int v2, v8, v25

    if-ne v4, v2, :cond_16

    :cond_15
    const/16 v29, 0x0

    :cond_16
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v28

    neg-int v12, v0

    move/from16 v0, v29

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_19

    const/16 v18, 0x0

    :goto_2
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v26

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-eq v2, v5, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v5, v5, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    :cond_18
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_19
    move/from16 v18, v19

    goto :goto_2

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v5, :cond_18

    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_3
.end method

.method private doMotionUp(II)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v1, :cond_0

    const v1, 0x11206

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 7

    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v5, 0x7

    iput v5, p0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    new-instance v4, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v4}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    const/4 v5, 0x0

    iput v5, v4, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x8c

    invoke-virtual {v5, v6, v4}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x92

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(JI)V
    .locals 25

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    if-nez v12, :cond_0

    const/16 v12, 0xc8

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    if-nez v3, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mExtendSelection:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->moveSelection(FF)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int v20, v3, v19

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int v13, v3, v18

    if-gez v20, :cond_4

    const/16 v20, 0x0

    :cond_4
    if-gez v13, :cond_5

    const/4 v13, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v17, v0

    if-lez v11, :cond_b

    cmpg-float v3, v9, v10

    if-gez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    const/16 v4, 0x13

    :goto_1
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v11, :cond_9

    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    const/16 v4, 0x14

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_8

    const/16 v4, 0x15

    goto :goto_1

    :cond_8
    const/16 v4, 0x16

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    :cond_a
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    :cond_b
    const/4 v3, 0x5

    if-lt v11, v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v23

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_c

    const/16 v21, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_d

    const/16 v23, 0x0

    :cond_d
    if-nez v21, :cond_e

    if-eqz v23, :cond_2

    :cond_e
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move v5, v11

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;Z)V
    .locals 2

    iget v1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    :cond_4
    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_8
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v2, :cond_f

    const/4 v8, 0x1

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_11

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_12

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebView;->nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v20

    move-object/from16 v2, p1

    check-cast v2, Landroid/view/HardwareCanvas;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeUseHardwareAccelSkia(Z)V

    :cond_a
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->howToSelection:I

    if-nez v2, :cond_17

    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    :cond_b
    :goto_7
    const/4 v2, 0x3

    if-ne v8, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_10

    :cond_10
    if-eqz p3, :cond_9

    const/4 v8, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_5

    :cond_13
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v15, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    :cond_15
    :goto_8
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    move-result v18

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_a

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x85

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_6

    :cond_16
    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    goto :goto_8

    :cond_17
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawQuickSelect(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108053e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method private drawQuickSelect(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-object v8, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v6

    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    sget v9, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v7, v8, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    if-eqz v7, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    iget-object v9, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v8}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v8

    sget-object v9, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v1, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    new-instance v3, Landroid/graphics/RegionIterator;

    invoke-direct {v3, v1}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    goto :goto_0

    :cond_3
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    iget-object v9, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-nez v7, :cond_4

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-boolean v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v9, v9, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v10, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v10, v10, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_2
    return-void

    :cond_6
    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v8, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v8, v8, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v8, v10}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    goto :goto_2
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    sget v9, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    iget-object v9, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/RegionIterator;

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {v4, v8}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080597

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    :cond_3
    const/4 v8, 0x4

    new-array v3, v8, [I

    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-direct {p0, v8, v3}, Landroid/webkit/WebView;->nativeGetSelectionHandles(I[I)V

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v6

    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    const/4 v8, 0x3

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v6, v8

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080599

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v1, v8

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureAccessibilityScriptInjectorInstance(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method private extendScroll(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddressAndPhone(Ljava/lang/String;[I[I[I)I
    .locals 4

    const/16 v3, 0x100

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v2, p1

    if-lt v2, v3, :cond_2

    array-length v2, p2

    if-lt v2, v3, :cond_2

    array-length v2, p3

    if-ge v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I

    move-result v0

    goto :goto_0
.end method

.method public static findAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I
    .locals 14

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v1, p1

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p2

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p3

    array-length v1, v0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    if-eqz p8, :cond_4

    if-eqz p9, :cond_4

    if-eqz p10, :cond_4

    if-eqz p11, :cond_4

    move-object/from16 v0, p4

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p5

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p6

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p7

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p8

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p9

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p10

    array-length v1, v0

    const/16 v2, 0x100

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p11

    array-length v1, v0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_5

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v1 .. v12}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I

    move-result v13

    goto/16 :goto_0

    :cond_6
    invoke-static/range {p0 .. p11}, Landroid/webkit/WebViewCore;->nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I

    move-result v13

    goto/16 :goto_0
.end method

.method private fnIsHtcApplication()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "com.htc.android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private forceBreakWord(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCore;->nativeEnableTextReflowWithBreakWords(Z)V

    :cond_0
    return-void
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .locals 4

    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    const-string v2, "(\\?axs=(0|1))|(&axs=(0|1))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getDefaultTextWidth()I
    .locals 1

    sget v0, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    return v0
.end method

.method private getOverlappingActionModeHeight()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    invoke-virtual {v0}, Landroid/webkit/HTCQuickSearch;->leaveQuickSearchShareMode()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    goto :goto_0
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;)V
    .locals 3

    const/16 v2, 0xc1

    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)Z
    .locals 23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v13, v3, p3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v14, v3, p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->triggerByTouch:Z

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->willSelectWord:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_7

    const/4 v3, 0x1

    :goto_3
    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_19

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_14

    const-wide/16 v3, 0x258

    :goto_5
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_15

    const-wide/16 v3, 0x320

    :goto_6
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_16

    :cond_5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_18

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    :cond_9
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_a

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_4

    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_4

    :cond_b
    const/4 v3, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_12

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v12, Landroid/webkit/WebViewCore$TouchHighlightData;

    invoke-direct {v12}, Landroid/webkit/WebViewCore$TouchHighlightData;-><init>()V

    iput v10, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    iput v11, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    iget-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNavSlop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4, v12}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Landroid/webkit/WebView$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    sget-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_10

    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v6, v17, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_4

    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_9

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_4

    :cond_14
    const-wide/16 v3, 0x12c

    goto/16 :goto_5

    :cond_15
    const-wide/16 v3, 0x2bc

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_7

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_7

    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_19
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebView;->startTouch(FFJ)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDragAfterActionDown:Z

    goto/16 :goto_0

    :pswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-nez v3, :cond_1b

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1d

    if-nez v19, :cond_1c

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    sub-long v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1d

    :cond_1c
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-nez v3, :cond_0

    if-eqz v19, :cond_1d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_21

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    :cond_20
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_b

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    if-eqz v3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    if-eqz v21, :cond_23

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_23
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    move/from16 v0, p3

    if-gt v0, v3, :cond_27

    const/4 v3, -0x5

    :goto_c
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    move/from16 v0, p4

    if-gt v0, v3, :cond_29

    const/4 v3, -0x5

    :goto_d
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    if-nez v3, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    if-eqz v3, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-nez v3, :cond_25

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0x10

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_25
    if-nez v13, :cond_26

    if-eqz v14, :cond_0

    :cond_26
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_28

    const/4 v3, 0x5

    goto :goto_c

    :cond_28
    const/4 v3, 0x0

    goto :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_2a

    const/4 v3, 0x5

    goto :goto_d

    :cond_2a
    const/4 v3, 0x0

    goto :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v13, :cond_30

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    :cond_2d
    :goto_f
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    :cond_2e
    const/16 v16, 0x0

    const/16 v20, 0x0

    if-nez v13, :cond_33

    if-nez v14, :cond_33

    const/16 v16, 0x1

    move/from16 v20, v16

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->doDrag(II)V

    if-eqz v20, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v16, :cond_3d

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_30
    const/4 v3, 0x0

    goto :goto_e

    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v14, :cond_32

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_f

    :cond_32
    const/4 v3, 0x0

    goto :goto_11

    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mAverageAngle:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3f733333

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3ecccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    :cond_35
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    const/4 v14, 0x0

    :cond_36
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-le v3, v4, :cond_3c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :goto_14
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_10

    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_39

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v13, :cond_38

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto :goto_12

    :cond_38
    const/4 v3, 0x0

    goto :goto_15

    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v14, :cond_3a

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_12

    :cond_3a
    const/4 v3, 0x0

    goto :goto_16

    :cond_3b
    const/4 v13, 0x0

    goto :goto_13

    :cond_3c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    const/16 v20, 0x1

    goto :goto_14

    :cond_3d
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    :cond_3f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_40
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    :cond_42
    :goto_17
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_44

    :cond_43
    new-instance v22, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v22 .. v22}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/16 v3, 0x200

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v22

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v22

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v22

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_17

    :cond_44
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_17

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_48

    const-string/jumbo v3, "webview"

    const-string v4, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    :cond_45
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v3

    if-gtz v3, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v3

    if-lez v3, :cond_47

    :cond_46
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4e

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_17

    :cond_48
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto/16 :goto_17

    :cond_49
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_17

    :cond_4a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_4b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v3, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v3, :cond_4c

    const-wide/16 v3, 0x258

    :goto_19
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_17

    :cond_4c
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v3, v3

    goto :goto_19

    :cond_4d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_17

    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_18

    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_50
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_51

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    :cond_51
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mLastVelocity:F

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_17

    :pswitch_8
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v3, v4, :cond_52

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_52

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v0, p1

    invoke-virtual {v3, v10, v11, v0}, Landroid/webkit/WebView$QuickSelectAbs;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    :cond_52
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_53
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private handleTouchEventEditable(Landroid/view/MotionEvent;III)Z
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v13, v3, p3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v14, v3, p4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->hideSingleTapQuickActions()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v3, :cond_8

    sget v3, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_2
    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_3
    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_14

    const/16 v20, 0x1

    :goto_5
    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v20, :cond_15

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    :goto_7
    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_17

    :cond_7
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    :goto_8
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_19

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    :cond_b
    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_c

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_4

    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v12, Landroid/webkit/WebViewCore$TouchHighlightData;

    invoke-direct {v12}, Landroid/webkit/WebViewCore$TouchHighlightData;-><init>()V

    iput v10, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    iput v11, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    iget-object v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNavSlop:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    iput v3, v12, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4, v12}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Landroid/webkit/WebView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    sget-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_12

    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v6, v17, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_4

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_16
    const/16 v3, 0x2bc

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_8

    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_8

    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1a
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_0

    :pswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-nez v3, :cond_1c

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    :cond_1c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_1e

    if-nez v19, :cond_1d

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    sub-long v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1e

    :cond_1d
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-nez v3, :cond_0

    if-eqz v19, :cond_1e

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v11, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v4, 0x78

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mSelectX:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebView$QuickSelectAbs;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_24

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    if-eqz v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    if-eqz v23, :cond_20

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    move/from16 v0, p3

    if-gt v0, v3, :cond_25

    const/4 v3, -0x5

    :goto_c
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    move/from16 v0, p4

    if-gt v0, v3, :cond_27

    const/4 v3, -0x5

    :goto_d
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    if-eqz v3, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-nez v3, :cond_22

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v5, 0x10

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    if-nez v13, :cond_23

    if-eqz v14, :cond_0

    :cond_23
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_b

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_26

    const/4 v3, 0x5

    goto :goto_c

    :cond_26
    const/4 v3, 0x0

    goto :goto_c

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_28

    const/4 v3, 0x5

    goto :goto_d

    :cond_28
    const/4 v3, 0x0

    goto :goto_d

    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    :cond_2a
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_31

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v13, :cond_30

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    :cond_2d
    :goto_f
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    :cond_2e
    const/16 v16, 0x0

    const/16 v21, 0x0

    if-nez v13, :cond_33

    if-nez v14, :cond_33

    const/16 v16, 0x1

    move/from16 v21, v16

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->doDrag(II)V

    if-eqz v21, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_2f
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-nez v16, :cond_3d

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_30
    const/4 v3, 0x0

    goto :goto_e

    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2d

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v14, :cond_32

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    const/high16 v3, 0x4000

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_f

    :cond_32
    const/4 v3, 0x0

    goto :goto_11

    :cond_33
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Landroid/webkit/WebView;->calculateDragAngle(II)F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mAverageAngle:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_34

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3f733333

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const v4, 0x3ecccccd

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    :cond_35
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    const/4 v14, 0x0

    :cond_36
    :goto_13
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    mul-int v3, v13, v13

    mul-int v4, v14, v14

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-le v3, v4, :cond_3c

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :goto_14
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_10

    :cond_37
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3e80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_39

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v13, :cond_38

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/4 v4, 0x0

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto :goto_12

    :cond_38
    const/4 v3, 0x0

    goto :goto_15

    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x3fa0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-lez v14, :cond_3a

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    const/high16 v4, 0x4000

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAverageAngle:F

    goto/16 :goto_12

    :cond_3a
    const/4 v3, 0x0

    goto :goto_16

    :cond_3b
    const/4 v13, 0x0

    goto :goto_13

    :cond_3c
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    const/16 v21, 0x1

    goto :goto_14

    :cond_3d
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    sput-boolean v3, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    :cond_3f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_40

    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_40
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    :cond_42
    :goto_17
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_44

    :cond_43
    new-instance v26, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v26 .. v26}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    const/16 v3, 0x200

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v26

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v26

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v26

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_17

    :cond_44
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v10, v11, v4, v5}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_17

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_48

    const-string/jumbo v3, "webview"

    const-string v4, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v3

    if-gtz v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v3

    if-lez v3, :cond_47

    :cond_45
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v3, :cond_4c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->checkVerticalBouncingCallback(I)Z

    move-result v25

    if-nez v25, :cond_4d

    :cond_46
    :goto_19
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mLastVelocity:F

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_17

    :cond_47
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_17

    :cond_48
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_49

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_17

    :cond_49
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v3

    if-nez v3, :cond_4a

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    goto/16 :goto_17

    :cond_4c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_18

    :cond_4d
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    sub-long v3, v17, v3

    const-wide/16 v5, 0xfa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4e

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_17

    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1a

    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_46

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_19

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->dismiss()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v10, v11, v4, v5}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_51

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mScrollY:I

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v3}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v3, v4, :cond_52

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_52

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v3, v3, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v3}, Landroid/webkit/MagnifyView;->dismiss()V

    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    :cond_52
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x7

    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_1

    move-object v3, v7

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v3, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    iget v8, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v9, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iget v8, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v9, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v0, 0x1

    iget-boolean v8, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeCheckTouchOnFocusRing(II)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v8, "facebook.com"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v7, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    :cond_4
    :goto_1
    invoke-virtual {v3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v5

    if-eqz v5, :cond_5

    if-ne v5, v10, :cond_0

    :cond_5
    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v5, :cond_c

    const/4 v7, 0x5

    :goto_2
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_4

    const-string/jumbo v7, "tel:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v4, v7

    goto :goto_3

    :cond_8
    const-string/jumbo v7, "mailto:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    const-string/jumbo v7, "mailto:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v7, "geo:0,0?q="

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    const-string v7, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v7}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v7

    if-eqz v7, :cond_4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v3, v10}, Landroid/webkit/WebView$HitTestResult;->access$800(Landroid/webkit/WebView$HitTestResult;I)V

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/WebView$HitTestResult;->access$900(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_4

    const-string/jumbo v7, "webview"

    const-string v8, "hitTestResult use fallback"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    goto/16 :goto_1

    :cond_c
    const/16 v7, 0x8

    goto/16 :goto_2
.end method

.method private inEditingMode()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebView$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setClickable(Z)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->setLongClickable(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int v4, v3, v3

    iput v4, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    mul-int v4, v3, v3

    iput v4, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p0}, Landroid/webkit/WebView;->useCustomizedDefaultScale()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    const/high16 v4, 0x4180

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4, v1}, Landroid/webkit/ZoomManager;->init(F)V

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mMaximumFling:I

    const/high16 v4, 0x3f80

    mul-float v5, v1, v1

    div-float/2addr v4, v5

    iput v4, p0, Landroid/webkit/WebView;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    new-instance v4, Ljava/util/Vector;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    iput-object v4, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v5, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    invoke-virtual {v4, v5}, Landroid/webkit/ZoomManager;->setIsBrowserApp(Z)V

    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x130

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->InitTabEffectPivot()V

    return-void

    :sswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    if-nez v4, :cond_2

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0

    :cond_2
    const v1, 0x3f666666

    goto :goto_0

    :sswitch_1
    const v1, 0x3fa66666

    goto/16 :goto_0

    :sswitch_2
    const/high16 v1, 0x3fa0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x61 -> :sswitch_1
        0x8a -> :sswitch_2
        0x91 -> :sswitch_1
    .end sparse-switch
.end method

.method private injectAccessibilityForUrl(Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_script_injection"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    const-string/jumbo v4, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-boolean v3, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    const-string/jumbo v3, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL value for the \"axs\" URL parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method private isEnterActionKey(I)Z
    .locals 1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcZoomingEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/WebView;->mPaddingRight:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/webkit/WebView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 13

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    const/16 v12, 0x67

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v5, 0x1

    const/16 v12, 0x68

    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    return-void
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitIsPlugin()Z
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCheckTouchOnFocusRing(II)Z
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEnableTBS(Z)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeFindAllQuietly(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateLayerId()I
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextPadding()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBackgroundColor()I
.end method

.method private native nativeGetBaseLayer()I
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeGetSelectionHandles(I[I)V
.end method

.method private native nativeGetSelectionRegion()Landroid/graphics/Region;
.end method

.method private native nativeGetSelectionStart(Landroid/graphics/Rect;)V
.end method

.method private native nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V
.end method

.method private native nativeHasContent()Z
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeIsSwapToChangedLayer()Z
.end method

.method private native nativeLayerBounds(I)Landroid/graphics/Rect;
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method protected static native nativeOnTrimMemory(I)V
.end method

.method private native nativePageShouldHandleShiftAndArrows()Z
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRegisterPageSwapCallback()V
.end method

.method private native nativeReplaceBaseContent(I)V
.end method

.method private native nativeScrollLayer(III)Z
.end method

.method private native nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectAt(II)V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectableText()Landroid/graphics/Point;
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetIsBrowser(Z)V
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private native nativeSetPreSelect(Z)V
.end method

.method private native nativeSetSelectionColors(IIIII)V
.end method

.method private native nativeSetSelectionPointer(IZFII)V
.end method

.method private native nativeShowCursorTimed()V
.end method

.method private native nativeStopGL()V
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11

    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v8, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    :cond_2
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2
.end method

.method private offsetByLayerScrollPosition(Landroid/graphics/Rect;)V
    .locals 3

    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateLayerId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_0
    return-void
.end method

.method private onZoomAnimationEnd()V
    .locals 4

    const/16 v2, 0x137

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 3

    const/16 v2, 0x136

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseFPDoPlay()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnPausePlayGifAnimation()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    return-void
.end method

.method private passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V
    .locals 9

    new-instance v2, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    new-array v5, v1, [I

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v5, v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    iput-wide p2, v2, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    iget-object v5, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x8d

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private pauseTextReflowbyCurrentViewWidth()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    goto :goto_0
.end method

.method static pinLoc(III)I
    .locals 1

    if-ge p2, p1, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int v3, p1, v0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int v4, p2, v0

    or-int v0, v3, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    if-eqz p3, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2

    or-int v0, p1, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v0, p2, :cond_2

    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    :cond_2
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private removeAccessibilityApisFromJavaScript()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method private removeTouchHighlight()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    iput v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method private saveStateHtc(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 13

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v9

    const/4 v11, 0x0

    add-int/lit8 v12, v0, -0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v0, 0x3

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v0, v8

    sub-int v7, v6, v8

    if-ltz v0, :cond_0

    if-ge v0, v7, :cond_0

    if-nez v7, :cond_1

    :cond_0
    move-object v5, v10

    :goto_0
    return-object v5

    :cond_1
    const-string/jumbo v11, "index"

    invoke-virtual {p1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v8

    :goto_1
    if-ge v3, v6, :cond_4

    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v11, "webview"

    const-string/jumbo v12, "saveState: Unexpected null history item."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    if-nez v1, :cond_3

    move-object v5, v10

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v10, "history"

    invoke-virtual {p1, v10, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v10, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v10, :cond_5

    const-string v10, "certificate"

    iget-object v11, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v11}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    const-string/jumbo v10, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v11

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebView$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebView$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4

    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    move v0, v1

    if-lez v1, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    return v1

    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4

    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    move v0, v1

    if-lez v1, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    return v1

    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 4

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/WebView;->nativeScrollLayer(III)Z

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method private sendMotionUp(IIIII)V
    .locals 3

    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    iget-object v1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {p0, p4, p5, v1, v2}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMoveMouseIfLatest(ZZ)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x88

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    or-int v4, p1, p2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-ne p2, v3, :cond_4

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v4, :cond_4

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    goto :goto_1

    :cond_3
    const/16 v4, 0x1f4

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    if-eq v4, v0, :cond_5

    if-gez p1, :cond_6

    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v4, v1, :cond_0

    if-ltz p2, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method public static setDefaultTextWidth(I)V
    .locals 0

    sput p0, Landroid/webkit/WebView;->DEFAULT_TEXT_WIDTH:I

    return-void
.end method

.method private setFindIsUp(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method public static setHostFullScreenMode(Z)V
    .locals 0

    sput-boolean p0, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    return-void
.end method

.method public static setTabEffectType_Transition(I)V
    .locals 0

    invoke-static {p0}, Landroid/webkit/ZoomManager;->setTabEffectType_Transition(I)V

    return-void
.end method

.method private setTouchHighlightRects(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip the huge selection rect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private setUpSelect(ZII)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->setUpSelect()V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    if-eqz p1, :cond_4

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    :cond_4
    new-instance v3, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v3}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v3, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    :goto_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    iget v1, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iget v3, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    iget v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_6

    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    :cond_6
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_7

    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    :cond_7
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    goto/16 :goto_1

    :cond_8
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v4

    if-le v3, v4, :cond_9

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_2

    :cond_9
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_2
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5

    const-class v4, Landroid/webkit/WebView;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    monitor-exit v4

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/webkit/WebView$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebView$PackageListener;-><init>(Landroid/webkit/WebView$1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/webkit/WebView$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5

    const-class v3, Landroid/webkit/WebView;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebView;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/webkit/WebView$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebView$ProxyReceiver;-><init>(Landroid/webkit/WebView$1;)V

    sput-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private shouldForwardTouchEvent()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingBegin()V

    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    :cond_2
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 4

    float-to-int v2, p1

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    float-to-int v2, p2

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    iget v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    :cond_0
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchX:I

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchY:I

    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTouch()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    :cond_3
    return-void
.end method

.method private updateSelection()V
    .locals 8

    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x8a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v0, v3

    sub-int v5, v1, v3

    add-int v6, v0, v3

    add-int v7, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    goto :goto_0
.end method

.method private updateSelectionColors()V
    .locals 14

    const v13, 0x3be56042

    iget-object v7, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/webkit/WebViewThemeable;->getHighlightColor(Landroid/content/Context;)I

    move-result v10

    const v0, 0xffffff

    and-int/2addr v0, v10

    const/high16 v11, -0x8000

    add-int v5, v0, v11

    sput v5, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-static {v5}, Landroid/graphics/Color;->hue(I)F

    move-result v8

    invoke-static {v5}, Landroid/graphics/Color;->saturation(I)F

    move-result v9

    invoke-static {v5}, Landroid/graphics/Color;->brightness(I)F

    move-result v6

    const v0, 0x3c449ba6

    add-float/2addr v0, v8

    const v11, 0x3d48b439

    add-float/2addr v11, v9

    const v12, 0x3dd91687

    sub-float v12, v6, v12

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v1

    const v0, 0x3b03126f

    add-float/2addr v0, v8

    add-float v11, v9, v13

    const v12, 0x3cc49ba6

    sub-float v12, v6, v12

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v2

    const v0, 0x3bc49ba6

    add-float/2addr v0, v8

    add-float v11, v9, v13

    const v12, 0x3dc8b439

    add-float/2addr v12, v6

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v3

    const v0, 0x3b449ba6

    sub-float v0, v8, v0

    const v11, 0x3d4ccccd

    sub-float v11, v9, v11

    const v12, 0x3e189375

    add-float/2addr v12, v6

    invoke-static {v0, v11, v12}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->nativeSetSelectionColors(IIIII)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v11, 0x20a

    invoke-virtual {v0, v11}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 5

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v3, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v4, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v0, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {p0, p1, v1, v0}, Landroid/webkit/WebView;->updateTextAndSelection(III)V

    goto :goto_0
.end method

.method private updateWebTextViewPosition()V
    .locals 8

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    invoke-static {v0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->revealSelection()V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    return-void
.end method

.method private useCustomizedDefaultScale()Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mBrowserCustomizedDefaultScale:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    :goto_0
    return v1

    :cond_1
    const-string v2, "com.htc.android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Landroid/webkit/WebView;->mHtcCustomizedDefaultScale:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private viewInvalidate()V
    .locals 0

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    return-void
.end method

.method private viewToContentDimension(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private viewToContentXf(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private viewToContentYf(I)F
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method AbortScrollerAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public AnimationZoomOutDraw(Landroid/graphics/Canvas;F)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    const-string/jumbo v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v17, v20, v21

    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v18, v20, v21

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v17, v17, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    mul-float v18, v18, v20

    :cond_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    neg-int v10, v0

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v15, v10, v20

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    add-int v4, v19, v20

    sub-int v20, v15, v10

    if-lez v20, :cond_0

    sub-int v20, v4, v19

    if-lez v20, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v16

    const/high16 v20, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->getValues([F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1, v15, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v20, :cond_4

    const/4 v11, 0x0

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v20, :cond_3

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface/range {v20 .. v20}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    if-eqz v20, :cond_3

    sget-object v20, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface/range {v20 .. v20}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    :goto_2
    int-to-float v0, v10

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move/from16 v21, v0

    sub-int v21, v12, v21

    mul-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, p2

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v21, v21, v22

    add-float v8, v20, v21

    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v20, v20, v8

    const/high16 v21, 0x3f80

    sub-float v21, v21, p2

    const/high16 v22, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    div-float v21, v21, v22

    mul-float v9, v20, v21

    int-to-float v0, v15

    move/from16 v20, v0

    sub-float v7, v20, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    new-instance v14, Landroid/graphics/Rect;

    float-to-int v0, v7

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v14, v0, v1, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v11

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v20, -0x100

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v17, v20, v21

    const/high16 v20, 0x3f80

    sub-float v20, p2, v20

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    sget v21, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v18, v20, v21

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    goto/16 :goto_2

    :catch_0
    move-exception v20

    goto :goto_3
.end method

.method public EndAnimationZoomOut()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const v0, 0x3f181062

    iput v0, p0, Landroid/webkit/WebView;->mfTabRatio:F

    iput-object v3, p0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    iput-boolean v2, p0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v0, v0, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onResetTabEffect(Landroid/webkit/WebView;)V

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mDefaultZoomInDuration:I

    iput v0, p0, Landroid/webkit/WebView;->mZoomInDuration:I

    iget-object v0, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    :cond_1
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput-object v3, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method public GetOwnerActivityContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public HideOutofScreenView()V
    .locals 0

    return-void
.end method

.method public InitTabEffectPivot()V
    .locals 11

    const v10, 0x3eef1aa0

    const v9, 0x3eeb020c

    const/16 v8, 0x1e0

    const v7, 0x3efae148

    const v6, 0x3eee147b

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x95

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x96

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x97

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x88

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x89

    if-eq v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x50

    if-ne v3, v4, :cond_3

    :cond_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x4060

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    const v3, 0x3ef851ec

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f25a1cb

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f449ba6

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f2a3d71

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4c8b44

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto :goto_0

    :cond_3
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x8a

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9b

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9c

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9d

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x94

    if-eq v3, v4, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v3, :cond_4

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    :cond_4
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f2e5604

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    const v3, 0x3ef020c5

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4d4fdf

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto :goto_0

    :cond_5
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x62

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x63

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x41

    if-eq v3, v4, :cond_6

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x42

    if-ne v3, v4, :cond_7

    :cond_6
    const v3, 0x3f0353f8

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f33b646

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    const v3, 0x3efbe76d

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4fdf3b

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_7
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-ne v3, v4, :cond_8

    const v3, 0x3ef5c28f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f51eb85

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_8
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_9

    sput v10, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f24dd2f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v9, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f424dd3

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitTabEffectPivot] >> nScreenWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitTabEffectPivot] >> nScreenHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_a

    const/16 v3, 0x500

    if-eq v1, v3, :cond_b

    :cond_a
    const/16 v3, 0x500

    if-ne v2, v3, :cond_c

    const/16 v3, 0x2d0

    if-ne v1, v3, :cond_c

    :cond_b
    sput v10, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f24dd2f

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v9, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f424dd3

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x21c

    if-ne v2, v3, :cond_d

    const/16 v3, 0x3c0

    if-eq v1, v3, :cond_e

    :cond_d
    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_10

    const/16 v3, 0x21c

    if-ne v1, v3, :cond_10

    :cond_e
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x4060

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_f

    const v3, 0x3ef851ec

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f25a1cb

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f449ba6

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_f
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f2a3d71

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput v6, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4c8b44

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_10
    if-ne v2, v8, :cond_11

    const/16 v3, 0x320

    if-eq v1, v3, :cond_12

    :cond_11
    const/16 v3, 0x320

    if-ne v2, v3, :cond_13

    if-ne v1, v8, :cond_13

    :cond_12
    sput v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f2e5604

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    const v3, 0x3ef020c5

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4d4fdf

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x140

    if-ne v2, v3, :cond_14

    if-eq v1, v8, :cond_15

    :cond_14
    if-ne v2, v8, :cond_1

    const/16 v3, 0x140

    if-ne v1, v3, :cond_1

    :cond_15
    const v3, 0x3f0353f8

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    const v3, 0x3f33b646

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    const v3, 0x3efbe76d

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    const v3, 0x3f4fdf3b

    sput v3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    goto/16 :goto_0
.end method

.method public InitTabEffectPivot(FFFF)V
    .locals 0

    sput p1, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    sput p2, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    sput p3, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    sput p4, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    return-void
.end method

.method public IsHeavyWebSite()Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x7

    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "yahoo.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "mail.yahoo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    const-string/jumbo v5, "youtube.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "nba.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "msn.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "bbc.co.uk"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "cnn.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "espn.go.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "engadget.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "wired.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "sina.com.cn"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "mobile01.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "nytimes.com"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public IsWebSiteSupportTextReflow()Z
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x7

    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "northstream.se"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public IspauseTextReflow()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    return v0
.end method

.method public RecoveryDefaultZoomLowerBound()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->RecoveryDefaultZoomLowerBound()V

    return-void
.end method

.method public RecoveryDefaultZoomUpperBound()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->RecoveryDefaultZoomUpperBound()V

    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/webkit/WebView;->ownerActivityContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public StartAnimationZoomOut(ZF)V
    .locals 17

    sget-boolean v2, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->clearTextEntry()V

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->pauseTimers()V

    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v2, v2, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onResetTabEffect(Landroid/webkit/WebView;)V

    :cond_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mbNeedCallBack:Z

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mOriginalScale:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mOriginalScale:F

    sub-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mIntervalScale:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Landroid/webkit/WebView;->mStartTime:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    sget-boolean v2, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    add-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v2, v7

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    add-int v11, v2, v7

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    :cond_3
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-nez v2, :cond_4

    iget v2, v12, Landroid/graphics/Rect;->top:I

    if-le v11, v2, :cond_8

    const/4 v4, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnGetDefaultDisplayInfo()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    add-int/lit8 v5, v2, -0x3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->fnGetDefaultDisplayInfo()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    sub-int v6, v2, v7

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/webkit/WebView;->fnCreateTabSnapshot(IIIIFI)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimationZoomOutBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebView;->mAnimZoomOutBitmap_modify:Landroid/graphics/Bitmap;

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v7, "window"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v2, 0x3f181062

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v13, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    :goto_3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft:I

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mfTabRatio:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebView;->m_nVisibleTitleHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_X:F

    mul-float v13, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_P_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    :goto_4
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinLeft_modify:I

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->m_nCurrentTabMinTop_modify:I

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v7, Landroid/webkit/WebView$12;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/webkit/WebView$12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebView;->mTabEffectTimeout:Ljava/lang/Runnable;

    const-wide/16 v15, 0x4e20

    move-wide v0, v15

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x105000a

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_1

    :cond_8
    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v11

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v13, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_X:F

    mul-float v13, v2, v7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mfTabRatio:F

    const/high16 v7, 0x3f80

    sub-float/2addr v2, v7

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v2, v7

    sget v7, Landroid/webkit/WebView;->TAB_EFFECT_PIVOT_L_Y:F

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->m_nHostStatusbarHeight:I

    int-to-float v7, v7

    add-float v14, v2, v7

    goto/16 :goto_4
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->updateDefaultZoomDensity(F)V

    return-void
.end method

.method autoFillForm(I)V
    .locals 3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void
.end method

.method public canGoBack()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v3, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    move v8, v15

    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    move/from16 v9, v16

    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void
.end method

.method checkIsHeavyWebSite()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->IsHeavyWebSite()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearCache(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearView()V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    iput v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public clearViewState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method public clearWebCoreMemoryCache()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    if-gez v2, :cond_1

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v2, v0, :cond_0

    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    const/16 v1, 0x9

    const/4 v9, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v7, 0x0

    :cond_0
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_5

    iput v10, p0, Landroid/webkit/WebView;->mScrollX:I

    iput v11, p0, Landroid/webkit/WebView;->mScrollY:I

    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v3, v0, :cond_4

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v4, v0, :cond_1

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    goto :goto_1

    :cond_6
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    if-gez v2, :cond_1

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v2, v0, :cond_0

    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    const v4, 0x1040370

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return v1
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    return-object v1
.end method

.method cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;
    .locals 2

    new-instance v0, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    return-object v0
.end method

.method public debugDump()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method deleteSelection(II)V
    .locals 5

    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->destroyImpl()V

    return-void
.end method

.method public disableMultiTouch()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->disableMultiTouch()V

    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    iget-object v1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTop(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    return-void
.end method

.method public dumpDisplayTree()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public emulateShiftHeld()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, v0, v0, v0}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    return-void
.end method

.method public enableHTCZoomMethod(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->enableHTCZoomMethod(Z)V

    return-void
.end method

.method public enableMultiTouch()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->enableMultiTouch()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    :cond_0
    return-void
.end method

.method public enableMultiTouchZoomOutToTabMode(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->enableMultiTouchZoomOutToTabMode(Z)V

    return-void
.end method

.method protected enableQuickSelection(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->initQuickSelect()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSmartZoom()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->enableSmartZoom()V

    return-void
.end method

.method public enableTBS(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bEnableTBS:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bCustomizeEnableTBS:Z

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bHasNewWebView:Z

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeEnableTBS(Z)V

    :cond_0
    return-void
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/WebView$8;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    goto :goto_0
.end method

.method findIndex()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11

    const/4 v5, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method public fnCreateTabSnapshot(IIIIFI)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p5, v2

    if-lez v2, :cond_0

    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    invoke-interface {v2}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onGetCurrentTabCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    add-int v2, p4, p6

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    if-gtz p6, :cond_5

    neg-int v2, p1

    int-to-float v2, v2

    neg-int v3, p2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-virtual {v1, p5, p5}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->drawPage(Landroid/graphics/Canvas;)V

    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/webkit/WebView;->mTabEffectCanvasBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    neg-int v2, p1

    int-to-float v2, v2

    int-to-float v3, p6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method fnEnableGifAnimation(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1}, Landroid/webkit/HTCWebCore;->nativeEnableGifAnimation(Z)V

    :cond_0
    return-void
.end method

.method public fnGetDefaultDisplayInfo()Landroid/view/Display;
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public fnGetMaxZoomScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getMaxZoomScale()F

    move-result v0

    return v0
.end method

.method public fnGetMinZoomScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getMinZoomScale()F

    move-result v0

    return v0
.end method

.method public fnPausePlayGifAnimation()V
    .locals 5

    const/16 v4, 0x113

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const-string/jumbo v2, "sqaap1.htc.com.tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v4, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method public fnResumePlayGifAnimation()V
    .locals 3

    const/16 v2, 0x113

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method public fnScrollingBegin()V
    .locals 6

    const/16 v5, 0x136

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/32 v1, 0xa00000

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseFPDoPlay()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnPausePlayGifAnimation()V

    iput-boolean v4, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v3, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v3, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    :cond_3
    return-void
.end method

.method public fnScrollingEnd()V
    .locals 5

    const/16 v2, 0x137

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->resetVelocity()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bIsScrollingPause:Z

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetSkiaFontCacheSize(J)V

    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->fnIsHtcApplication()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x100

    const/4 v2, 0x0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    :cond_3
    return-void
.end method

.method public fnresumeUpdate()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method public freeCacheBitmap()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freeMemory()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method protected getAnchorDrawableHeight()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    return v0
.end method

.method getBaseLayer()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBaseLayer()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheDrawBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheDrawBitmapWithFlashPlugin()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v1, p0, Landroid/webkit/WebView;->mCacheDrawX:F

    neg-float v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mCacheDrawY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, p0, Landroid/webkit/WebView;->mCacheDrawScale:F

    iget v2, p0, Landroid/webkit/WebView;->mCacheDrawScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getCurrentTextReflowWidth()I
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method getDefaultZoomScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFoundIndex()I
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->findIndex()I

    move-result v0

    return v0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsCacheDrawBitmap()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    return v0
.end method

.method getIsDrawCursorRing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    return v0
.end method

.method public getIsLoading()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBackgroundColor()I

    move-result v0

    return v0
.end method

.method getPluginBounds(II)Landroid/graphics/Rect;
    .locals 2

    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitIsPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getQuickSearch()Landroid/webkit/HTCQuickSearch;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    return-object v0
.end method

.method getReadingLevelScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    return v0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 3

    iget-object v1, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    monitor-enter v1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_1
    :try_start_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method getSelection()Ljava/lang/String;
    .locals 2

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTextHandleScale()F
    .locals 2

    iget-object v1, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float v1, v0, v1

    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public gethTCWebCoreInst()Landroid/webkit/HTCWebCore;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    return-void
.end method

.method handleMultiTouchInWebView(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v8, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v4

    if-eqz v4, :cond_0

    iput v8, p0, Landroid/webkit/WebView;->mTouchMode:I

    iget-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    const/4 v0, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v4, v5, :cond_8

    :cond_4
    move-object v4, p0

    check-cast v4, Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->onEndSelect()V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, p1, v4, v5, v6}, Landroid/webkit/WebView;->handleTouchEventEditable(Landroid/view/MotionEvent;III)Z

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x6

    if-ne v0, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v7, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    goto :goto_1

    :cond_7
    if-ne v0, v7, :cond_3

    cmpg-float v4, v2, v6

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v6

    if-gez v4, :cond_3

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v4, v5, :cond_5

    move-object v4, p0

    check-cast v4, Landroid/webkit/EditableWebView;

    invoke-virtual {v4}, Landroid/webkit/EditableWebView;->pauseSelectionUI()V

    goto :goto_2

    :cond_9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, p1, v0, v4, v5}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    goto/16 :goto_0
.end method

.method protected hideSingleTapQuickActions()V
    .locals 0

    return-void
.end method

.method incrementTextGeneration()V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return-void
.end method

.method protected initQuickSelect()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/HTCQuickSearch;

    invoke-direct {v0, p0}, Landroid/webkit/HTCQuickSearch;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mHTCQuickSearch:Landroid/webkit/HTCQuickSearch;

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v0, :cond_1

    new-instance v0, Landroid/webkit/WebView$QuickSelectWV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$QuickSelectWV;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->init()V

    return-void
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnScrollingEnd()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isCacheDrawPlugin()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method protected isEditable()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method public isGoogleUrl()Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "http://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x7

    :goto_1
    const-string v5, "/"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "google"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "mail.yahoo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isInBrowserApp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public isPureZoomMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    return v0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isStopDrawing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    return v0
.end method

.method public isWebCoreBlocked()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40e5f90000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isWebCoreBusy()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->checkBlock()D

    move-result-wide v1

    const-wide v3, 0x40c3880000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWebCoreReady()Z
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->deserializeViewState(Ljava/io/InputStream;Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "webview"

    const-string v2, "Failed to loadViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method moveSelection(FF)V
    .locals 12

    const/16 v8, 0x10

    const/16 v7, -0x10

    const/4 v9, 0x0

    iget v10, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v10, v10

    add-float/2addr v10, p2

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v10, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int v1, v6, v10

    iget v10, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int v2, v0, v10

    iget v10, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v10, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v11, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ge v10, v11, :cond_1

    move v3, v7

    :goto_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v11, p0, Landroid/webkit/WebView;->mScrollY:I

    if-ge v10, v11, :cond_3

    move v4, v7

    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v9}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    :cond_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v11, v1, -0x10

    if-le v10, v11, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v2, -0x10

    if-le v7, v10, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v9

    goto :goto_2
.end method

.method myScrollTo(IIZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    return-void
.end method

.method myonScrollChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method native nativeClearCursor()V
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsAutoComplete()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateIsSpellcheck()Z
.end method

.method native nativeFocusCandidateLineHeight()I
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusCandidateTextSize()F
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeGetBlockLeftEdge(IIF)I
.end method

.method native nativeGetFirstMatch()Landroid/graphics/Rect;
.end method

.method native nativeGetHitTestNodeSafely(II)I
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public nativeGetRssFeed()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetRssFeed()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method native nativeGetSelectionEnd(Landroid/graphics/Rect;)V
.end method

.method public nativeHasRssFeed()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeHasRssFeed()Z

    move-result v0

    goto :goto_0
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method native nativeResetSelection()V
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method native nativeSmartHorizontalScroll(III)Z
.end method

.method native nativeStartSelection(II)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-nez v1, :cond_1

    new-instance v1, Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerGlobalLayoutListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-nez v1, :cond_2

    new-instance v1, Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerScrollChangedListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->addAccessibilityApisToJavaScript()V

    iget-object v1, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v1}, Landroid/webkit/WebView$TouchEventQueue;->reset()V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkit/WebView;->mOrientation:I

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->removeAccessibilityApisFromJavaScript()V

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v3, v6

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    if-nez v3, :cond_3

    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v21

    check-cast v21, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v22

    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v30

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    sget-boolean v3, Landroid/webkit/WebView;->gbIsAnimationZoomOut:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebView;->mStartTime:J

    sub-long v33, v6, v8

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mZoomInDuration:I

    int-to-long v6, v3

    cmp-long v3, v33, v6

    if-gtz v3, :cond_9

    move-wide/from16 v0, v33

    long-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mZoomInDuration:I

    int-to-float v6, v6

    div-float v28, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mOriginalScale:F

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mIntervalScale:F

    mul-float v6, v6, v28

    add-float v32, v3, v6

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const/4 v6, 0x1

    if-eq v3, v6, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mfTabRatio:F

    cmpg-float v3, v32, v3

    if-gez v3, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mfTabRatio:F

    move/from16 v32, v0

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->AnimationZoomOutDraw(Landroid/graphics/Canvas;F)V

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    sget-object v3, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/webkit/WebView;->mbNeedCallBack:Z

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v6}, Landroid/webkit/WebView$OnWebViewTabEffectListener;->onMultiTouchBouncingMinScale(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    goto :goto_1

    :cond_a
    sget-object v3, Landroid/webkit/WebView;->mTabEffectListener:Landroid/webkit/WebView$OnWebViewTabEffectListener;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mbIsAnimationZoomOutFinish:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->m_bNeedInvokeTabDialog:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsTouchOnScreen:Z

    if-nez v3, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1a

    :cond_e
    const/4 v14, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-nez v14, :cond_12

    if-nez v23, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTitleBarHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getHeight()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v27

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_10

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1b

    const/4 v15, 0x1

    :goto_4
    if-eqz v15, :cond_1c

    move-object/from16 v16, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    move-object/from16 p1, v0

    :cond_11
    :goto_5
    if-eqz v16, :cond_12

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->getValues([F)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x5

    if-eq v3, v6, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_1e

    :cond_13
    const/16 v18, 0x1

    :goto_6
    if-nez v18, :cond_1f

    const/16 v19, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;Z)V

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_14

    sget-boolean v3, Landroid/webkit/WebView;->m_bHostFullScreenMode:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_20

    const/16 v25, 0x0

    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v3

    add-int v3, v3, v25

    if-lez v3, :cond_15

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mScrollX:I

    add-int/lit16 v3, v3, -0xc8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v6

    add-int v6, v6, v25

    add-int/lit16 v6, v6, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v6

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    add-int/lit16 v7, v7, 0xc8

    const/4 v8, 0x0

    invoke-direct {v13, v3, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v3, v3, Landroid/webkit/ZoomManager;->m_bEnableMTBouncingToTabMode:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    const/4 v6, 0x1

    if-ne v3, v6, :cond_22

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0x10

    if-ne v3, v6, :cond_21

    const/4 v3, -0x1

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_15
    if-nez v14, :cond_16

    if-nez v23, :cond_16

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_23

    move-object/from16 p1, v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    const/4 v6, 0x2

    aget v3, v3, v6

    neg-float v3, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mMatrixValues:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    neg-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_16
    :goto_a
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_17
    if-eqz v18, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    sub-long v4, v6, v8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v28

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v28

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v28

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    or-int/2addr v3, v6

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    if-nez v3, :cond_19

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    const/high16 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_19
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightX:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int/2addr v3, v6

    int-to-float v9, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchHighlightY:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mTouchCrossHairColor:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception v20

    const-string/jumbo v3, "webview"

    const-string v6, "Out of memory, abort createing cache bitmap"

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :catch_1
    move-exception v20

    const-string/jumbo v3, "webview"

    const-string/jumbo v6, "null pointer"

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x105000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    goto/16 :goto_8

    :cond_21
    const/high16 v3, -0x100

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    :cond_22
    const v3, -0x777778

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_9

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v3, :cond_24

    if-nez v14, :cond_24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    :cond_24
    const/4 v15, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_a

    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_26

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    sget v6, Landroid/webkit/WebView;->HIGHLIGHT_COLOR:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_26
    new-instance v24, Landroid/graphics/RegionIterator;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_b
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr p4, v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    cmpl-float v4, v1, v5

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    invoke-direct {p0, v0, v2, v6, v6}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x87

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v4, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/webkit/WebView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkit/WebView;->mPaddingRight:I

    sub-int v1, v4, v5

    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/webkit/WebView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkit/WebView;->mPaddingBottom:I

    sub-int v0, v4, v5

    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v11, -0x1

    const/16 v6, 0x67

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    iput-boolean v5, p0, Landroid/webkit/WebView;->willSelectWord:Z

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    move v4, v5

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iput-boolean v5, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    :cond_7
    :goto_1
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    :cond_a
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    :cond_b
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_0

    :cond_c
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x13

    if-lt p1, v0, :cond_19

    const/16 v0, 0x16

    if-gt p1, v0, :cond_19

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_12

    packed-switch p1, :pswitch_data_0

    :cond_12
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x15

    if-ne p1, v0, :cond_13

    move v10, v11

    :goto_2
    const/16 v0, 0x13

    if-ne p1, v0, :cond_15

    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    mul-int v0, v10, v8

    int-to-float v0, v0

    mul-int v1, v11, v8

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v5, v0, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-direct {p0, v0, v1, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x16

    if-ne p1, v0, :cond_14

    move v10, v4

    goto :goto_2

    :cond_14
    move v10, v5

    goto :goto_2

    :cond_15
    const/16 v0, 0x14

    if-ne p1, v0, :cond_16

    move v11, v4

    goto :goto_3

    :cond_16
    move v11, v5

    goto :goto_3

    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_18
    move v4, v5

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1d

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v9, v4

    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    if-eqz v9, :cond_0

    :cond_1b
    if-nez v9, :cond_1d

    move v4, v5

    goto/16 :goto_0

    :cond_1c
    move v9, v5

    goto :goto_4

    :cond_1d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_1e

    packed-switch p1, :pswitch_data_1

    :cond_1e
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x79

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    :pswitch_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1f

    move v5, v4

    :cond_1f
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    :pswitch_6
    const/16 v0, 0xe

    if-ne p1, v0, :cond_20

    move v5, v4

    :cond_20
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    :pswitch_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    goto/16 :goto_0

    :cond_21
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    :cond_22
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_23

    :cond_23
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v6, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11

    const/16 v2, 0x68

    const/4 v4, 0x0

    const/4 v10, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    const-string/jumbo v0, "tel:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v10

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    :cond_4
    :goto_1
    const/16 v0, 0x13

    if-lt p1, v0, :cond_8

    const/16 v0, 0x16

    if-gt p1, v0, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    move v4, v10

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v10

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->isEnterActionKey(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v4, v10

    goto/16 :goto_0

    :cond_9
    iput-boolean v10, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v6

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->playSoundEffect(I)V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_b
    move v4, v10

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeShowCursorTimed()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v4, v10

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    iget v2, v6, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    move v4, v10

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_f
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12

    const/high16 v11, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v4, v3

    move v5, v7

    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    move v4, v0

    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    if-le v4, v3, :cond_0

    move v4, v3

    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    or-int/2addr v4, v11

    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    :cond_1
    if-nez v6, :cond_3

    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    move v5, v1

    :goto_1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    :cond_3
    if-ge v5, v1, :cond_4

    or-int/2addr v5, v11

    :cond_4
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7

    const/4 v2, 0x1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    if-nez v5, :cond_5

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    :cond_2
    :goto_1
    if-ltz p2, :cond_3

    if-le p2, v6, :cond_4

    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    :cond_4
    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    iget v1, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    :cond_5
    if-ltz p1, :cond_6

    if-le p1, v5, :cond_2

    :cond_6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_1
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInLoading:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mScrollY:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v1, 0x1

    const/16 v2, 0x1f4

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->injectAccessibilityForUrl(Ljava/lang/String;)V

    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInLoading:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mIsPaused:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelSelectDialog()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeFPDoPlay()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->fnResumePlayGifAnimation()V

    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mIsPaused:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p4, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v3, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040320

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036b

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036c

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104036e

    new-instance v5, Landroid/webkit/WebView$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    iget-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    :cond_0
    return-void
.end method

.method protected onSelectTextEnd()V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v1, 0x1

    iget v2, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    check-cast v1, Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectWV;->pauseSelection()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    sget v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v0, v1, :cond_1

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v7, 0xa

    const/4 v5, 0x1

    iget v6, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v5, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v0, v6, v3

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v1, v6, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v7, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8a

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget v6, p0, Landroid/webkit/WebView;->howToSelection:I

    if-ne v5, v6, :cond_5

    iget-object v6, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v6}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    check-cast v2, Landroid/webkit/WebView$QuickSelectWV;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_6

    iget-object v6, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v6, v6, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v6}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v6

    sget-object v7, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v6, v7, :cond_1

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectWV;->pauseSelection()V

    iget-object v6, v2, Landroid/webkit/WebView$QuickSelectWV;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v7, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v6, v7}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_7

    iget v6, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v6}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Landroid/webkit/WebView;->passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_5

    iget-object v6, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelection()V

    goto :goto_1

    :cond_7
    iget-object v6, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v6, p1}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v4, :cond_1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v4, v0, v4

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_9

    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_8

    iget-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    :cond_7
    iput-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    :cond_8
    move v2, v3

    goto :goto_0

    :cond_9
    iget-boolean v4, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v2, v3

    goto :goto_0

    :cond_c
    iget-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v4, :cond_1

    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    iput v3, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    :cond_d
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    iget-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    return-void

    :cond_1
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 11

    sget v9, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    sget v9, Landroid/webkit/WebView;->mOverscrollMode:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    invoke-super/range {p0 .. p9}, Landroid/widget/AbsoluteLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v9

    :goto_0
    return v9

    :cond_0
    add-int v5, p3, p1

    add-int v6, p4, p2

    if-gez v6, :cond_1

    sget-boolean v9, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    if-eqz v9, :cond_2

    :cond_1
    move/from16 v0, p6

    if-le v6, v0, :cond_7

    sget-boolean v9, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    if-nez v9, :cond_7

    :cond_2
    const/16 p8, 0x0

    :cond_3
    :goto_1
    const/16 p7, 0x0

    move/from16 v0, p7

    neg-int v4, v0

    add-int v7, p7, p5

    move/from16 v0, p8

    neg-int v8, v0

    add-int v1, p8, p6

    const/4 v2, 0x0

    if-le v5, v7, :cond_8

    move v5, v7

    const/4 v2, 0x1

    :cond_4
    :goto_2
    const/4 v3, 0x0

    if-le v6, v1, :cond_9

    move v6, v1

    const/4 v3, 0x1

    :cond_5
    :goto_3
    invoke-virtual {p0, v5, v6, v2, v3}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    if-nez v2, :cond_6

    if-eqz v3, :cond_a

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    if-lez v6, :cond_3

    move/from16 v0, p6

    if-ge v6, v0, :cond_3

    const/4 v9, 0x0

    sput-boolean v9, Landroid/webkit/WebView;->mBottomOverScrollEnabled:Z

    sput-boolean v9, Landroid/webkit/WebView;->mTopOverScrollEnabled:Z

    goto :goto_1

    :cond_8
    if-ge v5, v4, :cond_4

    move v5, v4

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    if-ge v6, v8, :cond_5

    move v6, v8

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    if-eqz p1, :cond_1

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    add-int/lit8 v1, v0, -0x18

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageLayerChangedCallBack(Z)V
    .locals 3

    const/16 v2, 0x132

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeIsSwapToChangedLayer()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Landroid/webkit/WebView;->mPendingScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mPendingScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected pageSwapCallback(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_1
    return-void
.end method

.method public pageUp(Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    if-eqz p1, :cond_1

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6

    const/16 v5, 0x80

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pauseAll()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    :cond_2
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->removeMessages()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0
.end method

.method public pauseFPDoPlay()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public pauseTextReflow(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    if-lez p1, :cond_2

    iput p1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    if-eq v0, v1, :cond_0

    iput v2, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public performLongClick()Z
    .locals 15

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v0, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->ensureLayout()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v6, v14, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v7, v14, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v10}, Landroid/webkit/WebTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    move v4, v0

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/webkit/WebView;->triggerByTouch:Z

    if-nez v1, :cond_9

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    move v4, v0

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-static {v8, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move v4, v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    move v11, v0

    :goto_2
    if-nez v11, :cond_c

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_c

    iput-boolean v0, p0, Landroid/webkit/WebView;->willSelectWord:Z

    move v4, v0

    goto/16 :goto_0

    :cond_b
    move v11, v4

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectText()Z

    move-result v13

    if-eqz v13, :cond_d

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_e

    iput-boolean v0, p0, Landroid/webkit/WebView;->needVibrate:Z

    :cond_d
    :goto_3
    move v4, v13

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto :goto_3
.end method

.method pinLocX(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3

    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->postInvalidate()V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 7

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v4, :cond_4

    new-instance v4, Landroid/webkit/WebTextView;

    iget-object v5, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    invoke-virtual {v6}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v6

    invoke-direct {v4, v5, p0, v6}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;I)V

    iput-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v4, 0x0

    iput v4, p0, Landroid/webkit/WebView;->mTextGeneration:I

    :cond_4
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->updateTextSize()V

    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v2

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4, v2}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextView;->setType(I)V

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebTextView;->setGravityForRtl(Z)V

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4, v3}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->clearComposingText()V

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto :goto_0
.end method

.method public recoverBackground()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method protected registerPageSwapCallback()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeRegisterPageSwapCallback()V

    return-void
.end method

.method public reload()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public removeBackground()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mRemoveBackground:Z

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3

    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v12}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->mScrollX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/WebView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-nez v12, :cond_2

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    if-nez v12, :cond_2

    const-string v12, "JuLOG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WebView.requestChildRectangleOnScreen nativeSubtractLayers returns a empty rect content="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_2
    iget v12, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    sub-int v3, v5, v8

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v12, v5, :cond_6

    div-int/lit8 v4, v3, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/lit8 v13, v4, 0x2

    if-le v12, v13, :cond_5

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    :cond_3
    :goto_1
    iget v12, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    iget v12, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    sub-int v11, v7, v6

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    if-le v12, v7, :cond_8

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-le v12, v6, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-le v12, v11, :cond_7

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    add-int/2addr v9, v12

    :cond_4
    :goto_2
    or-int v12, v10, v9

    if-eqz v12, :cond_a

    if-nez p3, :cond_9

    const/4 v12, 0x1

    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v12

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    add-int v13, v8, v4

    sub-int v10, v12, v13

    goto :goto_1

    :cond_6
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-ge v12, v8, :cond_3

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    goto :goto_1

    :cond_7
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v7

    add-int/2addr v9, v12

    goto :goto_2

    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ge v12, v6, :cond_4

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/Rect;->left:I

    sub-int v12, v6, v12

    sub-int/2addr v9, v12

    goto :goto_2

    :cond_9
    const/4 v12, 0x0

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v1, 0x15

    :goto_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x13

    goto :goto_1

    :sswitch_2
    const/16 v1, 0x14

    goto :goto_1

    :sswitch_3
    const/16 v1, 0x16

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    neg-int v4, v3

    neg-int v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x89

    invoke-virtual {v4, v5, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput p2, v4, Landroid/os/Message;->arg1:I

    new-instance v0, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void
.end method

.method requestListBox([Ljava/lang/String;[II)V
    .locals 7

    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[I)V
    .locals 7

    iget-object v6, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[ILandroid/webkit/WebView$1;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetCacheDrawBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method resetHeavyWebSite()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsHeavyWebSite:Z

    return-void
.end method

.method resetRectForUpdateScroll()V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10

    const/4 v8, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v8, v6

    :goto_0
    return-object v8

    :cond_0
    const-string/jumbo v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    iget-object v9, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    const-string/jumbo v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    monitor-enter v5

    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    :cond_1
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_4

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_3

    monitor-exit v5

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    :cond_6
    move-object v8, v6

    goto/16 :goto_0
.end method

.method public resumeAll()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseAll:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto :goto_0
.end method

.method public resumeFPDoPlay()V
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public resumeTextReflow()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->m_bPauseTextReflowbyCurrentScale:Z

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->forceBreakWord(Z)V

    iput v1, p0, Landroid/webkit/WebView;->m_nTextWrapWidth_pauseTextReflow:I

    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method revealSelection()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10

    const/4 v7, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    if-nez p1, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    iget-boolean v8, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-eqz v8, :cond_1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->saveStateHtc(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    if-ltz v0, :cond_2

    if-ge v0, v6, :cond_2

    if-nez v6, :cond_3

    :cond_2
    move-object v5, v7

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_6

    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    if-nez v4, :cond_4

    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    if-nez v1, :cond_5

    move-object v5, v7

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_7

    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;)Z
    .locals 3

    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebView;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "webview"

    const-string v2, "Failed to saveViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method scrollFocusedTextInputX(F)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method scrollFocusedTextInputY(I)V
    .locals 4

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 3

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectableText()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectText()Z
    .locals 4

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, p2}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    move v0, v1

    goto :goto_0
.end method

.method selectionDone()V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelecting()Z

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/SelectActionModeCallback;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onSelectTextEnd()V

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/SelectActionModeCallback;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    iput v2, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    iput v2, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    iput-boolean v2, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    goto :goto_0
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 5

    const/16 v4, 0x6b

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x74

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method sendPluginDrawMsg()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method sendViewSizeZoom(Z)Z
    .locals 12

    const/16 v11, 0x69

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-boolean v7, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    sub-int v5, v7, v10

    int-to-float v7, v5

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v5

    int-to-float v10, v6

    div-float v2, v7, v10

    iget v7, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v4, v7, :cond_2

    iget-boolean v7, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v7, :cond_2

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v7, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v4, v7, :cond_3

    iget v7, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v3, v7, :cond_3

    if-nez p1, :cond_3

    iget v7, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    if-eq v0, v7, :cond_0

    :cond_3
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    iput v4, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v3, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    iput v2, v1, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    iput v0, v1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    int-to-float v7, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_1
    iput-boolean v7, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    invoke-static {}, Landroid/webkit/WebView;->isHtcZoomingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v7, v7, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/webkit/WebView;->mInLoading:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Landroid/webkit/WebView;->m_bIsBrowserApp:Z

    if-ne v8, v7, :cond_4

    iput-boolean v8, p0, Landroid/webkit/WebView;->mPausedTimerByZoom:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_4
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v7, v7, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iput v9, v7, Landroid/webkit/ZoomManager;->mFocusNodeScaleBegin:I

    :cond_5
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7, v11, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    iput v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v3, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    iput v0, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    move v9, v8

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_1
.end method

.method setActive(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void

    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x7

    iput v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method setBaseLayer(ILandroid/graphics/Region;ZZZ)V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0
.end method

.method public setBouncingBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public setCacheDrawBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-static {p1, v7, v7, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/webkit/WebView;->mDrawCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid/webkit/WebView;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-void
.end method

.method setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mContentHeight:I

    return-void
.end method

.method setContentWidth(I)V
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method setFocusControllerActive(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->setGLRectViewport()V

    return v0
.end method

.method setGLRectViewport()V
    .locals 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v4, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    sub-int v6, v1, v2

    iput v6, v4, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    :goto_0
    iget-object v4, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    iget-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v6, :cond_2

    :goto_2
    iget-object v6, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5, v6}, Landroid/webkit/WebView;->nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    return-void
.end method

.method public setIsCacheDrawBitmap(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->misCacheDrawBitmap:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-nez v0, :cond_0

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->setTextWrapScale(F)V

    :cond_0
    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bIsLoading:Z

    if-ne p1, v3, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v0, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-boolean v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput v2, v0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebView;->m_bNeedRestore:Z

    iput v2, p0, Landroid/webkit/WebView;->m_nRestoreScrollX:I

    iput v2, p0, Landroid/webkit/WebView;->m_nRestoreScrollY:I

    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/WebView;->m_fResotreActualScale:F

    goto :goto_0
.end method

.method setIsUserScroll(Z)V
    .locals 0

    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    return-void
.end method

.method setMobileProxy(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Landroid/net/ProxyProperties;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v2, "proxy"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-static {v0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v12, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v12, :cond_8

    const/4 v4, 0x1

    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v5, 0x1

    :goto_2
    iget v1, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getShowVisualIndicator()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    :cond_3
    iget-object v11, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    iget v7, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v0, v11, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v0, v1, :cond_a

    iget v0, v11, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, v10}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    iget-boolean v0, v12, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    :goto_4
    iget v9, v12, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v11, Landroid/graphics/Point;->y:I

    if-ge v0, v7, :cond_c

    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    iget v0, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    :goto_5
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V

    iget-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_b
    iget v8, v12, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto :goto_4

    :cond_c
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x132

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setCurrentWebView(Landroid/webkit/WebView;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_3

    :cond_0
    sput p1, Landroid/webkit/WebView;->mOverscrollMode:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne p1, v3, :cond_2

    const/high16 v2, 0x3f00

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    :goto_0
    const/4 p1, 0x2

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v2, :cond_1

    new-instance v2, Landroid/webkit/OverScrollGlow;

    invoke-direct {v2, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebView;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    :cond_1
    :goto_2
    return-void

    :cond_2
    const v2, 0x3e4ccccd

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    goto :goto_0

    :cond_3
    sput p1, Landroid/webkit/WebView;->mOverscrollMode:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_2
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 4

    const/16 v3, 0x64

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    if-ne v0, v2, :cond_0

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->setTextWrapScale(F)V

    :cond_0
    if-ne p1, v3, :cond_2

    iput-boolean v2, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->m_bIsLoadFinish:Z

    goto :goto_0
.end method

.method setProxyEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setPureZoomMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->mPureZoomMode:Z

    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bsetScaleWithoutCheck:Z

    iput-boolean p1, p0, Landroid/webkit/WebView;->m_bMailClientUsed:Z

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_0
    return-void
.end method

.method public setStopDrawing(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsStopDrawing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setTitleBarGravity(I)V
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    return-void
.end method

.method public setTitleShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0

    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 1

    mul-int v0, p1, p1

    iput v0, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method setWebSelectionType(I)V
    .locals 1

    iput p1, p0, Landroid/webkit/WebView;->selectionUIType:I

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->enableQuickSelection(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    iput-boolean p1, p0, Landroid/webkit/WebView;->mCustomFindMode:Z

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomLowerBound(F)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setZoomUpperBound(F)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Landroid/webkit/WebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    if-eqz p2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_4

    :cond_3
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mScrollX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    iget v4, p0, Landroid/webkit/WebView;->mScrollY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingClear()V

    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStart()V

    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->howToSelection:I

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method protected updateCachedTextfield(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    return-void
.end method

.method protected updateContentFromMessage(I)V
    .locals 0

    return-void
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1

    const/high16 v0, 0x4180

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    return-void
.end method

.method updateDrawingState()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    return-void
.end method

.method updatePositionRect()V
    .locals 4

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mPositionRectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectStart:Landroid/graphics/Rect;

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectEnd:Landroid/graphics/Rect;

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectBase:Landroid/graphics/Rect;

    const/16 v3, 0x62

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView;->mPositionRectExtend:Landroid/graphics/Rect;

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateScrollCoordinates(II)Z
    .locals 4

    iget v0, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v1, p0, Landroid/webkit/WebView;->mScrollY:I

    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    iput p2, p0, Landroid/webkit/WebView;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/webkit/WebView;->mScrollY:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mScrollX:I

    iget v3, p0, Landroid/webkit/WebView;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected updateTextAndSelection(III)V
    .locals 0

    return-void
.end method

.method updateWebTextViewPadding()V
    .locals 6

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public useMockDeviceOrientation()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method viewToContentX(I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentY(I)I
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
