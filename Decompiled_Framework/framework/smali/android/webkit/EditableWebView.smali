.class public Landroid/webkit/EditableWebView;
.super Landroid/webkit/WebView;
.source "EditableWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$SingleTapQuickActions;,
        Landroid/webkit/EditableWebView$OnScrollChangedListener;,
        Landroid/webkit/EditableWebView$OnOverScrollListener;,
        Landroid/webkit/EditableWebView$OnContentChangedListener;,
        Landroid/webkit/EditableWebView$EditableQuickActions;,
        Landroid/webkit/EditableWebView$ImageInfo;,
        Landroid/webkit/EditableWebView$AnchorTouchListener;,
        Landroid/webkit/EditableWebView$QuickSelectionED;,
        Landroid/webkit/EditableWebView$ShowSipResultReceiver;
    }
.end annotation


# static fields
.field public static final CUSTOM_CLIP_LABEL:Ljava/lang/String; = "HTC_MODIFIED_CLIPDATA="

.field private static final DEBUG:Z = false

.field public static DELAY_CURSOR_ANCHOR_DISAPPEAR:I = 0x0

.field private static final MSG_CAPTURE:I = 0xa

.field private static final MSG_END_CURSOR_MODE:I = 0x1

.field private static final MSG_HIDE_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x66

.field private static final MSG_PAUSE_SELECT_UI:I = 0x2ebb

.field private static final MSG_RESUME_SELECT_UI:I = 0x2ebc

.field private static final MSG_SHOW_SINGLETAP_QUICKACTIONS_DELAYED:I = 0x65

.field private static final MSG_TRIGGER_CONTENT_CHANGED:I = 0x64

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1


# instance fields
.field private final HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field private final SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

.field final TOLERANT_DISTANCE:I

.field captureAfterDraw:Z

.field captureMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

.field private isConfigurationChanged:Z

.field isNoteAP:Z

.field isPauseSelectUI:Z

.field mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

.field mClipboard:Landroid/content/ClipboardManager;

.field mDpadKeyPressed:Z

.field private mEditingNode:I

.field private mEditingText:Ljava/lang/String;

.field private mEndIndex:I

.field private mInBatchEditControllers:Z

.field private mInitialized:Z

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mLandscapeDensity:I

