.class Lcom/android/browser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Tab$12;,
        Lcom/android/browser/Tab$SubWindowChromeClient;,
        Lcom/android/browser/Tab$SubWindowClient;,
        Lcom/android/browser/Tab$ErrorDialog;,
        Lcom/android/browser/Tab$VoiceSearchData;,
        Lcom/android/browser/Tab$PageState;,
        Lcom/android/browser/Tab$SecurityState;
    }
.end annotation


# static fields
.field static final APPID:Ljava/lang/String; = "appid"

.field private static final CAPTURE_DELAY:I = 0x64

.field static final CLOSEFLAG:Ljava/lang/String; = "closeOnBack"

.field private static final CONSOLE_LOGTAG:Ljava/lang/String; = "browser"

.field static final CURRTITLE:Ljava/lang/String; = "currentTitle"

.field static final CURRURL:Ljava/lang/String; = "currentUrl"

.field static final ID:Ljava/lang/String; = "ID"

.field static final INCOGNITO:Ljava/lang/String; = "privateBrowsingEnabled"

.field private static final INITIAL_PROGRESS:I = 0x5

.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "Tab"

.field private static final MSG_CAPTURE:I = 0x2a

.field static final PARENTTAB:Ljava/lang/String; = "parentTab"

.field static final USERAGENT:Ljava/lang/String; = "useragent"

.field private static sAlphaPaint:Landroid/graphics/Paint;

.field private static final sBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultFavicon:Landroid/graphics/Bitmap;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mCapture:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mChildren:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

.field private mCloseOnBack:Z

.field private mContainer:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field protected mCurrentState:Lcom/android/browser/Tab$PageState;

.field private mDataController:Lcom/android/browser/DataController;

.field private mDeleteThumbnail:Ljava/lang/Runnable;

.field private mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mDownloadListener:Landroid/webkit/DownloadListener;

.field private mErrorConsole:Lcom/android/browser/ErrorConsoleView;

.field private mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

.field private mHandler:Landroid/os/Handler;

.field private mId:J

.field private mInForeground:Z

.field private mInPageLoad:Z

.field private mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

.field private mLoadStartTime:J

.field private mLoadThumbnail:Ljava/lang/Runnable;

.field private mMainView:Landroid/webkit/WebView;

.field private mPageLoadProgress:I

.field private mParent:Lcom/android/browser/Tab;

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/Tab$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveThumbnail:Ljava/lang/Runnable;

.field private mSavedState:Landroid/os/Bundle;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mSubView:Landroid/webkit/WebView;

.field private mSubViewContainer:Landroid/view/View;

.field mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

.field private mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

.field private final mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private final mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field protected mWebViewController:Lcom/android/browser/WebViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    .line 112
    sget-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 113
    sget-object v0, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2199
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/browser/Tab;->sBuffer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V
    .locals 1
    .parameter "wvcontroller"
    .parameter "state"

    .prologue
    .line 1400
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1401
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "wvcontroller"
    .parameter "w"

    .prologue
    .line 1396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 1397
    return-void
.end method

