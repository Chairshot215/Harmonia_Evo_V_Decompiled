.class public Lcom/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/browser/WebViewController;
.implements Lcom/android/browser/UiController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Controller$SelectText;,
        Lcom/android/browser/Controller$Download;,
        Lcom/android/browser/Controller$Copy;,
        Lcom/android/browser/Controller$PruneThumbnails;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final AUTOFILL_SETUP:I = 0x5

.field static final COMBO_VIEW:I = 0x1

.field private static final EMPTY_MENU:I = -0x1

.field static final FILE_SELECTED:I = 0x4

.field private static final FOCUS_NODE_HREF:I = 0x66

.field static final GOOGLE_SEARCH_SOURCE_SEARCHKEY:Ljava/lang/String; = "browser-key"

.field static final GOOGLE_SEARCH_SOURCE_TYPE:Ljava/lang/String; = "browser-type"

.field private static final INCOGNITO_URI:Ljava/lang/String; = "browser:incognito"

.field public static final LOAD_URL:I = 0x3e9

.field private static final LOGTAG:Ljava/lang/String; = "Controller"

.field static final NO_CRASH_RECOVERY:Ljava/lang/String; = "no-crash-recovery"

.field private static final OPEN_BOOKMARKS:I = 0xc9

.field static final PREFERENCES_PAGE:I = 0x3

.field private static final RELEASE_WAKELOCK:I = 0x6b

.field private static final SEND_APP_ID_EXTRA:Ljava/lang/String; = "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

.field public static final STOP_LOAD:I = 0x3ea

.field static final UPDATE_BOOKMARK_THUMBNAIL:I = 0x6c

.field private static final WAKELOCK_TIMEOUT:I = 0x493e0

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static sThumbnailBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mAutoFillSetupMessage:Landroid/os/Message;

.field private mBlockEvents:Z

.field private mBookmarksObserver:Landroid/database/ContentObserver;

.field private mCachedMenu:Landroid/view/Menu;

.field private mConfigChanged:Z

.field private mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

.field private mCurrentMenuState:I

.field private mExtendedMenuOpen:Z

.field private mFactory:Lcom/android/browser/WebViewFactory;

.field private mHandler:Landroid/os/Handler;

.field private mInLoad:Z

.field private mIntentHandler:Lcom/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUi:Lcom/android/browser/UI;

.field private mUploadHandler:Lcom/android/browser/UploadHandler;

.field private mUrlHandler:Lcom/android/browser/UrlHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 0x4
        0xb9t 0x0t 0xdt 0x7ft
        0xbat 0x0t 0xdt 0x7ft
        0xbbt 0x0t 0xdt 0x7ft
        0xbct 0x0t 0xdt 0x7ft
        0xbdt 0x0t 0xdt 0x7ft
        0xbet 0x0t 0xdt 0x7ft
        0xbft 0x0t 0xdt 0x7ft
        0xc0t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 4
    .parameter "browser"
    .parameter "preloadCrashState"

    .prologue
    const/4 v3, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 180
    const v0, 0x7f0d009f

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 213
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 225
    iput-object p1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 226
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 227
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    .line 228
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->setController(Lcom/android/browser/Controller;)V

    .line 229
    invoke-static {p0}, Lcom/android/browser/CrashRecoveryHandler;->initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    .line 230
    if-eqz p2, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->preloadCrashState()V

    .line 233
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserWebViewFactory;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserWebViewFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    .line 235
    new-instance v0, Lcom/android/browser/UrlHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UrlHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    .line 236
    new-instance v0, Lcom/android/browser/IntentHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    .line 237
    new-instance v0, Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    .line 239
    invoke-direct {p0}, Lcom/android/browser/Controller;->startHandler()V

    .line 240
    new-instance v0, Lcom/android/browser/Controller$1;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/Controller$1;-><init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 250
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    new-instance v0, Lcom/android/browser/NetworkStateHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    .line 255
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 257
    iget-object v0, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 259
    invoke-direct {p0}, Lcom/android/browser/Controller;->openIconDatabase()V

    .line 260
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p6}, Lcom/android/browser/Controller;->onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/Controller;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/Controller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/Controller;)Lcom/android/browser/UI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 601
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "source"

    .prologue
    .line 2549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2550
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    return-object v0
.end method

