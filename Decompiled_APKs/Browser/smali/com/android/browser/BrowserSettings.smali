.class public Lcom/android/browser/BrowserSettings;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/browser/PreferenceKeys;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$2;
    }
.end annotation


# static fields
.field private static final DEAULT_PRELOAD_SECURE_SETTING_KEY:Ljava/lang/String; = "browser_default_preload_setting"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_ZOOM_START_VAL:I = 0x5

.field private static final DOUBLE_TAP_ZOOM_STEP:I = 0x5

.field private static final FROYO_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

.field private static final HONEYCOMB_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Linux; U; Android 3.1; en-us; Xoom Build/HMJ25) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

.field private static final IPAD_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

.field private static final MIN_FONT_SIZE_OFFSET:I = 0x5

.field private static final TEXT_ZOOM_START_VAL:I = 0xa

.field private static final TEXT_ZOOM_STEP:I = 0x5

.field private static final USER_AGENTS:[Ljava/lang/String;

.field private static sFactoryResetUrl:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstance:Lcom/android/browser/BrowserSettings;


# instance fields
.field private mAppCachePath:Ljava/lang/String;

.field private mAutofillHandler:Lcom/android/browser/AutofillHandler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCustomUserAgents:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSizeMult:F

.field private mManagedSettings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNeedsSharedSync:Z

.field private mPageCacheCapacity:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchEngine:Lcom/android/browser/search/SearchEngine;

.field private mSetup:Ljava/lang/Runnable;

.field private mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_0 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8A293 Safari/6531.22.7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Mozilla/5.0 (Linux; U; Android 3.1; en-us; Xoom Build/HMJ25) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    .line 113
    sput-boolean v3, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 115
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    .line 118
    iput v1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    .line 166
    new-instance v0, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 137
    new-instance v0, Lcom/android/browser/AutofillHandler;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/browser/AutofillHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    .line 138
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    .line 139
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    .line 140
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->asyncLoadFromDb()V

    .line 141
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSetup:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/browser/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/BrowserSettings;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/browser/BrowserSettings;Lcom/android/browser/WebStorageSizeManager;)Lcom/android/browser/WebStorageSizeManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$TextSize;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-boolean p0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    return p0
.end method

.method public static getAdjustedMinimumFontSize(I)I
    .locals 1
    .parameter "rawValue"

    .prologue
    .line 539
    add-int/lit8 p0, p0, 0x1

    .line 540
    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    .line 541
    add-int/lit8 p0, p0, 0x3

    .line 543
    :cond_0
    return p0
.end method

.method private getAppCachePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "appcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAppCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 362
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 363
    sget-object v0, Lcom/android/browser/BrowserSettings;->sFactoryResetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public static getPreloadAlwaysPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreloadOnWifiOnlyPreferenceString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRawDoubleTapZoom(I)I
    .locals 1
    .parameter "percent"

    .prologue
    .line 561
    add-int/lit8 v0, p0, -0x64

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method static getRawTextZoom(I)I
    .locals 1
    .parameter "percent"

    .prologue
    .line 552
    add-int/lit8 v0, p0, -0x64

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_size"

    const-string v3, "NORMAL"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, textSize:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sInstance:Lcom/android/browser/BrowserSettings;

    .line 128
    return-void
.end method

.method private static requireInitialization()V
    .locals 2

    .prologue
    .line 229
    const-class v1, Lcom/android/browser/BrowserSettings;

    monitor-enter v1

    .line 230
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 232
    :try_start_1
    const-class v0, Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0

    .line 236
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private syncManagedSettings()V
    .locals 5

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 326
    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v4

    .line 327
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 330
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebSettings;

    .line 331
    .local v2, settings:Landroid/webkit/WebSettings;
    if-nez v2, :cond_0

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 337
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 335
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;>;"
    .restart local v1       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .restart local v2       #settings:Landroid/webkit/WebSettings;
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    goto :goto_0

    .line 337
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/webkit/WebSettings;>;"
    .end local v2           #settings:Landroid/webkit/WebSettings;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    return-void
.end method