.method constructor <init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V
    .locals 6
    .parameter "wvcontroller"
    .parameter "w"
    .parameter "state"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide v4, p0, Lcom/android/browser/Tab;->mId:J

    .line 510
    new-instance v0, Lcom/android/browser/Tab$1;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$1;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 557
    new-instance v0, Lcom/android/browser/Tab$2;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$2;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 948
    new-instance v0, Lcom/android/browser/Tab$3;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$3;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 2027
    new-instance v0, Lcom/android/browser/Tab$8;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$8;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    .line 2217
    new-instance v0, Lcom/android/browser/Tab$9;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$9;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mSaveThumbnail:Ljava/lang/Runnable;

    .line 2233
    new-instance v0, Lcom/android/browser/Tab$10;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$10;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDeleteThumbnail:Ljava/lang/Runnable;

    .line 2245
    new-instance v0, Lcom/android/browser/Tab$11;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$11;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mLoadThumbnail:Ljava/lang/Runnable;

    .line 1404
    iput-object p1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 1405
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    .line 1406
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 1407
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    .line 1408
    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 1410
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1411
    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1413
    new-instance v0, Lcom/android/browser/Tab$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$4;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 1421
    new-instance v0, Lcom/android/browser/Tab$5;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$5;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 1452
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    .line 1454
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/Tab;->mCaptureHeight:I

    .line 1456
    invoke-virtual {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1457
    invoke-direct {p0, p3}, Lcom/android/browser/Tab;->restoreState(Landroid/os/Bundle;)V

    .line 1458
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 1459
    invoke-static {}, Lcom/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    .line 1461
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1462
    new-instance v0, Lcom/android/browser/Tab$6;

    invoke-direct {v0, p0}, Lcom/android/browser/Tab$6;-><init>(Lcom/android/browser/Tab;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    .line 1472
    return-void

    :cond_1
    move v0, v1

    .line 1408
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/browser/Tab;->processNextError()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/browser/Tab;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/browser/Tab;Lcom/android/browser/Tab$SecurityState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/Tab;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->handleProceededAfterSslError(Landroid/net/http/SslError;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/browser/Tab;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/browser/Tab;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/browser/Tab;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/browser/Tab;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/browser/Tab;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/browser/Tab;->getCaptureBlob()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/browser/Tab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/browser/Tab;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/browser/Tab;->updateCaptureFromBlob([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/Tab;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/browser/Tab;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/android/browser/Tab;->mLoadStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/browser/Tab;)Lcom/android/browser/Tab$VoiceSearchData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/Tab;)Lcom/android/browser/ErrorConsoleView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Tab;)Lcom/android/browser/DeviceAccountLogin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/Tab;Lcom/android/browser/DeviceAccountLogin;)Lcom/android/browser/DeviceAccountLogin;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/Tab;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/browser/Tab;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method private getCaptureBlob()[B
    .locals 3

    .prologue
    .line 2202
    monitor-enter p0

    .line 2203
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 2204
    const/4 v1, 0x0

    monitor-exit p0

    .line 2213
    :goto_0
    return-object v1

    .line 2206
    :cond_0
    sget-object v1, Lcom/android/browser/Tab;->sBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2207
    .local v0, buffer:Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2209
    sget-object v1, Lcom/android/browser/Tab;->sBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2211
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 2212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 2214
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"

    .prologue
    .line 200
    const-class v1, Lcom/android/browser/Tab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020001

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;

    .line 204
    :cond_0
    sget-object v0, Lcom/android/browser/Tab;->sDefaultFavicon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 2293
    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v1, v1, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_BAD_CERTIFICATE:Lcom/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    .line 2296
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 2302
    :cond_0
    :goto_0
    return-void

    .line 2297
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getSecurityState()Lcom/android/browser/Tab$SecurityState;

    move-result-object v0

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    if-ne v0, v1, :cond_0

    .line 2300
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_MIXED:Lcom/android/browser/Tab$SecurityState;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setSecurityState(Lcom/android/browser/Tab$SecurityState;)V

    goto :goto_0
.end method

.method private postCapture()V
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 2138
    iget-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2141
    :cond_0
    return-void
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 5
    .parameter "err"
    .parameter "desc"

    .prologue
    .line 519
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 520
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab$ErrorDialog;

    .line 523
    .local v0, d:Lcom/android/browser/Tab$ErrorDialog;
    iget v3, v0, Lcom/android/browser/Tab$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    .line 539
    .end local v0           #d:Lcom/android/browser/Tab$ErrorDialog;
    :cond_2
    :goto_0
    return-void

    .line 528
    :cond_3
    new-instance v1, Lcom/android/browser/Tab$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_4

    const v3, 0x7f0c00f8

    :goto_1
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/Tab$ErrorDialog;-><init>(Lcom/android/browser/Tab;ILjava/lang/String;I)V

    .line 533
    .local v1, errDialog:Lcom/android/browser/Tab$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 536
    iget-object v3, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v3, :cond_2

    .line 537
    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    goto :goto_0

    .line 528
    .end local v1           #errDialog:Lcom/android/browser/Tab$ErrorDialog;
    :cond_4
    const v3, 0x7f0c00f7

    goto :goto_1
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "b"

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1999
    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 2021
    :goto_0
    return-void

    .line 2004
    :cond_0
    const-string v3, "ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/browser/Tab;->mId:J

    .line 2005
    const-string v3, "appid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 2006
    const-string v3, "closeOnBack"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    .line 2007
    const-string v3, "useragent"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2009
    iget-object v3, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 2011
    :cond_1
    const-string v3, "currentUrl"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2012
    .local v2, url:Ljava/lang/String;
    const-string v3, "currentTitle"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    .local v1, title:Ljava/lang/String;
    const-string v3, "privateBrowsingEnabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2014
    .local v0, incognito:Z
    new-instance v3, Lcom/android/browser/Tab$PageState;

    iget-object v4, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v2, v5}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 2015
    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object v1, v3, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 2016
    monitor-enter p0

    .line 2017
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 2018
    iget-object v3, p0, Lcom/android/browser/Tab;->mLoadThumbnail:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 2020
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setSecurityState(Lcom/android/browser/Tab$SecurityState;)V
    .locals 2
    .parameter "securityState"

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 1915
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 1916
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->onUpdatedSecurityState(Lcom/android/browser/Tab;)V

    .line 1917
    return-void
.end method

.method private setupHwAcceleration(Landroid/view/View;)V
    .locals 3
    .parameter "web"

    .prologue
    const/4 v2, 0x0

    .line 1710
    if-nez p1, :cond_0

    .line 1717
    :goto_0
    return-void

    .line 1711
    :cond_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 1712
    .local v0, settings:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1713
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 1715
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private showError(Lcom/android/browser/Tab$ErrorDialog;)V
    .locals 4
    .parameter "errDialog"

    .prologue
    .line 542
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 543
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/Tab$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 548
    .local v0, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/Tab;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 551
    .end local v0           #d:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 918
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 922
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 924
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 927
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    sget-object v1, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 928
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    invoke-virtual {p1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    .line 931
    return-void
.end method

.method private updateCaptureFromBlob([B)V
    .locals 5
    .parameter "blob"

    .prologue
    .line 2183
    monitor-enter p0

    .line 2184
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 2185
    monitor-exit p0

    .line 2197
    :goto_0
    return-void

    .line 2187
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2189
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :try_start_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2196
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2190
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    .line 2191
    .local v1, rex:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v2, "Tab"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load capture has mismatched sizes; buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " blob: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "capture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method activateVoiceSearchMode(Landroid/content/Intent;)V
    .locals 24
    .parameter "intent"

    .prologue
    .line 311
    const/4 v15, 0x0

    .line 312
    .local v15, index:I
    const-string v2, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 314
    .local v20, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v20, :cond_4

    .line 315
    const-string v2, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 317
    .local v23, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 319
    .local v14, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 324
    .local v8, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 325
    .local v21, size:I
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "improper extras passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 328
    :cond_1
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ne v2, v0, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-eq v2, v0, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    .line 332
    :cond_2
    const/4 v14, 0x0

    .line 333
    const/4 v8, 0x0

    .line 335
    :cond_3
    new-instance v2, Lcom/android/browser/Tab$VoiceSearchData;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v2, v0, v1, v14, v8}, Lcom/android/browser/Tab$VoiceSearchData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    const-string v4, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    sget-object v4, Lcom/android/browser/Tab$VoiceSearchData;->SOURCE_IS_GOOGLE:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    new-instance v4, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 344
    .end local v8           #baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v21           #size:I
    .end local v23           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v2, "intent_extra_data_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 346
    .local v12, extraData:Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 347
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v15, v2, :cond_5

    .line 349
    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "index must be less than size of mVoiceSearchResults"

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 352
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-boolean v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v2, :cond_6

    .line 353
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.android.common.speech.LOG_EVENT"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v19, logIntent:Landroid/content/Intent;
    const-string v2, "extra_event"

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v2, "index"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    .end local v19           #logIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    .line 365
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 366
    .local v18, latest:Landroid/content/Intent;
    const-string v2, "intent_extra_data_key"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 370
    .end local v18           #latest:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v2, :cond_8

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v4, v4, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v5, v5, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-interface {v2, v4, v5}, Lcom/android/browser/WebViewController;->activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V

    .line 377
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 380
    .local v22, uriString:Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 381
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 382
    .local v11, dataUri:Landroid/net/Uri;
    const-string v2, "inline"

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v4, v4, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    .end local v15           #index:I
    :goto_0
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iput-object v3, v2, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    const-string v4, "inline"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v7, v3

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v3           #baseUrl:Ljava/lang/String;
    .end local v11           #dataUri:Landroid/net/Uri;
    .end local v22           #uriString:Ljava/lang/String;
    :goto_1
    return-void

    .line 387
    .restart local v11       #dataUri:Landroid/net/Uri;
    .restart local v15       #index:I
    .restart local v22       #uriString:Ljava/lang/String;
    :cond_9
    const/4 v15, 0x0

    goto :goto_0

    .line 399
    .end local v11           #dataUri:Landroid/net/Uri;
    .end local v22           #uriString:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v4, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v4, v4, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 405
    :cond_b
    const/4 v13, 0x0

    .line 406
    .local v13, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    const/4 v10, 0x0

    .line 409
    .local v10, bundleIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v2, v2, Lcom/android/browser/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 410
    .local v9, bundle:Landroid/os/Bundle;
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 411
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 412
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 413
    .restart local v13       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 414
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 415
    .local v17, key:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v10           #bundleIndex:I
    .end local v16           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17           #key:Ljava/lang/String;
    :cond_c
    move v10, v15

    .line 407
    goto :goto_2

    .line 419
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v4, v4, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    invoke-virtual {v2, v4, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method addChildTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 1689
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1692
    invoke-virtual {p1, p0}, Lcom/android/browser/Tab;->setParent(Lcom/android/browser/Tab;)V

    .line 1693
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected capture()V
    .locals 12

    .prologue
    .line 2097
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 2129
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2099
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    .line 2100
    .local v6, left:I
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int v10, v1, v2

    .line 2101
    .local v10, top:I
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 2102
    .local v8, state:I
    neg-int v1, v6

    int-to-float v1, v1

    neg-int v2, v10

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2103
    iget v1, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v1, v2

    .line 2104
    .local v7, scale:F
    int-to-float v1, v6

    int-to-float v2, v10

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2105
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    instance-of v1, v1, Lcom/android/browser/BrowserWebView;

    if-eqz v1, :cond_2

    .line 2106
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    check-cast v1, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 2110
    :goto_1
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2112
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2113
    iget-object v1, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2115
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2116
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/android/browser/Tab;->sAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2119
    iget-object v1, p0, Lcom/android/browser/Tab;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2120
    invoke-virtual {p0}, Lcom/android/browser/Tab;->persistThumbnail()V

    .line 2121
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v9

    .line 2122
    .local v9, tc:Lcom/android/browser/TabControl;
    if-eqz v9, :cond_0

    .line 2123
    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v11

    .line 2125
    .local v11, updateListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    if-eqz v11, :cond_0

    .line 2126
    invoke-interface {v11, p0}, Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;->onThumbnailUpdated(Lcom/android/browser/Tab;)V

    goto/16 :goto_0

    .line 2108
    .end local v9           #tc:Lcom/android/browser/TabControl;
    .end local v11           #updateListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public clearBackStackWhenItemAdded(Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter "urlPattern"

    .prologue
    .line 2171
    iput-object p1, p0, Lcom/android/browser/Tab;->mClearHistoryUrlPattern:Ljava/util/regex/Pattern;

    .line 2172
    return-void
.end method

.method clearInPageLoad()V
    .locals 1

    .prologue
    .line 1953
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1954
    return-void
.end method

.method closeOnBack()Z
    .locals 1

    .prologue
    .line 1851
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    return v0
.end method

.method public compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 2078
    if-nez p1, :cond_0

    .line 2079
    const/4 v1, 0x0

    .line 2083
    :goto_0
    return-object v1

    .line 2081
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2082
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2083
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method public createSnapshotValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2049
    iget-object v6, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v6, :cond_1

    .line 2074
    :cond_0
    :goto_0
    return-object v5

    .line 2050
    :cond_1
    new-instance v0, Lcom/android/browser/SnapshotByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/browser/SnapshotByteArrayOutputStream;-><init>()V

    .line 2052
    .local v0, bos:Lcom/android/browser/SnapshotByteArrayOutputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2053
    .local v4, stream:Ljava/util/zip/GZIPOutputStream;
    iget-object v6, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->saveViewState(Ljava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2056
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 2057
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    invoke-virtual {v0}, Lcom/android/browser/SnapshotByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 2063
    .local v1, data:[B
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2064
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v7, v7, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v6, "url"

    iget-object v7, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v7, v7, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    const-string v6, "view_state"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2067
    const-string v6, "background"

    iget-object v7, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getPageBackgroundColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2068
    const-string v6, "date_created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2069
    const-string v6, "favicon"

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2070
    iget-object v6, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    iget-object v8, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2073
    .local v3, screenshot:Landroid/graphics/Bitmap;
    const-string v6, "thumbnail"

    invoke-virtual {p0, v3}, Lcom/android/browser/Tab;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2058
    .end local v1           #data:[B
    .end local v3           #screenshot:Landroid/graphics/Bitmap;
    .end local v4           #stream:Ljava/util/zip/GZIPOutputStream;
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 2059
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Tab"

    const-string v7, "Failed to save view state"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method createSubWindow()Z
    .locals 4

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->createSubWindow(Lcom/android/browser/Tab;)V

    .line 1604
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClient;Lcom/android/browser/WebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1606
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$SubWindowChromeClient;

    iget-object v2, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/Tab$SubWindowChromeClient;-><init>(Lcom/android/browser/Tab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1610
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/browser/Tab$7;

    invoke-direct {v1, p0}, Lcom/android/browser/Tab$7;-><init>(Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1623
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1624
    const/4 v0, 0x1

    .line 1626
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deleteThumbnail()V
    .locals 1

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeleteThumbnail:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 2180
    return-void
.end method

.method destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1569
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 1572
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1574
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1575
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {p0, v2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 1576
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1578
    .end local v0           #webView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method dismissSubWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1633
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->endActionMode()V

    .line 1635
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1636
    iput-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1637
    iput-object v1, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1639
    :cond_0
    return-void
.end method

.method getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getChildren()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    return-object v0
.end method

.method getDeviceAccountLogin()Lcom/android/browser/DeviceAccountLogin;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    return-object v0
.end method

.method getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;
    .locals 2
    .parameter "createIfNecessary"

    .prologue
    .line 1902
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    if-nez v0, :cond_0

    .line 1903
    new-instance v0, Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/ErrorConsoleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    .line 1904
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->setWebView(Landroid/webkit/WebView;)V

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mErrorConsole:Lcom/android/browser/ErrorConsoleView;

    return-object v0
.end method

.method getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 1886
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/Tab;->getDefaultFavicon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1826
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    const v2, 0x7f0d006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1829
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GeolocationPermissionsPrompt;

    iput-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    .line 1832
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1509
    iget-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    return-wide v0
.end method

.method getLoadProgress()I
    .locals 1

    .prologue
    .line 1936
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1937
    iget v0, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    .line 1939
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1864
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1866
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParent()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2039
    monitor-enter p0

    .line 2040
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    monitor-exit p0

    return-object v0

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSecurityState()Lcom/android/browser/Tab$SecurityState;
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    return-object v0
.end method

.method getSslCertificateError()Landroid/net/http/SslError;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mSslCertificateError:Landroid/net/http/SslError;

    return-object v0
.end method

.method getSubViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    return-object v0
.end method

.method getSubWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1876
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v0, v0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->filteredUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getVoiceDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 2155
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 2161
    :cond_0
    return-void
.end method

.method inForeground()Z
    .locals 1

    .prologue
    .line 1760
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    return v0
.end method

.method inPageLoad()Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    return v0
.end method

.method public isBookmarkedSite()Z
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lcom/android/browser/Tab$PageState;->mIsBookmarkedSite:Z

    return v0
.end method

.method public isInVoiceSearchMode()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-boolean v0, v0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "url"
    .parameter
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

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2087
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2088
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/browser/Tab;->mPageLoadProgress:I

    .line 2089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 2090
    new-instance v0, Lcom/android/browser/Tab$PageState;

    iget-object v1, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    .line 2091
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-interface {v0, p0, v1, v3}, Lcom/android/browser/WebViewController;->onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 2092
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2094
    :cond_0
    return-void
.end method

.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 0
    .parameter "view"
    .parameter "picture"

    .prologue
    .line 2134
    invoke-direct {p0}, Lcom/android/browser/Tab;->postCapture()V

    .line 2135
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1722
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1726
    :cond_0
    return-void
.end method

.method protected persistThumbnail()V
    .locals 1

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/android/browser/Tab;->mSaveThumbnail:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 2176
    return-void
.end method

.method putInBackground()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1747
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-nez v0, :cond_1

    .line 1757
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->capture()V

    .line 1751
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1752
    invoke-virtual {p0}, Lcom/android/browser/Tab;->pause()V

    .line 1753
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1754
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_0
.end method

.method putInForeground()V
    .locals 2

    .prologue
    .line 1729
    iget-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v1, :cond_0

    .line 1744
    :goto_0
    return-void

    .line 1732
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Tab;->mInForeground:Z

    .line 1733
    invoke-virtual {p0}, Lcom/android/browser/Tab;->resume()V

    .line 1734
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1735
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1736
    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1737
    iget-object v1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1740
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1741
    iget-object v1, p0, Lcom/android/browser/Tab;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab$ErrorDialog;

    invoke-direct {p0, v1}, Lcom/android/browser/Tab;->showError(Lcom/android/browser/Tab$ErrorDialog;)V

    .line 1743
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1, p0}, Lcom/android/browser/WebViewController;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public refreshIdAfterPreload()V
    .locals 2

    .prologue
    .line 1480
    invoke-static {}, Lcom/android/browser/TabControl;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/Tab;->mId:J

    .line 1481
    return-void
.end method

.method removeFromTree()V
    .locals 3

    .prologue
    .line 1585
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 1587
    .local v1, t:Lcom/android/browser/Tab;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->setParent(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1591
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1

    .line 1592
    iget-object v2, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mChildren:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1594
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Tab;->deleteThumbnail()V

    .line 1595
    return-void
.end method

.method resume()V
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/android/browser/Tab;->setupHwAcceleration(Landroid/view/View;)V

    .line 1702
    iget-object v0, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1703
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 1707
    :cond_0
    return-void
.end method

.method public revertVoiceSearchMode()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    .line 270
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p0}, Lcom/android/browser/WebViewController;->revertVoiceSearchMode(Lcom/android/browser/Tab;)V

    .line 274
    :cond_0
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 1962
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 1963
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1991
    :goto_0
    return-object v1

    .line 1966
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v1, v1, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    const/4 v1, 0x0

    goto :goto_0

    .line 1970
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    .line 1971
    iget-object v1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1972
    .local v0, savedList:Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_3

    .line 1973
    :cond_2
    const-string v1, "Tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save back/forward list for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_3
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "ID"

    iget-wide v3, p0, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1978
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentUrl"

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "currentTitle"

    iget-object v3, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v3, v3, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "privateBrowsingEnabled"

    iget-object v3, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1981
    iget-object v1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1982
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    :cond_4
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "closeOnBack"

    iget-boolean v3, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1986
    iget-object v1, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    if-eqz v1, :cond_5

    .line 1987
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "parentTab"

    iget-object v3, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    iget-wide v3, v3, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1989
    :cond_5
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v2, "useragent"

    iget-object v3, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1991
    iget-object v1, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/android/browser/Tab;->mAppId:Ljava/lang/String;

    .line 1848
    return-void
.end method

.method setCloseOnBack(Z)V
    .locals 0
    .parameter "close"

    .prologue
    .line 1855
    iput-boolean p1, p0, Lcom/android/browser/Tab;->mCloseOnBack:Z

    .line 1856
    return-void
.end method

.method public setController(Lcom/android/browser/WebViewController;)V
    .locals 0
    .parameter "ctl"

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    .line 1505
    invoke-virtual {p0}, Lcom/android/browser/Tab;->updateShouldCaptureThumbnails()V

    .line 1506
    return-void
.end method

.method setDeviceAccountLogin(Lcom/android/browser/DeviceAccountLogin;)V
    .locals 0
    .parameter "login"

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/browser/Tab;->mDeviceAccountLogin:Lcom/android/browser/DeviceAccountLogin;

    .line 937
    return-void
.end method

.method setParent(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "parent"

    .prologue
    .line 1646
    if-ne p1, p0, :cond_0

    .line 1647
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set parent to self!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_0
    iput-object p1, p0, Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;

    .line 1654
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1655
    if-nez p1, :cond_3

    .line 1656
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1663
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1668
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1669
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent has same ID as child!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    :cond_3
    iget-object v0, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    const-string v1, "parentTab"

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1671
    :cond_4
    return-void
.end method

.method setSubViewContainer(Landroid/view/View;)V
    .locals 0
    .parameter "subViewContainer"

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1820
    return-void
.end method

.method setSubWebView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "subView"

    .prologue
    .line 1811
    iput-object p1, p0, Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;

    .line 1812
    return-void
.end method

.method setViewContainer(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    .line 1787
    return-void
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "w"

    .prologue
    const/4 v5, 0x0

    .line 1517
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-ne v2, p1, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget-object v2, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    if-eqz v2, :cond_2

    .line 1524
    iget-object v2, p0, Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-virtual {v2}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1527
    :cond_2
    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2, p0, p1}, Lcom/android/browser/WebViewController;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 1529
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_3

    .line 1530
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1531
    if-eqz p1, :cond_7

    .line 1532
    invoke-direct {p0, p1, v5}, Lcom/android/browser/Tab;->syncCurrentState(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1538
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    .line 1540
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1542
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1547
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1548
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 1549
    iget-object v2, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    .line 1550
    .local v1, tc:Lcom/android/browser/TabControl;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1551
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    invoke-virtual {v2, p0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1553
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 1554
    iget-object v2, p0, Lcom/android/browser/Tab;->mMainView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 1556
    .local v0, restoredState:Landroid/webkit/WebBackForwardList;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-nez v2, :cond_6

    .line 1557
    :cond_5
    const-string v2, "Tab"

    const-string v3, "Failed to restore WebView state!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iget-object v2, v2, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1560
    :cond_6
    iput-object v5, p0, Lcom/android/browser/Tab;->mSavedState:Landroid/os/Bundle;

    goto :goto_0

    .line 1534
    .end local v0           #restoredState:Landroid/webkit/WebBackForwardList;
    .end local v1           #tc:Lcom/android/browser/TabControl;
    :cond_7
    new-instance v2, Lcom/android/browser/Tab$PageState;

    iget-object v3, p0, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/browser/Tab$PageState;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2272
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/browser/Tab;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2273
    const-string v1, ") has parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2275
    const-string v1, "true["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2277
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    :goto_0
    const-string v1, ", incog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    invoke-virtual {p0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2283
    invoke-virtual {p0}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2284
    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    const-string v1, ", url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2287
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2279
    :cond_1
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateBookmarkedStatus()V
    .locals 3

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/browser/Tab;->mDataController:Lcom/android/browser/DataController;

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Tab;->mIsBookmarkCallback:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/DataController;->queryBookmarkStatus(Ljava/lang/String;Lcom/android/browser/DataController$OnQueryUrlIsBookmark;)V

    .line 2025
    return-void
.end method

.method public updateShouldCaptureThumbnails()V
    .locals 3

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->shouldCaptureThumbnails()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    monitor-enter p0

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1487
    iget v0, p0, Lcom/android/browser/Tab;->mCaptureWidth:I

    iget v1, p0, Lcom/android/browser/Tab;->mCaptureHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1489
    iget-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1490
    iget-boolean v0, p0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1491
    invoke-direct {p0}, Lcom/android/browser/Tab;->postCapture()V

    .line 1494
    :cond_0
    monitor-exit p0

    .line 1501
    :goto_0
    return-void

    .line 1494
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1496
    :cond_1
    monitor-enter p0

    .line 1497
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/browser/Tab;->mCapture:Landroid/graphics/Bitmap;

    .line 1498
    invoke-virtual {p0}, Lcom/android/browser/Tab;->deleteThumbnail()V

    .line 1499
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public voiceSearchSourceIsGoogle()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab;->mVoiceSearchData:Lcom/android/browser/Tab$VoiceSearchData;

    iget-boolean v0, v0, Lcom/android/browser/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