.method private createNewTab(ZZZ)Lcom/android/browser/Tab;
    .locals 2
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2321
    const/4 v0, 0x0

    .line 2322
    .local v0, tab:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2323
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabControl;->createNewTab(Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2324
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2325
    if-eqz p2, :cond_0

    .line 2326
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2336
    :cond_0
    :goto_0
    return-object v0

    .line 2329
    :cond_1
    if-eqz p3, :cond_2

    .line 2330
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2331
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0

    .line 2333
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 1950
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, v9

    .line 1987
    .end local p0
    :goto_0
    return-object v5

    .line 1957
    .restart local p0
    :cond_1
    const/4 v3, 0x2

    .line 1958
    .local v3, filter_scale:I
    mul-int/lit8 v7, p1, 0x2

    .line 1959
    .local v7, scaledWidth:I
    mul-int/lit8 v6, p2, 0x2

    .line 1960
    .local v6, scaledHeight:I
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v8, v7, :cond_2

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v8, v6, :cond_4

    .line 1962
    :cond_2
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    .line 1963
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1964
    sput-object v9, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1966
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    sput-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1969
    :cond_4
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1970
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v1

    .line 1971
    .local v1, contentWidth:I
    int-to-float v8, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v10

    int-to-float v11, v1

    mul-float/2addr v10, v11

    div-float v4, v8, v10

    .line 1972
    .local v4, overviewScale:F
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_5

    move-object v8, p0

    .line 1973
    check-cast v8, Lcom/android/browser/BrowserWebView;

    invoke-virtual {v8}, Lcom/android/browser/BrowserWebView;->getTitleHeight()I

    move-result v8

    neg-int v2, v8

    .line 1974
    .local v2, dy:I
    const/4 v8, 0x0

    int-to-float v10, v2

    mul-float/2addr v10, v4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1977
    .end local v2           #dy:I
    :cond_5
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1979
    instance-of v8, p0, Lcom/android/browser/BrowserWebView;

    if-eqz v8, :cond_6

    .line 1980
    check-cast p0, Lcom/android/browser/BrowserWebView;

    .end local p0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserWebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 1984
    :goto_1
    sget-object v8, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-static {v8, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1986
    .local v5, ret:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1982
    .end local v5           #ret:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 1945
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 1934
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getNextTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private getPrevTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private goLive()V
    .locals 3

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1717
    .local v0, t:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1718
    return-void
.end method

.method private maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "tab"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1061
    if-nez p4, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private onPreloginFinished(Landroid/os/Bundle;Landroid/content/Intent;JZZ)V
    .locals 16
    .parameter "icicle"
    .parameter "intent"
    .parameter "currentTabId"
    .parameter "restoreIncognitoTabs"
    .parameter "fromCrash"

    .prologue
    .line 307
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_6

    .line 308
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 314
    .local v7, extra:Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v14

    .line 315
    .local v14, urlData:Lcom/android/browser/IntentHandler$UrlData;
    const/4 v12, 0x0

    .line 316
    .local v12, t:Lcom/android/browser/Tab;
    invoke-virtual {v14}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    move-result-object v12

    .line 321
    :goto_0
    if-eqz v12, :cond_0

    .line 322
    const-string v1, "com.android.browser.application_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    .line 325
    .local v15, webView:Landroid/webkit/WebView;
    if-eqz v7, :cond_1

    .line 326
    const-string v1, "browser.initialZoomLevel"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 327
    .local v11, scale:I
    if-lez v11, :cond_1

    const/16 v1, 0x3e8

    if-gt v11, v1, :cond_1

    .line 328
    invoke-virtual {v15, v11}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 331
    .end local v11           #scale:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 355
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    .end local v15           #webView:Landroid/webkit/WebView;
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getJsEngineFlags()Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, jsFlags:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 359
    :cond_3
    const-string v1, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    sget-object v1, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 362
    :cond_4
    return-void

    .line 319
    .end local v9           #jsFlags:Ljava/lang/String;
    .restart local v7       #extra:Landroid/os/Bundle;
    .restart local v12       #t:Lcom/android/browser/Tab;
    .restart local v14       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v12

    goto :goto_0

    .line 333
    .end local v7           #extra:Landroid/os/Bundle;
    .end local v12           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v6

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;JZZ)V

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v13

    .line 336
    .local v13, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v10, restoredTabs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/browser/Tab;

    .line 338
    .restart local v12       #t:Lcom/android/browser/Tab;
    invoke-virtual {v12}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    .end local v12           #t:Lcom/android/browser/Tab;
    :cond_7
    new-instance v1, Lcom/android/browser/Controller$PruneThumbnails;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v10}, Lcom/android/browser/Controller$PruneThumbnails;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 341
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 344
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v13}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 350
    if-eqz p1, :cond_9

    if-eqz p6, :cond_2

    .line 351
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private openIconDatabase()V
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    .line 461
    .local v0, instance:Landroid/webkit/WebIconDatabase;
    new-instance v1, Lcom/android/browser/Controller$3;

    invoke-direct {v1, p0, v0}, Lcom/android/browser/Controller$3;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    invoke-static {v1}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method private pauseWebViewTimers(Lcom/android/browser/Tab;)Z
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v0, 0x1

    .line 716
    if-nez p1, :cond_0

    .line 723
    :goto_0
    return v0

    .line 718
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_1

    .line 719
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 720
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityPause(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 723
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 693
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 695
    :cond_0
    return-void
.end method

.method private resumeWebViewTimers(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 702
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 703
    .local v0, inLoad:Z
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 704
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 705
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 706
    .local v1, w:Landroid/webkit/WebView;
    invoke-static {}, Lcom/android/browser/WebViewTimersControl;->getInstance()Lcom/android/browser/WebViewTimersControl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/WebViewTimersControl;->onBrowserActivityResume(Landroid/webkit/WebView;)V

    .line 708
    .end local v1           #w:Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method private shareCurrentPage(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 567
    :cond_0
    return-void
.end method

.method static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "c"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "screenshot"

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 591
    const v1, 0x7f0c0069

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    return-void

    .line 593
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 6
    .parameter "urlData"

    .prologue
    const/4 v2, 0x0

    .line 2238
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2262
    :goto_0
    return-object v2

    .line 2241
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getPreloadedTab()Lcom/android/browser/PreloadedTabControl;

    move-result-object v3

    .line 2242
    .local v3, tabControl:Lcom/android/browser/PreloadedTabControl;
    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->getSearchBoxQueryToSubmit()Ljava/lang/String;

    move-result-object v1

    .line 2243
    .local v1, sbQuery:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2244
    iget-object v4, p1, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/browser/PreloadedTabControl;->searchBoxSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2246
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->destroy()V

    goto :goto_0

    .line 2251
    :cond_1
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2252
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getLeastUsedTab(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2253
    .local v0, leastUsed:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 2254
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2257
    .end local v0           #leastUsed:Lcom/android/browser/Tab;
    :cond_2
    invoke-virtual {v3}, Lcom/android/browser/PreloadedTabControl;->getTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 2258
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->refreshIdAfterPreload()V

    .line 2259
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->addPreloadedTab(Lcom/android/browser/Tab;)V

    .line 2260
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2261
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/android/browser/Controller$4;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller$4;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 547
    return-void
.end method

.method private startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 2535
    if-nez p3, :cond_0

    .line 2536
    const-string v1, "browser-type"

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 2540
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 2541
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2542
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2544
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2546
    return-void
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 1428
    if-nez p1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    const v2, 0x7f0d00a1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1432
    .local v0, dest:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0d00c5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1435
    .local v1, src:Landroid/view/MenuItem;
    :goto_1
    if-eqz v1, :cond_0

    .line 1436
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1437
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1432
    .end local v1           #src:Landroid/view/MenuItem;
    :cond_2
    const v2, 0x7f0d00c6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_1
.end method

.method private updateScreenshot(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 1996
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 1997
    .local v6, view:Landroid/webkit/WebView;
    if-nez v6, :cond_1

    .line 2050
    :cond_0
    :goto_0
    return-void

    .line 2001
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2002
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, originalUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2015
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2017
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2022
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/browser/Controller$10;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$10;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public activateVoiceSearchMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1105
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->showVoiceTitleBar(Ljava/lang/String;Ljava/util/List;)V

    .line 1106
    return-void
.end method

.method protected addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->addTab(Lcom/android/browser/Tab;)V

    .line 2166
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2231
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2232
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2233
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2235
    :cond_0
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1074
    return-void
.end method

.method public bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V
    .locals 3
    .parameter "startView"

    .prologue
    .line 1208
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1215
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1217
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "disable_new_window"

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1219
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1, v0}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1217
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public closeCurrentTab()V
    .locals 1

    .prologue
    .line 2372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2373
    return-void
.end method

.method protected closeCurrentTab(Z)V
    .locals 5
    .parameter "andQuit"

    .prologue
    .line 2376
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2377
    iget-object v3, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v3}, Lcom/android/browser/CrashRecoveryHandler;->clearState()V

    .line 2378
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2379
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 2398
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2383
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentPosition()I

    move-result v2

    .line 2384
    .local v2, pos:I
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2385
    .local v1, newTab:Lcom/android/browser/Tab;
    if-nez v1, :cond_2

    .line 2386
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2387
    if-nez v1, :cond_2

    .line 2388
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2391
    :cond_2
    if-eqz p1, :cond_3

    .line 2392
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2393
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2394
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2396
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method protected closeEmptyTab()V
    .locals 2

    .prologue
    .line 2185
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2186
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-nez v1, :cond_0

    .line 2188
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2190
    :cond_0
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2407
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2411
    :goto_0
    return-void

    .line 2409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;
    .locals 7
    .parameter "editExisting"

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1890
    .local v3, w:Landroid/webkit/WebView;
    if-nez v3, :cond_0

    .line 1891
    const/4 v0, 0x0

    .line 1916
    :goto_0
    return-object v0

    .line 1893
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1895
    .local v0, i:Landroid/content/Intent;
    const-string v4, "url"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    const-string v4, "title"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1897
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1898
    .local v2, touchIconUrl:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1899
    const-string v4, "touch_icon_url"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1901
    .local v1, settings:Landroid/webkit/WebSettings;
    if-eqz v1, :cond_1

    .line 1902
    const-string v4, "user_agent"

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1906
    .end local v1           #settings:Landroid/webkit/WebSettings;
    :cond_1
    const-string v4, "thumbnail"

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1909
    const-string v4, "favicon"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1910
    if-eqz p1, :cond_2

    .line 1911
    const-string v4, "check_for_dupe"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1915
    :cond_2
    const-string v4, "gravity"

    const/16 v5, 0x35

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;
    .locals 2
    .parameter "snapshotId"
    .parameter "setActive"

    .prologue
    .line 2341
    const/4 v0, 0x0

    .line 2342
    .local v0, tab:Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2343
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/TabControl;->createSnapshotTab(J)Lcom/android/browser/SnapshotTab;

    move-result-object v0

    .line 2344
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2345
    if-eqz p3, :cond_0

    .line 2346
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2351
    :cond_0
    :goto_0
    return-object v0

    .line 2349
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 409
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 410
    .local v0, mainView:Landroid/webkit/WebView;
    iget-object v3, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    .line 413
    .local v1, subView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1, v1}, Lcom/android/browser/UI;->createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 414
    return-void

    .line 410
    .end local v1           #subView:Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    goto :goto_0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2216
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 2218
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2219
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2220
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2776
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2760
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2764
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2768
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2772
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    return v0
.end method

.method doStart(Landroid/os/Bundle;Landroid/content/Intent;Z)V
    .locals 12
    .parameter "icicle"
    .parameter "intent"
    .parameter "fromCrash"

    .prologue
    .line 275
    if-eqz p1, :cond_1

    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v8, v0

    .line 277
    .local v8, lastActiveDate:Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 278
    .local v9, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 279
    .local v10, yesterday:Ljava/util/Calendar;
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 281
    if-eqz v8, :cond_2

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 286
    .local v6, restoreIncognitoTabs:Z
    :goto_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1, v6}, Lcom/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)J

    move-result-wide v4

    .line 289
    .local v4, currentTabId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 293
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 296
    :cond_0
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/browser/Controller$2;-><init>(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;JZZ)V

    invoke-static {v11, v0}, Lcom/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 303
    return-void

    .line 275
    .end local v4           #currentTabId:J
    .end local v6           #restoreIncognitoTabs:Z
    .end local v8           #lastActiveDate:Ljava/util/Calendar;
    .end local v9           #today:Ljava/util/Calendar;
    .end local v10           #yesterday:Ljava/util/Calendar;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 281
    .restart local v8       #lastActiveDate:Ljava/util/Calendar;
    .restart local v9       #today:Ljava/util/Calendar;
    .restart local v10       #yesterday:Ljava/util/Calendar;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "isReload"

    .prologue
    const/4 v2, 0x0

    .line 949
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    goto :goto_0
.end method