.method private syncSetting(Landroid/webkit/WebSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableGeolocation()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascript()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableLightTouch()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableNavDump()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSkiaHardwareAccelerated()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setHardwareAccelSkiaEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableVisualIndicator()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setShowVisualIndicator(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultTextEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getMinimumFontSize()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->forceEnableUserScalable()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setForceUserScalable(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 255
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getTextZoom()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDoubleTapZoom()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDoubleTapZoom(I)V

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isAutofillEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAutoFillEnabled(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->blockPopupWindows()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadImages()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->loadPageInOverviewMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->rememberPasswords()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->saveFormdata()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isWideViewport()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;)V

    .line 267
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    .local v0, ua:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 274
    :goto_1
    const-string v2, "inverted"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useInvertedRendering()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_2
    invoke-virtual {p1, v2, v1}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "inverted_contrast"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getInvertedContrast()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "enable_cpu_upload_path"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableCpuUploadPath()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "true"

    :goto_3
    invoke-virtual {p1, v2, v1}, Landroid/webkit/WebSettings;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 259
    .end local v0           #ua:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 271
    .restart local v0       #ua:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_2
    const-string v1, "false"

    goto :goto_2

    .line 280
    :cond_3
    const-string v1, "false"

    goto :goto_3
.end method

.method private syncSharedSettings()V
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    .line 318
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->acceptCookies()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->enableJavascriptConsole()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setShouldShowErrorConsole(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method private syncStaticSettings(Landroid/webkit/WebSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 290
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getPageCacheCapacity()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 294
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 296
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    .line 301
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 304
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 306
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 307
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setWorkersEnabled(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 311
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->getAppCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "databases"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    const-string v1, "geolocation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private updateSearchEngine(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getSearchEngineName()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, searchEngineName:Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    .line 419
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v2, v2, Lcom/android/browser/InstantSearchEngine;

    if-eqz v2, :cond_3

    .line 420
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v2, Lcom/android/browser/InstantSearchEngine;

    iget-object v3, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v2, v3}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 423
    :cond_3
    return-void
.end method


# virtual methods
.method public acceptCookies()Z
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "accept_cookies"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public autofitPages()Z
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofit_pages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blockPopupWindows()Z
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "block_popup_windows"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 449
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 451
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 452
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 455
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearCookies()V
    .locals 1

    .prologue
    .line 458
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 459
    return-void
.end method

.method public clearDatabases()V
    .locals 1

    .prologue
    .line 484
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 485
    return-void
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 469
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 471
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 475
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 463
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 464
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 465
    return-void
.end method

.method public clearLocationAccess()V
    .locals 1

    .prologue
    .line 488
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 489
    return-void
.end method

.method public clearPasswords()V
    .locals 2

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 479
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 480
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 481
    return-void
.end method

.method public enableCpuUploadPath()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 712
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_cpu_upload_path"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableGeolocation()Z
    .locals 3

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_geolocation"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascript()Z
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_javascript"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public enableJavascriptConsole()Z
    .locals 3

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 722
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "javascript_console"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableLightTouch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_light_touch"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableNavDump()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_nav_dump"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public enableVisualIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 705
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_visual_indicator"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public forceEnableUserScalable()Z
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "force_userscalable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAdjustedDoubleTapZoom(I)I
    .locals 2
    .parameter "rawValue"

    .prologue
    .line 556
    add-int/lit8 v0, p1, -0x5

    mul-int/lit8 p1, v0, 0x5

    .line 557
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAdjustedTextZoom(I)I
    .locals 2
    .parameter "rawValue"

    .prologue
    .line 547
    add-int/lit8 v0, p1, -0xa

    mul-int/lit8 p1, v0, 0x5

    .line 548
    add-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget v1, p0, Lcom/android/browser/BrowserSettings;->mFontSizeMult:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 503
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPreloadSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 842
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "browser_default_preload_setting"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, preload:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 847
    :cond_0
    return-object v0
.end method

.method public getDefaultTextEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_text_encoding"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 4

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_zoom"

    const-string v3, "MEDIUM"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, zoom:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v1

    return-object v1
.end method

.method public getDoubleTapZoom()I
    .locals 4

    .prologue
    .line 598
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 599
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "double_tap_zoom"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 600
    .local v0, doubleTapZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedDoubleTapZoom(I)I

    move-result v1

    return v1
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "homepage"

    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInvertedContrast()F
    .locals 4

    .prologue
    .line 799
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "inverted_contrast"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4120

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getJsEngineFlags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const-string v0, ""

    .line 771
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "js_engine_flags"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 2

    .prologue
    .line 367
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 368
    .local v0, layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->autofitPages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isSmallScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 382
    :cond_1
    :goto_0
    return-object v0

    .line 375
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isNormalLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0

    .line 378
    :cond_3
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_0
.end method

.method public getMinimumFontSize()I
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "min_font_size"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 580
    .local v0, minFont:I
    invoke-static {v0}, Lcom/android/browser/BrowserSettings;->getAdjustedMinimumFontSize(I)I

    move-result v1

    return v1
.end method

.method public getPageCacheCapacity()I
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 387
    iget v0, p0, Lcom/android/browser/BrowserSettings;->mPageCacheCapacity:I

    return v0
.end method

.method public getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 4

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "plugin_state"

    const-string v3, "ON"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, state:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    return-object v1
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getPreloadEnabled()Ljava/lang/String;
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "preload_when"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getDefaultPreloadSetting()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getSearchEngineName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "search_engine"

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 4

    .prologue
    .line 588
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 589
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "text_zoom"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 590
    .local v0, textZoom:I
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->getAdjustedTextZoom(I)I

    move-result v1

    return v1
.end method

.method public getUserAgent()I
    .locals 3

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user_agent"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 392
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public hasDesktopUseragent(Landroid/webkit/WebView;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 521
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutofillEnabled()Z
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autofill_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 3

    .prologue
    .line 433
    invoke-static {}, Lcom/android/browser/BrowserSettings;->requireInitialization()V

    .line 434
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "debug_menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 680
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isNormalLayout()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normal_layout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSkiaHardwareAccelerated()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_hardware_accel_skia"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSmallScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 726
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "small_screen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isTracing()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable_tracing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isWideViewport()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 733
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "wide_viewport"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public loadImages()Z
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_images"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loadPageInOverviewMode()Z
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "load_page"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 344
    const-string v0, "search_engine"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 347
    :cond_0
    const-string v0, "use_instant_search"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserSettings;->updateSearchEngine(Z)V

    .line 350
    :cond_1
    const-string v0, "fullscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->useFullscreen()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setFullscreen(Z)V

    .line 359
    :cond_2
    :goto_0
    return-void

    .line 354
    :cond_3
    const-string v0, "enable_quick_controls"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getUi()Lcom/android/browser/UI;

    move-result-object v0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->setUseQuickControls(Z)V

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "open_in_background"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rememberPasswords()Z
    .locals 3

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "remember_passwords"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetDefaultPreferences()V
    .locals 6

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "last_autologin_time"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 494
    .local v0, gal:J
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_autologin_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 499
    return-void
.end method

.method public saveFormdata()Z
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "save_formdata"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V
    .locals 1
    .parameter "profile"
    .parameter "msg"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0}, Lcom/android/browser/AutofillHandler;->waitForLoad()V

    .line 508
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mAutofillHandler:Lcom/android/browser/AutofillHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/AutofillHandler;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 513
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncManagedSettings()V

    .line 514
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autofill_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 673
    return-void
.end method

.method public setController(Lcom/android/browser/Controller;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    .line 146
    sget-boolean v0, Lcom/android/browser/BrowserSettings;->sInitialized:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    instance-of v0, v0, Lcom/android/browser/InstantSearchEngine;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mSearchEngine:Lcom/android/browser/search/SearchEngine;

    check-cast v0, Lcom/android/browser/InstantSearchEngine;

    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0, v1}, Lcom/android/browser/InstantSearchEngine;->setController(Lcom/android/browser/Controller;)V

    .line 153
    :cond_1
    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "debug_menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 440
    if-nez p1, :cond_0

    .line 442
    const-string v1, "enable_hardware_accel_skia"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 445
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "double_tap_zoom"

    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getRawDoubleTapZoom(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    return-void
.end method

.method public setHomePage(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "homepage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 665
    return-void
.end method

.method public setTextZoom(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_zoom"

    invoke-static {p1}, Lcom/android/browser/BrowserSettings;->getRawTextZoom(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 595
    return-void
.end method

.method public showSecurityWarnings()Z
    .locals 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_security_warnings"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public startManagingSettings(Landroid/webkit/WebSettings;)V
    .locals 3
    .parameter "settings"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->mNeedsSharedSync:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->syncSharedSettings()V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncStaticSettings(Landroid/webkit/WebSettings;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->syncSetting(Landroid/webkit/WebSettings;)V

    .line 162
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mManagedSettings:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserSettings;->setDebugEnabled(Z)V

    .line 518
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleDesktopUseragent(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 529
    .local v0, settings:Landroid/webkit/WebSettings;
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v1, Lcom/android/browser/BrowserSettings;->USER_AGENTS:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getUserAgent()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mCustomUserAgents:Ljava/util/WeakHashMap;

    const-string v2, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v1, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public useFullscreen()Z
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInstantSearch()Z
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "use_instant_search"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useInvertedRendering()Z
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "inverted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public useMostVisitedHomepage()Z
    .locals 2

    .prologue
    .line 783
    const-string v0, "content://com.android.browser.home/"

    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public useQuickControls()Z
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enable_quick_controls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