.field private mOldScreenOffset:[I

.field private mOldScrollX:I

.field private mOldScrollY:I

.field private mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field private mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

.field private mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

.field private mOverScrollThreshold:I

.field private mPenDownRect:Landroid/graphics/Rect;

.field mPenHighlightListener:Landroid/view/View$OnTouchListener;

.field mPenSelectionListener:Landroid/view/View$OnTouchListener;

.field private mPortraitDensity:I

.field private mPreDrawState:I

.field mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private mPrivateHandler:Landroid/os/Handler;

.field private mPrivateImeOptions:Ljava/lang/String;

.field private mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

.field private mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

.field private mScreenOffset:[I

.field private mScrollviewParent:Landroid/widget/ScrollView;

.field private mSelectCallback:Landroid/webkit/WebView$WrapActions;

.field private mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

.field private mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field private mStartIndex:I

.field private mTappedURL:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

.field mUpdateTimestamp:J

.field private mVSbound:Landroid/graphics/Rect;

.field private mVStype:I

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private m_bEnableEditable:Z

.field m_bRemoveSelectRangeDuringUpdateContent:Z

.field private predrawForSIPShown:Z

.field tolerantBox:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xbb8

    sput v0, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/EditableWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    iput v2, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    iput v2, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    iput v2, p0, Landroid/webkit/EditableWebView;->mVStype:I

    iput v2, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    new-instance v0, Landroid/webkit/EditableWebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$1;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    const/16 v0, 0xbb8

    iput v0, p0, Landroid/webkit/EditableWebView;->HIDE_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/webkit/EditableWebView;->SHOW_SINGLETAP_QUICKACTIONS_DELAYED_MILLI:I

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    iput-boolean v2, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    new-instance v0, Landroid/webkit/EditableWebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$2;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    new-instance v0, Landroid/webkit/EditableWebView$AnchorTouchListener;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$AnchorTouchListener;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/EditableWebView;->TOLERANT_DISTANCE:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iput v2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/webkit/EditableWebView$3;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$3;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Landroid/webkit/EditableWebView$4;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$4;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    iput-object v3, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setWebSelectionType(I)V

    new-instance v0, Landroid/webkit/WebViewSelectionMethod;

    invoke-direct {v0}, Landroid/webkit/WebViewSelectionMethod;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->myInitQuickAction()V

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getKeyListener()Landroid/text/method/KeyListener;

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->initSingleTapQuickAction()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Landroid/webkit/EditableWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/EditableWebView;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/EditableWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/EditableWebView;)Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/EditableWebView;)Lcom/htc/textselection/SelectionAnchor;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/webkit/EditableWebView;Lcom/htc/textselection/SelectionAnchor;)Lcom/htc/textselection/SelectionAnchor;
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkit/EditableWebView;FF)Landroid/graphics/PointF;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/EditableWebView;)[I
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/EditableWebView;)Landroid/webkit/WebViewCore;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1900(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$SingleTapQuickActions;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2200(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2300(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2400(Landroid/webkit/EditableWebView;ILandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/EditableWebView;->horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2600(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/EditableWebView;->mEndIndex:I

    return v0
.end method

.method static synthetic access$2800(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/webkit/EditableWebView;->mStartIndex:I

    return v0
.end method

.method static synthetic access$300(Landroid/webkit/EditableWebView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/EditableWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/webkit/EditableWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mTappedURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$500(Landroid/webkit/EditableWebView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/EditableWebView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkit/EditableWebView;)Landroid/webkit/WebView$WrapActions;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/EditableWebView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/EditableWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->openLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    return-object v0
.end method

.method private checkCursorVisible()Z
    .locals 10

    const/16 v9, 0x32

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    if-eqz v7, :cond_6

    iget-object v4, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v7}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v7, v7, v6

    neg-int v7, v7

    iget-object v8, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v8, v8, v0

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_7

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    add-int v2, v7, v8

    :cond_0
    :goto_1
    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v7, v8, :cond_1

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v7, v8, :cond_8

    :cond_1
    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    add-int v3, v7, v8

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_5

    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v9, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v9, :cond_9

    :cond_4
    :goto_3
    if-ne v4, p0, :cond_a

    iget v7, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v7, v8, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    :goto_4
    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    move-object v4, p0

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v7, v8, :cond_0

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getVerticalScrollbarWidth()I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_1

    :cond_8
    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_2

    iget-object v7, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getHorizontalScrollbarHeight()I

    move-result v8

    sub-int v3, v7, v8

    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    invoke-virtual {v7, v6, v3}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_b
    iget v7, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v2

    invoke-virtual {p0, v7, v6, v0, v6}, Landroid/webkit/EditableWebView;->myScrollTo(IIZI)V

    goto :goto_4
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private horizontalEdgeAdjustment(ILandroid/graphics/PointF;)V
    .locals 7

    const/high16 v6, 0x3f00

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    shr-int/lit8 v2, v4, 0x1

    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_WIDTH:I

    int-to-float v4, v4

    const v5, 0x3fa66666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    if-ge p1, v0, :cond_1

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int v5, v2, v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sub-int v4, p1, v0

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v2

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v4, v3, p1

    if-ge v4, v0, :cond_0

    iget v4, p2, Landroid/graphics/PointF;->x:F

    shr-int/lit8 v5, v0, 0x1

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    sub-int v4, v0, v3

    add-int/2addr v4, p1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p2, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private openLink(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "geo:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "mailto:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "rtsp://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v4, "ro.da1.enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string v3, "com.htc.HtcLinkifyDispatcher"

    const-string v4, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    goto :goto_0
.end method

.method private spacialDeNoise(FF)Landroid/graphics/PointF;
    .locals 7

    const/high16 v6, 0x4120

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    iput v2, v4, Landroid/graphics/PointF;->x:F

    iput v3, v4, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v4

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-float v5, p1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v0, p1, v5

    :cond_1
    :goto_1
    sub-float v5, p2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_5

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v5

    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v5

    goto :goto_1

    :cond_4
    sub-float v0, p1, v2

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/webkit/EditableWebView;->tolerantBox:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v5

    goto :goto_2

    :cond_6
    sub-float v1, p2, v3

    goto :goto_2
.end method


# virtual methods
.method public SetBackColor(IZ)V
    .locals 7

    const/16 v5, 0xff

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :cond_0
    if-le v4, v5, :cond_1

    const/16 v4, 0xff

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-le v3, v5, :cond_3

    const/16 v3, 0xff

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-le v2, v5, :cond_5

    const/16 v2, 0xff

    :cond_5
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-le v1, v5, :cond_7

    const/16 v1, 0xff

    :cond_7
    if-nez p2, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x208

    invoke-virtual {v5, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rgb("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SetFontSize(I)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x209

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    return-void
.end method

.method public SetForeColor(I)V
    .locals 6

    const/16 v4, 0xff

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-le v3, v4, :cond_1

    const/16 v3, 0xff

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-le v2, v4, :cond_3

    const/16 v2, 0xff

    :cond_3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-le v1, v4, :cond_5

    const/16 v1, 0xff

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rgb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x207

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public SetOwnerActivityContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->SetOwnerActivityContext(Landroid/content/Context;)V

    return-void
.end method

.method public alignCenter()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x203

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignJustified()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignLeft()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public alignRight()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x206

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    return-void
.end method

.method public cancelAnchorSpan()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method protected checkVerticalBouncingCallback(I)Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/webkit/EditableWebView$OnOverScrollListener;->onOverScrolled(Landroid/webkit/WebView;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->insetText(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21c

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public cut()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public deleteSurroundingText(IIII)V
    .locals 6

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebViewCore;->deleteSurroundingText(IIIII)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mClipboard:Landroid/content/ClipboardManager;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrimaryClipChangedListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public enableMultiTouch()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->enableMultiTouch()V

    return-void
.end method

.method public enableOrientationCustomScale(FF)V
    .locals 6

    const/high16 v5, 0x42c8

    const/high16 v4, 0x3f00

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    div-float v2, v5, p1

    add-float/2addr v2, v4

    float-to-int v1, v2

    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    :cond_0
    div-float v2, v5, p2

    add-float/2addr v2, v4

    float-to-int v1, v2

    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    :cond_1
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    return-void
.end method

.method public exportHTML(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/EditableWebView;->exportHTML(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public exportHTML(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fd

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public findContinuousBRFromEnd(ILandroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public getAllAnchorSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetAllAnchorSpan()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAnchorRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAnchorSpanRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "HTC_ANCHOR_SPAN_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTC_ANCHOR_SPAN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HTCWebCore;->nativeGetAnchorSpanRect(Landroid/graphics/Rect;Ljava/lang/String;)I

    return-void
.end method

.method public getBackColor()I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v8}, Landroid/webkit/HTCWebCore;->nativeGetBackColor()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    :cond_1
    :goto_0
    return v7

    :cond_2
    const-string/jumbo v8, "rgba("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_3

    const/4 v1, 0x5

    const/4 v0, 0x0

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v0, 0x2

    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "rgb("

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v10, :cond_4

    const/4 v1, 0x4

    const/4 v0, 0x0

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v0, 0x2

    const-string v8, ","

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v0, 0x2

    const-string v8, ")"

    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    goto/16 :goto_0

    :cond_4
    invoke-static {v7, v7, v7, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto/16 :goto_0
.end method

.method public getBoldState()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetBoldState()I

    move-result v0

    return v0
.end method

.method public final getCaretRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getContentWidth()I
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    return-object v0
.end method

.method public getEnableBackColor()Z
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getBackColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFontSize()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetFontSize()I

    move-result v0

    return v0
.end method

.method public getForeColor()I
    .locals 9

    const/4 v8, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v7}, Landroid/webkit/HTCWebCore;->nativeGetForeColor()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v7, "rgb("

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v1, 0x4

    const/4 v0, 0x0

    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v0, 0x2

    const-string v7, ","

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v0, 0x2

    const-string v7, ")"

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v8, :cond_1

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_0
.end method

.method public getHTML(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final getHighlightRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public getItalicState()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetItalicState()I

    move-result v0

    return v0
.end method

.method public getKeyListener()Landroid/text/method/KeyListener;
    .locals 2

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-nez v1, :cond_0

    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    return-object v1
.end method

.method public getPenHighlightListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenHighlightListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getPenSelectionListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPenSelectionListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getRegionCapture(IIIIZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(IIIIZLandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20b

    invoke-virtual {v7, v8}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    if-nez p5, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result p2

    invoke-virtual {p0, p3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p3

    invoke-virtual {p0, p4}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result p4

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v6, p6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v5, 0x1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_4
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    neg-int v7, p1

    int-to-float v7, v7

    neg-int v8, p2

    int-to-float v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v3, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x3f80

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_5

    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v1, v3, v3, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_5
    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->drawPage(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_6

    const/4 v6, 0x0

    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v8, 0x20b

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    if-nez v5, :cond_1

    move-object/from16 v6, p6

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v7, "EditableWebView"

    const-string v8, ""

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getRegionCapture(Landroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 7

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCapture(Landroid/graphics/Rect;ZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/EditableWebView;->getRegionCapture(IIIIZLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRegionCaptureByMessage(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->captureMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->invalidate()V

    goto :goto_0
.end method

.method protected getResultReceiver()Landroid/os/ResultReceiver;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$ShowSipResultReceiver;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mResultReceiver:Landroid/webkit/EditableWebView$ShowSipResultReceiver;

    return-object v0
.end method

.method public getSelectionMethod()Landroid/webkit/WebViewSelectionMethod;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    return-object v0
.end method

.method public getStrikethroughState()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetStrikethroughState()I

    move-result v0

    return v0
.end method

.method public getUnderlineState()I
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0}, Landroid/webkit/HTCWebCore;->nativeGetUnderlineState()I

    move-result v0

    return v0
.end method

.method getVSbound(Landroid/graphics/Rect;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    iget v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    return v0
.end method

.method public hideSingleTapQuickActions()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction()V

    goto :goto_0
.end method

.method protected initQuickSelect()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/EditableWebView$QuickSelectionED;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/EditableWebView$QuickSelectionED;-><init>(Landroid/webkit/EditableWebView;Landroid/webkit/EditableWebView$1;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    iput-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView$QuickSelectionED;->init()V

    :cond_1
    return-void
.end method

.method protected initSingleTapQuickAction()V
    .locals 3

    new-instance v0, Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$SingleTapQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView$SingleTapQuickActions;->loadResource(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    new-instance v1, Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v2, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActions:Landroid/webkit/EditableWebView$SingleTapQuickActions;

    invoke-virtual {v1, v2}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    return-void
.end method

.method public insertAnchorSpan(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x222

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHTML(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHTMLString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fb

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertHtmlContainsAnchorSpan(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x224

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->updateContentFromMessage(I)V

    return-void
.end method

.method public insertHtmlToTheEnd(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x220

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Landroid/webkit/EditableWebView$ImageInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkit/EditableWebView$ImageInfo;-><init>(Landroid/webkit/EditableWebView;Ljava/lang/String;II)V

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x1fe

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected myInitQuickAction()V
    .locals 3

    new-instance v0, Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-direct {v0, p0}, Landroid/webkit/EditableWebView$EditableQuickActions;-><init>(Landroid/webkit/EditableWebView;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->onCheckIsTextEditor()Z

    move-result v0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/EditableWebView;->mLandscapeDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pauseSelectionUI()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/webkit/EditableWebView;->mPortraitDensity:I

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->adjustDefaultZoomDensity(I)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    new-instance v0, Landroid/webkit/WebViewInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewInputConnection;-><init>(Landroid/webkit/EditableWebView;)V

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    const/16 v1, 0x4000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    const v1, 0x24001

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/EditableWebView;->mScrollviewParent:Landroid/widget/ScrollView;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getLocationOnScreen([I)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    iget v10, p0, Landroid/view/View;->mScrollX:I

    if-ne v1, v10, :cond_0

    iget v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    iget v10, p0, Landroid/view/View;->mScrollY:I

    if-ne v1, v10, :cond_0

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v11

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    if-ne v1, v10, :cond_0

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    aget v1, v1, v12

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    if-eq v1, v10, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_6

    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v9

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v1, v9, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->isConfigurationChanged:Z

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/EditableWebView;->mOldScrollY:I

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    aput v10, v1, v11

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOldScreenOffset:[I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    aput v10, v1, v12

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/view/View;->mScrollX:I

    sub-int v2, v1, v10

    iget-object v1, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/view/View;->mScrollY:I

    sub-int v3, v1, v10

    iget-object v1, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v11

    add-int/2addr v1, v10

    iget v10, p0, Landroid/view/View;->mScrollX:I

    sub-int v4, v1, v10

    iget-object v1, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mScreenOffset:[I

    aget v10, v10, v12

    add-int/2addr v1, v10

    iget v10, p0, Landroid/view/View;->mScrollY:I

    sub-int v5, v1, v10

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->mInBatchEditControllers:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_3
    iget v1, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    const/4 v10, 0x2

    if-ne v1, v10, :cond_4

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput v11, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    :cond_4
    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    if-eqz v1, :cond_5

    iput-boolean v11, p0, Landroid/webkit/EditableWebView;->captureAfterDraw:Z

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v10, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_5
    return-void

    :cond_6
    iget-object v1, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v1}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    sget-object v10, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v1, v10, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v6}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    iget-object v1, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v6}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method public onEditorAction(I)V
    .locals 0

    return-void
.end method

.method public onEndSelect()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    return-void
.end method

.method public onEndSelect(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v4}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v1

    iget-object v4, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    iget-object v4, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v4}, Landroid/webkit/WebView$QuickSelectAbs;->selectionDone()V

    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    iput-boolean v7, v4, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    :cond_0
    if-eqz p1, :cond_1

    sget-object v4, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    :cond_1
    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v4}, Landroid/webkit/WebView$WrapActions;->finish()V

    :cond_2
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x20b

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v0, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v5, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x8e

    invoke-virtual {v0, v5, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    if-eqz p1, :cond_3

    if-eqz v7, :cond_3

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x14

    if-eq p1, v6, :cond_0

    const/16 v6, 0x13

    if-eq p1, v6, :cond_0

    const/16 v6, 0x15

    if-eq p1, v6, :cond_0

    const/16 v6, 0x16

    if-ne p1, v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    :cond_1
    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    if-eqz v5, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-le v6, v3, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v6}, Landroid/webkit/WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ge v1, v0, :cond_2

    move v4, v0

    move v0, v1

    move v1, v4

    :cond_2
    if-eq v0, v8, :cond_3

    if-eq v1, v8, :cond_3

    iget-object v6, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v6, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Landroid/webkit/EditableWebView;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    return v6
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    and-int/lit16 v0, v1, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_0
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->cut()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->copy()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->pasteLatestContentFromClipboard()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignLeft()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignCenter()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->alignRight()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_3
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x2f -> :sswitch_4
        0x32 -> :sswitch_2
        0x34 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v0, 0x0

    iget-boolean v3, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-eq v3, v6, :cond_0

    :cond_2
    iput-boolean v5, p0, Landroid/webkit/EditableWebView;->predrawForSIPShown:Z

    iget-object v3, p0, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->isScrolling()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/webkit/EditableWebView;->checkCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    const/4 v3, 0x2

    iput v3, p0, Landroid/webkit/EditableWebView;->mPreDrawState:I

    if-nez v0, :cond_4

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/EditableWebView$OnScrollChangedListener;->onScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-ge p2, p4, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    :cond_1
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8

    const/4 v4, 0x0

    const/16 v1, 0x20b

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isWebCoreReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v7, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v5, 0xfa

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    :cond_2
    return-void
.end method

.method public pasteLatestContentFromClipboard()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x225

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public pastePlainText()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public pasteWithStyle()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x21e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method pauseSelectionUI()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v2}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectAbs;->hideQuickActions(Z)V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    return-void
.end method

.method public performLongClick()Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v0}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v1, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    return v4
.end method

.method resumeSelctionUI()V
    .locals 4

    const/16 v3, 0x2ebc

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isPauseSelectUI:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setAllowVerticalBouncing(ZILandroid/webkit/EditableWebView$OnOverScrollListener;)V
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    iput-object p3, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    iput p2, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->setOverScrollMode(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/EditableWebView;->mOnOverScrollListener:Landroid/webkit/EditableWebView$OnOverScrollListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/EditableWebView;->mOverScrollThreshold:I

    goto :goto_0
.end method

.method public final setCaretPos(II)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->isNoteAP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_0
    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2, v3}, Landroid/webkit/WebViewCore;->doSelection(IIZ)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v3}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    add-int/lit8 v4, v1, 0x1

    const-class v5, Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v3, v1, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/BackgroundColorSpan;

    array-length v3, v0

    if-lez v3, :cond_1

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v4, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v3, v4, v5, v2}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;I)V

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget v3, p0, Landroid/webkit/EditableWebView;->mEditingNode:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;)V

    goto :goto_1
.end method

.method setCurrentEditingNodeText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/webkit/EditableWebView;->m_bEnableEditable:Z

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewCore;->setEditable(Z)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    return-void
.end method

.method public setOnScrollChangedListener(Landroid/webkit/EditableWebView$OnScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mOnScrollChangedListener:Landroid/webkit/EditableWebView$OnScrollChangedListener;

    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/EditableWebView;->mPrivateImeOptions:Ljava/lang/String;

    return-void
.end method

.method public setScaleWithoutCheck(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setScaleWithoutCheck(Z)V

    return-void
.end method

.method public setWillDrawFind(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWillDrawFind(Z)V

    return-void
.end method

.method public setZoomLowerBound(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomLowerBound(F)V

    return-void
.end method

.method public setZoomUpperBound(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setZoomUpperBound(F)V

    return-void
.end method

.method public showSingleTapQuickActions()V
    .locals 5

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    invoke-direct {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v4, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->getAnchorDrawableHeight()I

    move-result v4

    add-int/2addr v3, v4

    shr-int/lit8 v1, v3, 0x1

    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/EditableWebView;->mSingleTapQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v3, v0, p0}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public toggleBold()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleItalic()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleStrikethrough()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public toggleUnderline()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    return-void
.end method

.method public final transferDimension(Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-eqz p2, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->contentToViewY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public final transferDimension(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/EditableWebView;->viewToContentX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/EditableWebView;->viewToContentY(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected updateContentFromMessage(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    invoke-virtual {p0, v1}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    iget-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/EditableWebView;->m_bRemoveSelectRangeDuringUpdateContent:Z

    :cond_0
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/webkit/WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    invoke-direct {p0, v0}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    :cond_1
    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mOnContentChangedListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    iget-object v2, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, v2, Landroid/webkit/HTCWebCore;->mEventHub:Landroid/webkit/HTCWebCore$EditEventHub;

    iget v2, v2, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    invoke-interface {v1, p0, v2}, Landroid/webkit/EditableWebView$OnContentChangedListener;->onContentChanged(Landroid/webkit/WebView;I)V

    :cond_2
    return-void
.end method

.method updatePositionRect()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->updatePositionRect()V

    invoke-virtual {p0}, Landroid/webkit/EditableWebView;->updateVSbound()V

    return-void
.end method

.method protected updateTextAndSelection(III)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEditingNode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/EditableWebView;->mEditingText:Ljava/lang/String;

    if-nez v7, :cond_8

    const-string v7, ""

    const/16 p3, 0x0

    move/from16 p2, p3

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    if-nez v15, :cond_9

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/webkit/EditableWebView;->getVSbound(Landroid/graphics/Rect;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/webkit/WebView;->cursorRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_a

    :cond_0
    const/4 v15, 0x2

    if-ne v14, v15, :cond_a

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/EditableWebView$EditableQuickActions;->highlightMode:Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Landroid/webkit/WebView$QuickSelectAbs;->showQuickActions(Landroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_2
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mStartIndex:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/EditableWebView;->mEndIndex:I

    move/from16 v0, p3

    if-eq v15, v0, :cond_f

    :cond_3
    const/4 v9, 0x1

    :cond_4
    :goto_3
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mStartIndex:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/EditableWebView;->mEndIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_13

    const/16 v15, 0x73

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v11

    const/16 v15, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v4

    const/16 v15, 0x78

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->getRectOf(I)Landroid/graphics/Rect;

    move-result-object v5

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPenDownRect:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15, v11, v4}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    move/from16 v6, p3

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    if-le v6, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v6

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-static {v15, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-eqz v9, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/webkit/EditableWebView;->mUpdateTimestamp:J

    :cond_7
    :goto_6
    return-void

    :cond_8
    const/16 v15, 0xa0

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->clearSpans()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15, v7}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mQuickSelectED:Landroid/webkit/EditableWebView$QuickSelectionED;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/EditableWebView$QuickSelectionED;->hideQuickActions(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mSelectCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v15}, Landroid/webkit/WebView$WrapActions;->finish()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    :cond_c
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/webkit/WebView;->shortTapOnWebView:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/textselection/SelectionAnchor;->setTouchable(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual/range {v15 .. v16}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x1

    sget v17, Landroid/webkit/EditableWebView;->DELAY_CURSOR_ANCHOR_DISAPPEAR:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v16, 0x65

    const-wide/16 v17, 0x1f4

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/webkit/EditableWebView;->mDpadKeyPressed:Z

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    iget-object v15, v15, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v15}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/EditableWebView;->onEndSelect(Z)V

    goto/16 :goto_2

    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_10
    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mTouchingAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_11

    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    goto/16 :goto_4

    :cond_12
    move/from16 v6, p2

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/webkit/WebView$QuickSelectAbs;->showAnchors(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_14
    :goto_7
    move/from16 v0, p3

    move/from16 v1, p2

    if-ge v0, v1, :cond_15

    move/from16 v12, p2

    move/from16 p2, p3

    move/from16 p3, v12

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p3

    if-le v0, v13, :cond_16

    sub-int v2, p3, p2

    move/from16 p3, v13

    sub-int p2, p3, v2

    if-gez p2, :cond_16

    const/16 p2, 0x0

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/EditableWebView;->mText:Landroid/text/Editable;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v15, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-direct/range {p0 .. p0}, Landroid/webkit/EditableWebView;->registerForPreDraw()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->CURSOR:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/EditableWebView;->hideSingleTapQuickActions()V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mSelection:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v15}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v15

    sget-object v16, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/webkit/WebView$QuickSelectAbs;->acrossFlag:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/webkit/WebView;->mQuickSelect:Landroid/webkit/WebView$QuickSelectAbs;

    invoke-virtual {v15}, Landroid/webkit/WebView$QuickSelectAbs;->dismissAnchor()V

    goto :goto_7
.end method

.method updateVSbound()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/EditableWebView;->mVSbound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Landroid/webkit/EditableWebView;->mVStype:I

    return-void
.end method