.method public editUrl()V
    .locals 2

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 1090
    return-void
.end method

.method public endActionMode()V
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1861
    :cond_0
    return-void
.end method

.method getActionModeHeight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1831
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102eb

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1833
    .local v0, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v1, v2

    .line 1834
    .local v1, size:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1835
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIntentHandler()Lcom/android/browser/IntentHandler;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    return-object v0
.end method

.method getMaxTabs()I
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getSettings()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/browser/UI;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Controller$5;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Controller$5;-><init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 973
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 974
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2475
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2476
    .local v0, current:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2511
    :goto_0
    return-void

    .line 2487
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2488
    invoke-virtual {v0}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_0

    .line 2492
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2493
    .local v1, parent:Lcom/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2494
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2496
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2498
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnBack()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2499
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/browser/Controller;->closeCurrentTab(Z)V

    .line 2508
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 620
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1049
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 1051
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onHideCustomView()V

    .line 1138
    iget v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1140
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1142
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isInCustomActionMode()Z
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInLoad()Z
    .locals 1

    .prologue
    .line 1874
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    return v0
.end method

.method public isMenuDown()Z
    .locals 1

    .prologue
    .line 2725
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method public loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 1
    .parameter "tab"
    .parameter "url"

    .prologue
    .line 2435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    .line 2436
    return-void
.end method

.method protected loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "tab"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2439
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2440
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2441
    invoke-virtual {p1, p2, p3}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2442
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 2444
    :cond_0
    return-void
.end method

.method protected loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 2453
    if-eqz p2, :cond_0

    .line 2454
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2455
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mVoiceIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->activateVoiceSearchMode(Landroid/content/Intent;)V

    .line 2462
    :cond_0
    :goto_0
    return-void

    .line 2456
    :cond_1
    invoke-virtual {p2}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2459
    iget-object v0, p2, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/browser/IntentHandler$UrlData;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected loadUrlFromContext(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 2415
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2416
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2418
    .local v1, view:Landroid/webkit/WebView;
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2419
    invoke-static {p1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2420
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2421
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2424
    :cond_0
    return-void

    .line 2416
    .end local v1           #view:Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1871
    :goto_0
    return-void

    .line 1869
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onActionModeFinished(Z)V

    .line 1870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1842
    iput-object p1, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 1843
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v13

    if-nez v13, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1147
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1198
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 1149
    :pswitch_1
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    if-eqz p3, :cond_1

    .line 1150
    const-string v13, "android.intent.extra.TEXT"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1151
    .local v2, action:Ljava/lang/String;
    const-string v13, "privacy_clear_history"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v13}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 1158
    .end local v2           #action:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v13, :cond_1

    .line 1159
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1165
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 1166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 1167
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_1

    .line 1171
    :pswitch_4
    if-eqz p3, :cond_1

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 1174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/android/browser/UI;->showWeb(Z)V

    .line 1175
    const-string v13, "android.intent.action.VIEW"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1176
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v9

    .line 1177
    .local v9, t:Lcom/android/browser/Tab;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 1178
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1179
    .end local v9           #t:Lcom/android/browser/Tab;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_2
    const-string v13, "open_all"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1180
    const-string v13, "open_all"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1182
    .local v12, urls:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 1183
    .local v8, parent:Lcom/android/browser/Tab;
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v7, :cond_1

    aget-object v11, v3, v4

    .line 1184
    .local v11, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v13}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    :goto_3
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8, v13, v14}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v8

    .line 1183
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1184
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 1187
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #parent:Lcom/android/browser/Tab;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #urls:[Ljava/lang/String;
    :cond_4
    const-string v13, "snapshot_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1188
    const-string v13, "snapshot_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1190
    .local v5, id:J
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-ltz v13, :cond_1

    .line 1191
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v13}, Lcom/android/browser/Controller;->createNewSnapshotTab(JZ)Lcom/android/browser/SnapshotTab;

    goto/16 :goto_1

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onBackKey()V
    .locals 2

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1228
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1238
    .end local v0           #subwindow:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1232
    .restart local v0       #subwindow:Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1235
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_0
.end method

.method protected onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 608
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 612
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 1727
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v6

    const v7, 0x7f0d00e1

    if-ne v6, v7, :cond_0

    move v3, v5

    .line 1755
    :goto_0
    return v3

    .line 1731
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1732
    .local v1, id:I
    const/4 v3, 0x1

    .line 1733
    .local v3, result:Z
    sparse-switch v1, :sswitch_data_0

    .line 1753
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 1738
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 1739
    .local v4, webView:Landroid/webkit/WebView;
    if-nez v4, :cond_1

    .line 1740
    const/4 v3, 0x0

    .line 1741
    goto :goto_0

    .line 1743
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1745
    .local v0, hrefMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/webkit/WebView;>;"
    const-string v6, "webview"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v6, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, v1, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1748
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 1733
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0020 -> :sswitch_0
        0x7f0d00d3 -> :sswitch_0
        0x7f0d00d4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 1807
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1258
    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/android/browser/TitleBar;

    if-eqz v10, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    move-object/from16 v0, p2

    instance-of v10, v0, Landroid/webkit/WebView;

    if-eqz v10, :cond_0

    move-object/from16 v9, p2

    .line 1264
    check-cast v9, Landroid/webkit/WebView;

    .line 1265
    .local v9, webview:Landroid/webkit/WebView;
    invoke-virtual {v9}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v6

    .line 1266
    .local v6, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v6, :cond_0

    .line 1270
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v8

    .line 1271
    .local v8, type:I
    if-nez v8, :cond_2

    .line 1272
    const-string v10, "Controller"

    const-string v11, "We should not show context menu when nothing is touched"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1276
    :cond_2
    const/16 v10, 0x9

    if-eq v8, v10, :cond_0

    .line 1284
    iget-object v10, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v4

    .line 1285
    .local v4, inflater:Landroid/view/MenuInflater;
    const v10, 0x7f100003

    move-object/from16 v0, p1

    invoke-virtual {v4, v10, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1288
    invoke-virtual {v6}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 1289
    .local v2, extra:Ljava/lang/String;
    const v11, 0x7f0d00c7

    const/4 v10, 0x2

    if-ne v8, v10, :cond_8

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1291
    const v11, 0x7f0d00cb

    const/4 v10, 0x4

    if-ne v8, v10, :cond_9

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1293
    const v11, 0x7f0d00ce

    const/4 v10, 0x3

    if-ne v8, v10, :cond_a

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1295
    const v11, 0x7f0d00d5

    const/4 v10, 0x5

    if-eq v8, v10, :cond_3

    const/16 v10, 0x8

    if-ne v8, v10, :cond_b

    :cond_3
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1298
    const v11, 0x7f0d00d1

    const/4 v10, 0x7

    if-eq v8, v10, :cond_4

    const/16 v10, 0x8

    if-ne v8, v10, :cond_c

    :cond_4
    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1301
    const/4 v10, 0x7

    if-eq v8, v10, :cond_5

    const/4 v10, 0x2

    if-eq v8, v10, :cond_5

    const/4 v10, 0x4

    if-eq v8, v10, :cond_5

    const/4 v10, 0x3

    if-ne v8, v10, :cond_d

    :cond_5
    const/4 v3, 0x1

    .line 1305
    .local v3, hitText:Z
    :goto_6
    const v10, 0x7f0d00d9

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1306
    if-eqz v3, :cond_6

    .line 1307
    const v10, 0x7f0d00da

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v11, v9}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1311
    :cond_6
    packed-switch v8, :pswitch_data_0

    .line 1415
    :pswitch_0
    const-string v10, "Controller"

    const-string v11, "We should not get here."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_7
    :goto_7
    iget-object v10, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    .line 1289
    .end local v3           #hitText:Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_1

    .line 1291
    :cond_9
    const/4 v10, 0x0

    goto :goto_2

    .line 1293
    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    .line 1295
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 1298
    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    .line 1301
    :cond_d
    const/4 v3, 0x0

    goto :goto_6

    .line 1313
    .restart local v3       #hitText:Z
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1314
    const v10, 0x7f0d00c8

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1317
    new-instance v1, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    .local v1, addIntent:Landroid/content/Intent;
    const-string v10, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v10, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const v10, 0x7f0d00c9

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1322
    const v10, 0x7f0d00ca

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$Copy;

    invoke-direct {v11, p0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 1328
    .end local v1           #addIntent:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1329
    const v10, 0x7f0d00cc

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mailto:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1332
    const v10, 0x7f0d00cd

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$Copy;

    invoke-direct {v11, p0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1338
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1339
    const v10, 0x7f0d00cf

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "geo:0,0?q="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1343
    const v10, 0x7f0d00d0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$Copy;

    invoke-direct {v11, p0, v2}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1350
    :pswitch_4
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1352
    iget-object v10, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v10}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v7

    .line 1353
    .local v7, showNewTab:Z
    const v10, 0x7f0d00d2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1355
    .local v5, newTabItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v10

    if-eqz v10, :cond_10

    const v10, 0x7f0c005d

    :goto_8
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1358
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1359
    if-eqz v7, :cond_e

    .line 1360
    const/16 v10, 0x8

    if-ne v10, v8, :cond_11

    .line 1361
    new-instance v10, Lcom/android/browser/Controller$6;

    invoke-direct {v10, p0, v9}, Lcom/android/browser/Controller$6;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1390
    :cond_e
    :goto_9
    const/4 v10, 0x7

    if-eq v8, v10, :cond_7

    .line 1395
    .end local v5           #newTabItem:Landroid/view/MenuItem;
    .end local v7           #showNewTab:Z
    :pswitch_5
    const/4 v10, 0x5

    if-ne v8, v10, :cond_f

    .line 1396
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1398
    :cond_f
    const v10, 0x7f0d00d7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$8;

    invoke-direct {v11, p0, v2}, Lcom/android/browser/Controller$8;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1406
    const v10, 0x7f0d00d6

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/Controller$Download;

    iget-object v12, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v13

    invoke-direct {v11, v12, v2, v13}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1409
    const v10, 0x7f0d00d8

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    new-instance v11, Lcom/android/browser/WallpaperHandler;

    iget-object v12, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12, v2}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1355
    .restart local v5       #newTabItem:Landroid/view/MenuItem;
    .restart local v7       #showNewTab:Z
    :cond_10
    const v10, 0x7f0c005c

    goto :goto_8

    .line 1377
    :cond_11
    new-instance v10, Lcom/android/browser/Controller$7;

    invoke-direct {v10, p0, v2}, Lcom/android/browser/Controller$7;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_9

    .line 1311
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1248
    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1249
    const/4 v1, 0x0

    .line 1253
    :goto_0
    return v1

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1252
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1253
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 727
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v1}, Lcom/android/browser/UploadHandler;->handled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 729
    iput-object v3, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 731
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 746
    :goto_0
    return-void

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onDestroy()V

    .line 734
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 735
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 737
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 741
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 742
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 744
    iget-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 745
    iput-object v3, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "tab"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1008
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 1009
    .local v6, w:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1011
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1016
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 916
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 917
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2580
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 2583
    .local v1, noModifiers:Z
    if-nez v1, :cond_2

    const/16 v7, 0x52

    if-eq v7, p1, :cond_0

    const/16 v7, 0x71

    if-eq v7, p1, :cond_0

    const/16 v7, 0x72

    if-ne v7, p1, :cond_2

    .line 2587
    :cond_0
    iput-boolean v6, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2690
    :cond_1
    :goto_0
    return v5

    .line 2591
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 2592
    .local v4, webView:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 2593
    .local v3, tab:Lcom/android/browser/Tab;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 2595
    const/16 v5, 0x1000

    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 2596
    .local v0, ctrl:Z
    invoke-virtual {p2, v6}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 2598
    .local v2, shift:Z
    sparse-switch p1, :sswitch_data_0

    .line 2690
    :cond_3
    iget-object v5, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v5, p1, p2}, Lcom/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2600
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2601
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2603
    invoke-direct {p0}, Lcom/android/browser/Controller;->getPrevTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    :goto_1
    move v5, v6

    .line 2608
    goto :goto_0

    .line 2606
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/Controller;->getNextTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto :goto_1

    .line 2615
    :sswitch_1
    if-eqz v2, :cond_6

    .line 2616
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageUp()V

    :cond_5
    :goto_2
    move v5, v6

    .line 2620
    goto :goto_0

    .line 2617
    :cond_6
    if-eqz v1, :cond_5

    .line 2618
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageDown()V

    goto :goto_2

    .line 2622
    :sswitch_2
    if-eqz v1, :cond_3

    .line 2623
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v5, v6

    .line 2624
    goto :goto_0

    .line 2626
    :sswitch_3
    if-eqz v1, :cond_3

    .line 2627
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2628
    goto :goto_0

    .line 2630
    :sswitch_4
    if-eqz v0, :cond_3

    .line 2631
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goBack()V

    move v5, v6

    .line 2632
    goto :goto_0

    .line 2636
    :sswitch_5
    if-eqz v0, :cond_3

    .line 2637
    invoke-virtual {v3}, Lcom/android/browser/Tab;->goForward()V

    move v5, v6

    .line 2638
    goto :goto_0

    .line 2642
    :sswitch_6
    if-eqz v0, :cond_3

    .line 2643
    invoke-virtual {v4}, Landroid/webkit/WebView;->selectAll()V

    move v5, v6

    .line 2644
    goto :goto_0

    .line 2649
    :sswitch_7
    if-eqz v0, :cond_3

    .line 2650
    invoke-virtual {v4}, Landroid/webkit/WebView;->copySelection()Z

    move v5, v6

    .line 2651
    goto :goto_0

    .line 2673
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2674
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2675
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    :goto_3
    move v5, v6

    .line 2679
    goto/16 :goto_0

    .line 2677
    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_3

    .line 2598
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x1d -> :sswitch_6
        0x1f -> :sswitch_7
        0x30 -> :sswitch_8
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2694
    packed-switch p1, :pswitch_data_0

    .line 2702
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2696
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isWebShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    sget-object v0, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    .line 2698
    const/4 v0, 0x1

    goto :goto_0

    .line 2694
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2706
    const/16 v1, 0x52

    if-ne v1, p1, :cond_1

    .line 2707
    iput-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 2708
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2709
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onMenuKey()Z

    move-result v0

    .line 2721
    :cond_0
    :goto_0
    return v0

    .line 2712
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2713
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2715
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 2717
    const/4 v0, 0x1

    goto :goto_0

    .line 2713
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onLowMemory()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 754
    return-void
.end method

.method protected onMenuKey()Z
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onMenuKey()Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1773
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_2

    .line 1774
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_0

    .line 1778
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1797
    :goto_0
    return v2

    .line 1780
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_1

    .line 1781
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1782
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_0

    .line 1786
    :cond_1
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1787
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onExtendedMenuClosed(Z)V

    goto :goto_0

    .line 1792
    :cond_2
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1793
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1794
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1795
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    if-nez v11, :cond_0

    .line 1529
    const/4 v11, 0x0

    .line 1712
    :goto_0
    return v11

    .line 1531
    :cond_0
    iget-boolean v11, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v11, :cond_1

    .line 1536
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 1538
    :cond_1
    iget-object v11, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v11, p1}, Lcom/android/browser/UI;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1540
    const/4 v11, 0x1

    goto :goto_0

    .line 1542
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 1710
    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1545
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 1712
    :cond_3
    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    .line 1549
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1553
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->editUrl()V

    goto :goto_1

    .line 1557
    :pswitch_4
    sget-object v11, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v11}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1561
    :pswitch_5
    sget-object v11, Lcom/android/browser/UI$ComboViews;->History:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v11}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1565
    :pswitch_6
    sget-object v11, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {p0, v11}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Lcom/android/browser/UI$ComboViews;)V

    goto :goto_1

    .line 1569
    :pswitch_7
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/browser/Controller;->createBookmarkCurrentPageIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 1570
    .local v0, bookmarkIntent:Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 1571
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1576
    .end local v0           #bookmarkIntent:Landroid/content/Intent;
    :pswitch_8
    iget-boolean v11, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v11, :cond_4

    .line 1577
    invoke-virtual {p0}, Lcom/android/browser/Controller;->stopLoading()V

    goto :goto_1

    .line 1579
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1584
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/browser/Tab;->goBack()V

    goto :goto_1

    .line 1588
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/browser/Tab;->goForward()V

    goto :goto_1

    .line 1593
    :pswitch_b
    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1594
    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 1597
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    goto :goto_1

    .line 1601
    :pswitch_c
    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 1602
    .local v2, current:Lcom/android/browser/Tab;
    iget-object v11, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v2, v11}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    goto :goto_1

    .line 1606
    .end local v2           #current:Lcom/android/browser/Tab;
    :pswitch_d
    new-instance v6, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v12, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1607
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x3

    invoke-virtual {v11, v6, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1613
    .end local v6           #intent:Landroid/content/Intent;
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1617
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 1618
    .local v8, source:Lcom/android/browser/Tab;
    if-eqz v8, :cond_3

    .line 1619
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1620
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-virtual {v8}, Lcom/android/browser/Tab;->createSnapshotValues()Landroid/content/ContentValues;

    move-result-object v9

    .line 1621
    .local v9, values:Landroid/content/ContentValues;
    if-eqz v9, :cond_6

    .line 1622
    new-instance v11, Lcom/android/browser/Controller$9;

    invoke-direct {v11, p0, v1, v9}, Lcom/android/browser/Controller$9;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/android/browser/Tab;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/browser/Controller$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 1639
    :cond_6
    iget-object v11, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const v12, 0x7f0c0058

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1645
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v8           #source:Lcom/android/browser/Tab;
    .end local v9           #values:Landroid/content/ContentValues;
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/browser/Controller;->showPageInfo()V

    goto/16 :goto_1

    .line 1649
    :pswitch_11
    invoke-direct {p0}, Lcom/android/browser/Controller;->goLive()V

    .line 1650
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1653
    :pswitch_12
    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 1654
    .local v3, currentTab:Lcom/android/browser/Tab;
    if-nez v3, :cond_7

    .line 1655
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1657
    :cond_7
    invoke-direct {p0, v3}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1661
    .end local v3           #currentTab:Lcom/android/browser/Tab;
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1665
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 1669
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1673
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1677
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_1

    .line 1681
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v10

    .line 1682
    .local v10, web:Landroid/webkit/WebView;
    iget-object v11, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11, v10}, Lcom/android/browser/BrowserSettings;->toggleDesktopUseragent(Landroid/webkit/WebView;)V

    .line 1683
    invoke-virtual {v10}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1695
    .end local v10           #web:Landroid/webkit/WebView;
    :pswitch_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1696
    .local v7, menuid:I
    const/4 v5, 0x0

    .local v5, id:I
    :goto_2
    sget-object v11, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v11, v11

    if-ge v5, v11, :cond_3

    .line 1697
    sget-object v11, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v11, v11, v5

    if-ne v11, v7, :cond_8

    .line 1698
    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 1699
    .local v4, desiredTab:Lcom/android/browser/Tab;
    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v11

    if-eq v4, v11, :cond_3

    .line 1701
    invoke-virtual {p0, v4}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    goto/16 :goto_1

    .line 1696
    .end local v4           #desiredTab:Lcom/android/browser/Tab;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1542
    :pswitch_data_0
    .packed-switch 0x7f0d00a1
        :pswitch_8
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_12
        :pswitch_e
        :pswitch_18
        :pswitch_f
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_10
        :pswitch_d
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_17
        :pswitch_c
        :pswitch_15
        :pswitch_16
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_9
        :pswitch_3
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1801
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1802
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 1803
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/16 v3, 0x6c

    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 835
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/Controller;->didUserStopLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 844
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 852
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 853
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 861
    :cond_3
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 862
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    const/4 v3, 0x0

    .line 797
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 801
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 803
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 811
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 812
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 814
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 815
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 817
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 819
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 823
    invoke-static {v0}, Lcom/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 623
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/android/browser/Controller;->hideCustomView()V

    .line 626
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    .line 627
    const-string v2, "Controller"

    const-string v3, "BrowserActivity is already paused."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    :goto_0
    return-void

    .line 630
    :cond_2
    iput-boolean v4, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 631
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 632
    .local v1, tab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_4

    .line 633
    invoke-virtual {v1}, Lcom/android/browser/Tab;->pause()V

    .line 634
    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 635
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_3

    .line 636
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 638
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "Browser"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 640
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_3
    iget-object v2, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 641
    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    :cond_4
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2}, Lcom/android/browser/UI;->onPause()V

    .line 646
    iget-object v2, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v2}, Lcom/android/browser/NetworkStateHandler;->onPause()V

    .line 648
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 649
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/browser/NfcHandler;->unregister(Landroid/app/Activity;)V

    .line 650
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 651
    sget-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 652
    const/4 v2, 0x0

    sput-object v2, Lcom/android/browser/Controller;->sThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0d00b4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f0d009f

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 1445
    iput-object p1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1449
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1458
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 1459
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1460
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1461
    invoke-interface {p1, v5, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1466
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 1467
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1451
    :pswitch_0
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1452
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1453
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1454
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 1449
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 867
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 869
    .local v0, newProgress:I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 870
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 878
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v1, :cond_0

    .line 879
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 880
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 891
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 892
    return-void

    .line 883
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-nez v1, :cond_0

    .line 887
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 888
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 980
    const/4 v3, 0x0

    .line 981
    .local v3, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 983
    .local v1, password:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v2

    .line 986
    .local v2, reuseHttpAuthUsernamePassword:Z
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 987
    invoke-virtual {p2, p4, p5}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, credentials:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 989
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 990
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 994
    .end local v0           #credentials:[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 995
    invoke-virtual {p3, v3, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :goto_0
    return-void

    .line 997
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->suppressDialog()Z

    move-result v4

    if-nez v4, :cond_2

    .line 998
    iget-object v4, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 3
    .parameter "tab"
    .parameter "title"

    .prologue
    .line 901
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 902
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, pageUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_1

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onResume()V
    .locals 3

    .prologue
    .line 672
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v1, :cond_0

    .line 673
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already resumed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 677
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 678
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 680
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/Controller;->releaseWakeLock()V

    .line 684
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onResume()V

    .line 685
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->onResume()V

    .line 686
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 687
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/android/browser/NfcHandler;->register(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    goto :goto_0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 665
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    const-string v0, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 669
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 2746
    const/4 v0, 0x1

    return v0
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 404
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onUpdatedSecurityState(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 897
    return-void
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2467
    invoke-virtual {p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    invoke-virtual {p1}, Lcom/android/browser/Tab;->goBack()V

    .line 2472
    :goto_0
    return-void

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/Tab;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    .line 1763
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1921
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UploadHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 1922
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1923
    return-void
.end method

.method public openIncognitoTab()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2285
    const-string v0, "browser:incognito"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openOptionsMenu()V
    .locals 1

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->openOptionsMenu()V

    .line 1770
    return-void
.end method

.method public openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;
    .locals 3
    .parameter "urlData"

    .prologue
    const/4 v2, 0x1

    .line 2268
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->showPreloadedTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2269
    .local v0, tab:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2270
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2271
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2272
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2275
    :cond_0
    return-object v0
.end method

.method public openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;
    .locals 6
    .parameter "url"
    .parameter "parent"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2297
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;
    .locals 6
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"

    .prologue
    .line 2291
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public openTab(Ljava/lang/String;ZZZLcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "incognito"
    .parameter "setActive"
    .parameter "useCurrent"
    .parameter "parent"

    .prologue
    .line 2303
    invoke-direct {p0, p2, p3, p4}, Lcom/android/browser/Controller;->createNewTab(ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2304
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 2305
    if-eqz p5, :cond_0

    if-eq p5, v0, :cond_0

    .line 2306
    invoke-virtual {p5, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 2308
    :cond_0
    if-eqz p1, :cond_1

    .line 2309
    invoke-virtual {p0, v0, p1}, Lcom/android/browser/Controller;->loadUrl(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 2312
    :cond_1
    return-object v0
.end method

.method public openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2280
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method protected pageDown()V
    .locals 2

    .prologue
    .line 1083
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1084
    return-void
.end method

.method protected pageUp()V
    .locals 2

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1080
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 2742
    return-void
.end method

.method public removeSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2224
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2225
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2227
    :cond_0
    return-void
.end method

.method protected removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->removeTab(Lcom/android/browser/Tab;)V

    .line 2170
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2171
    iget-object v0, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v0}, Lcom/android/browser/CrashRecoveryHandler;->backupState()V

    .line 2172
    return-void
.end method

.method protected reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 1
    .parameter "appTab"
    .parameter "urlData"

    .prologue
    .line 2194
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2197
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V

    .line 2199
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;)V

    .line 2201
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2202
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 2204
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2211
    :goto_0
    return-void

    .line 2208
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2209
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    .line 1110
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2177
    if-eqz p1, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2180
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2182
    :cond_0
    return-void
.end method

.method public setBlockEvents(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2756
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mBlockEvents:Z

    .line 2757
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 762
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 767
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 768
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lcom/android/browser/UI;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method setUi(Lcom/android/browser/UI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    .line 428
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2732
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    iput-object p1, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 2736
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2737
    return-void
.end method

.method public shareCurrentPage()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    .line 557
    return-void
.end method

.method public shouldCaptureThumbnails()Z
    .locals 1

    .prologue
    .line 2751
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->shouldCaptureThumbnails()Z

    move-result v0

    return v0
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1042
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 1045
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 1119
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    invoke-interface {p4}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/browser/UI;->showCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1127
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1129
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showPageInfo()V
    .locals 4

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;ZLjava/lang/String;)V

    .line 1723
    return-void
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1038
    return-void
.end method

.method public showVoiceSearchResults(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 2520
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 2522
    .local v2, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v3

    .local v3, prov:Landroid/content/ContentProvider;
    move-object v0, v3

    .line 2523
    check-cast v0, Lcom/android/browser/provider/BrowserProvider;

    .line 2524
    .local v0, bp:Lcom/android/browser/provider/BrowserProvider;
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/browser/provider/BrowserProvider;->setQueryResults(Ljava/util/ArrayList;)V

    .line 2525
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2527
    const-string v4, "browser-key"

    invoke-direct {p0, v4}, Lcom/android/browser/Controller;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2529
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "android.search.CONTEXT_IS_VOICE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2530
    invoke-direct {p0, p1, v6, v1, v6}, Lcom/android/browser/Controller;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2531
    return-void
.end method

.method start(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v1, "no-crash-recovery"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 264
    .local v0, noCrashRecovery:Z
    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mCrashRecoveryHandler:Lcom/android/browser/CrashRecoveryHandler;

    invoke-virtual {v1, p2}, Lcom/android/browser/CrashRecoveryHandler;->startRecovery(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startVoiceSearch()V
    .locals 3

    .prologue
    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v1, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1099
    const-string v1, "android.speech.extra.WEB_SEARCH_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1101
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 777
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 778
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 779
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 780
    .local v1, w:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 781
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, v0}, Lcom/android/browser/UI;->onPageStopped(Lcom/android/browser/Tab;)V

    .line 782
    return-void
.end method

.method public supportsVoiceSearch()Z
    .locals 2

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 1114
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchToTab(Lcom/android/browser/Tab;)Z
    .locals 2
    .parameter "tab"

    .prologue
    .line 2362
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2363
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    .line 2364
    :cond_0
    const/4 v1, 0x0

    .line 2367
    :goto_0
    return v1

    .line 2366
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2367
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V
    .locals 23
    .parameter "tab"
    .parameter "menu"

    .prologue
    .line 1472
    const/4 v4, 0x0

    .line 1473
    .local v4, canGoBack:Z
    const/4 v5, 0x0

    .line 1474
    .local v5, canGoForward:Z
    const/4 v11, 0x0

    .line 1475
    .local v11, isHome:Z
    const/4 v10, 0x0

    .line 1476
    .local v10, isDesktopUa:Z
    const/4 v12, 0x0

    .line 1477
    .local v12, isLive:Z
    if-eqz p1, :cond_0

    .line 1478
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v4

    .line 1479
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->canGoForward()Z

    move-result v5

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/browser/BrowserSettings;->hasDesktopUseragent(Landroid/webkit/WebView;)Z

    move-result v10

    .line 1482
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v21

    if-nez v21, :cond_2

    const/4 v12, 0x1

    .line 1484
    :cond_0
    :goto_0
    const v21, 0x7f0d00c1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1485
    .local v3, back:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1487
    const v21, 0x7f0d00b6

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1488
    .local v9, home:Landroid/view/MenuItem;
    if-nez v11, :cond_3

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1490
    const v21, 0x7f0d00a2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1491
    .local v8, forward:Landroid/view/MenuItem;
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/Controller;->mInLoad:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const v21, 0x7f0d00c5

    :goto_2
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 1494
    .local v19, source:Landroid/view/MenuItem;
    const v21, 0x7f0d00a1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1495
    .local v7, dest:Landroid/view/MenuItem;
    if-eqz v19, :cond_1

    if-eqz v7, :cond_1

    .line 1496
    invoke-interface/range {v19 .. v19}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1497
    invoke-interface/range {v19 .. v19}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1499
    :cond_1
    const v21, 0x7f0d00a0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1, v12}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1503
    .local v15, pm:Landroid/content/pm/PackageManager;
    new-instance v17, Landroid/content/Intent;

    const-string v21, "android.intent.action.SEND"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1504
    .local v17, send:Landroid/content/Intent;
    const-string v21, "text/plain"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    const/high16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1507
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    const v21, 0x7f0d00a7

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    if-eqz v16, :cond_5

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v13

    .line 1510
    .local v13, isNavDump:Z
    const v21, 0x7f0d00b2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1511
    .local v14, nav:Landroid/view/MenuItem;
    invoke-interface {v14, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1512
    invoke-interface {v14, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v18

    .line 1515
    .local v18, showDebugSettings:Z
    const v21, 0x7f0d00b3

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1516
    .local v6, counter:Landroid/view/MenuItem;
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1517
    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1518
    const v21, 0x7f0d00a9

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 1519
    .local v20, uaSwitcher:Landroid/view/MenuItem;
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1520
    const v21, 0x7f0d00a6

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1, v12}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1521
    const v22, 0x7f0d00ab

    if-nez v12, :cond_6

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1522
    const v21, 0x7f0d00ad

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/UI;->updateMenuState(Lcom/android/browser/Tab;Landroid/view/Menu;)V

    .line 1525
    return-void

    .line 1482
    .end local v3           #back:Landroid/view/MenuItem;
    .end local v6           #counter:Landroid/view/MenuItem;
    .end local v7           #dest:Landroid/view/MenuItem;
    .end local v8           #forward:Landroid/view/MenuItem;
    .end local v9           #home:Landroid/view/MenuItem;
    .end local v13           #isNavDump:Z
    .end local v14           #nav:Landroid/view/MenuItem;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    .end local v17           #send:Landroid/content/Intent;
    .end local v18           #showDebugSettings:Z
    .end local v19           #source:Landroid/view/MenuItem;
    .end local v20           #uaSwitcher:Landroid/view/MenuItem;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1488
    .restart local v3       #back:Landroid/view/MenuItem;
    .restart local v9       #home:Landroid/view/MenuItem;
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1493
    .restart local v8       #forward:Landroid/view/MenuItem;
    :cond_4
    const v21, 0x7f0d00c6

    goto/16 :goto_2

    .line 1507
    .restart local v7       #dest:Landroid/view/MenuItem;
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    .restart local v16       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v17       #send:Landroid/content/Intent;
    .restart local v19       #source:Landroid/view/MenuItem;
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1521
    .restart local v6       #counter:Landroid/view/MenuItem;
    .restart local v13       #isNavDump:Z
    .restart local v14       #nav:Landroid/view/MenuItem;
    .restart local v18       #showDebugSettings:Z
    .restart local v20       #uaSwitcher:Landroid/view/MenuItem;
    :cond_6
    const/16 v21, 0x0

    goto :goto_4
.end method

.method viewDownloads()V
    .locals 2

    .prologue
    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1828
    return-void
.end method
