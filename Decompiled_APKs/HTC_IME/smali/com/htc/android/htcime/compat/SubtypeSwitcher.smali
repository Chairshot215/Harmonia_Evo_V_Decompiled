.class public Lcom/htc/android/htcime/compat/SubtypeSwitcher;
.super Ljava/lang/Object;
.source "SubtypeSwitcher.java"


# static fields
.field private static DBG:Z = false

.field private static final KEYBOARD_MODE:Ljava/lang/String; = "keyboard"

.field private static final LOCALE_SEPARATER:C = '_'

.field private static final SUBTYPE_EXTRAVALUE_REQUIRE_NETWORK_CONNECTIVITY:Ljava/lang/String; = "requireNetworkConnectivity"

.field public static final SUBTYPE_EXTRA_VALUE_KEYBOARD_LOCALE:Ljava/lang/String; = "KeyboardLocale"

.field private static final TAG:Ljava/lang/String; = null

.field private static final VOICE_MODE:Ljava/lang/String; = "voice"

.field private static final sInstance:Lcom/htc/android/htcime/compat/SubtypeSwitcher;


# instance fields
.field private mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

.field private final mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

.field private mInputLocale:Ljava/util/Locale;

.field private mInputLocaleStr:Ljava/lang/String;

.field private mIsNetworkConnected:Z

.field private mIsSystemLanguageSameAsInputLanguage:Z

.field private final mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mNeedsToDisplayLanguage:Z

.field private mResources:Landroid/content/res/Resources;

.field private mService:Lcom/htc/android/htcime/HTCIMEService;

.field private mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

.field private mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    .line 28
    const-class v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->sInstance:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x5f

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/compat/SubtypeSwitcher;)Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "hay"
    .parameter "needle"

    .prologue
    .line 357
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 358
    .local v1, element:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    const/4 v4, 0x1

    .line 361
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 357
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/htc/android/htcime/compat/SubtypeSwitcher;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->sInstance:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    return-object v0
.end method

.method private getSubtypeIcon(Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "imi"
    .parameter "subtype"

    .prologue
    const/4 v6, 0x0

    .line 331
    iget-object v3, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 332
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_3

    .line 333
    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, imiPackageName:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    if-eqz v3, :cond_0

    .line 335
    sget-object v3, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update icons of IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    if-eqz p2, :cond_1

    .line 339
    invoke-virtual {p2}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 353
    .end local v1           #imiPackageName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 341
    .restart local v1       #imiPackageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getSubtypeCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v6}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 342
    invoke-virtual {p1, v6}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getSubtypeAt(I)Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getIconResId()I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 347
    :cond_2
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME can\'t be found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #imiPackageName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;
    .locals 2
    .parameter "subtype"

    .prologue
    .line 179
    const-string v1, "KeyboardLocale"

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, keyboardLocale:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #keyboardLocale:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #keyboardLocale:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 71
    sget-object v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->sInstance:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->initialize(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 72
    sget-object v0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->sInstance:Lcom/htc/android/htcime/compat/SubtypeSwitcher;

    invoke-direct {v0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateAllParameters()V

    .line 73
    return-void
.end method

.method private initialize(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 3
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 80
    iput-object p1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mService:Lcom/htc/android/htcime/HTCIMEService;

    .line 81
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    .line 82
    invoke-static {}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    .line 83
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/htc/android/htcime/HTCIMEService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    iput-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 88
    iput-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 89
    iput-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 91
    iput-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 94
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 95
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 534
    const-string v0, ""

    .line 535
    .local v0, supportedLocalesString:Ljava/lang/String;
    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 537
    .local v1, voiceInputSupportedLocales:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private switchToTargetIME(Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 4
    .parameter "imiId"
    .parameter "subtype"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 302
    .local v0, token:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v1, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;-><init>(Lcom/htc/android/htcime/compat/SubtypeSwitcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/compat/SubtypeSwitcher$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private triggerVoiceIME()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    :cond_0
    return-void
.end method

.method private updateAllParameters()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateSubtype(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    .line 103
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 104
    return-void
.end method

.method private updateEnabledSubtypes()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, currentMode:Ljava/lang/String;
    const/4 v1, 0x1

    .line 117
    .local v1, foundCurrentSubtypeBecameDisabled:Z
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    .line 119
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 121
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mAllEnabledSubtypesOfCurrentInputMethod:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 122
    .local v3, ims:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    invoke-static {v3}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, locale:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, mode:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 125
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 126
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mLocaleSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 129
    const/4 v1, 0x0

    .line 131
    :cond_2
    const-string v7, "keyboard"

    invoke-virtual {v3}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v3           #ims:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    .end local v4           #locale:Ljava/lang/String;
    .end local v5           #mode:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v7

    if-gt v7, v6, :cond_4

    iget-boolean v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v7, :cond_7

    :cond_4
    :goto_1
    iput-boolean v6, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 137
    if-eqz v1, :cond_6

    .line 138
    sget-boolean v6, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    if-eqz v6, :cond_5

    .line 139
    sget-object v6, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current subtype: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v6, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v7, "Last subtype was disabled. Update to the current one."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v6}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getCurrentInputMethodSubtype()Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateSubtype(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    .line 144
    :cond_6
    return-void

    .line 135
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateInputLocale(Ljava/lang/String;)V
    .locals 5
    .parameter "inputLocaleStr"

    .prologue
    const/4 v2, 0x1

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-static {p1}, Lcom/htc/android/htcime/compat/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 272
    iput-object p1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    .line 281
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    if-nez v1, :cond_3

    :cond_0
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    .line 283
    return-void

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 275
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, country:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 281
    .end local v0           #country:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateShortcutIME()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 147
    sget-boolean v4, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_0

    .line 148
    sget-object v6, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update shortcut IME from : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_3

    const-string v4, "<null>"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_4

    const-string v4, "<null>"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v4}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getShortcutInputMethodsAndSubtypes()Ljava/util/Map;

    move-result-object v2

    .line 157
    .local v2, shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;>;"
    iput-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    .line 158
    iput-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 159
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    .line 160
    .local v1, imi:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 163
    .local v3, subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;"
    iput-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    :goto_2
    iput-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 169
    .end local v1           #imi:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_1
    sget-boolean v4, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    if-eqz v4, :cond_2

    .line 170
    sget-object v5, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update shortcut IME to : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-nez v4, :cond_6

    const-string v4, "<null>"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-nez v4, :cond_7

    const-string v4, "<null>"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    return-void

    .line 148
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;>;"
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v8}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v8}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #imi:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
    .restart local v2       #shortcuts:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;>;"
    .restart local v3       #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_5
    move-object v4, v5

    .line 166
    goto :goto_2

    .line 170
    .end local v1           #imi:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;
    .end local v3           #subtypes:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;>;"
    :cond_6
    iget-object v4, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v4}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-static {v7}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v7}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method


# virtual methods
.method public currentSubtypeContainsExtraValueKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtypeExtraValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCurrentSubtypeExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentSubtypeMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "keyboard"

    goto :goto_0
.end method

.method public getEnabledKeyboardLocaleCount()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledKeyboardSubtypesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    .local v0, enabledLanguageCount:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mEnabledLanguagesOfCurrentInputMethod:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getInputLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    const-string v0, ""

    return-object v0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getInputLocaleStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeIcon(Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public isDummyVoiceMode()Z
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v0}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getOriginalObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyboardMode()Z
    .locals 2

    .prologue
    .line 462
    const-string v0, "keyboard"

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShortcutImeEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 365
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-nez v5, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v3

    .line 368
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-nez v5, :cond_2

    move v3, v4

    .line 369
    goto :goto_0

    .line 373
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v5}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->hasOriginalObject()Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 374
    goto :goto_0

    .line 376
    :cond_3
    const/4 v0, 0x1

    .line 378
    .local v0, allowsImplicitlySelectedSubtypes:Z
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mImm:Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;

    iget-object v6, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v5, v6, v4}, Lcom/htc/android/htcime/compat/InputMethodManagerCompatWrapper;->getEnabledInputMethodSubtypeList(Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 380
    .local v1, enabledSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 381
    goto :goto_0
.end method

.method public isShortcutImeReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 388
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-nez v1, :cond_1

    .line 389
    const/4 v0, 0x0

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    invoke-virtual {v1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "requireNetworkConnectivity"

    invoke-static {v1, v2}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-boolean v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsNetworkConnected:Z

    goto :goto_0
.end method

.method public isSystemLanguageSameAsInputLanguage()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsSystemLanguageSameAsInputLanguage:Z

    return v0
.end method

.method public isVoiceMode()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "voice"

    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public needsToDisplayLanguage(Ljava/util/Locale;)Z
    .locals 1
    .parameter "keyboardLocale"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mNeedsToDisplayLanguage:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "conf"

    .prologue
    .line 454
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 456
    .local v0, systemLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mSystemLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateAllParameters()V

    .line 459
    :cond_0
    return-void
.end method

.method public onNetworkStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 400
    const-string v2, "noConnectivity"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 402
    .local v0, noConnection:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mIsNetworkConnected:Z

    .line 409
    return-void
.end method

.method public switchToShortcutIME()V
    .locals 3

    .prologue
    .line 290
    iget-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    if-nez v2, :cond_0

    .line 297
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutInputMethodInfo:Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;

    invoke-virtual {v2}, Lcom/htc/android/htcime/compat/InputMethodInfoCompatWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, imiId:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mShortcutSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 296
    .local v1, subtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;
    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->switchToTargetIME(Ljava/lang/String;Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V

    goto :goto_0
.end method

.method public updateParametersOnStartInputView()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateEnabledSubtypes()V

    .line 110
    invoke-direct {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateShortcutIME()V

    .line 111
    return-void
.end method

.method public updateSubtype(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)V
    .locals 8
    .parameter "newSubtype"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getCurrentSubtypeMode()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, oldMode:Ljava/lang/String;
    if-nez p1, :cond_4

    .line 192
    sget-object v5, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t get the current subtype."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v2, "en_US"

    .line 194
    .local v2, newLocale:Ljava/lang/String;
    const-string v3, "keyboard"

    .line 199
    .local v3, newMode:Ljava/lang/String;
    :goto_0
    sget-boolean v5, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->DBG:Z

    if-eqz v5, :cond_0

    .line 200
    sget-object v5, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update subtype to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, languageChanged:Z
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    iget-object v5, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mInputLocaleStr:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 206
    const/4 v0, 0x1

    .line 208
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->updateInputLocale(Ljava/lang/String;)V

    .line 210
    :cond_2
    const/4 v1, 0x0

    .line 211
    .local v1, modeChanged:Z
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 212
    if-eqz v4, :cond_3

    .line 213
    const/4 v1, 0x1

    .line 216
    :cond_3
    iput-object p1, p0, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->mCurrentSubtype:Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;

    .line 262
    return-void

    .line 196
    .end local v0           #languageChanged:Z
    .end local v1           #modeChanged:Z
    .end local v2           #newLocale:Ljava/lang/String;
    .end local v3           #newMode:Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/htc/android/htcime/compat/SubtypeSwitcher;->getSubtypeLocale(Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2       #newLocale:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/htcime/compat/InputMethodSubtypeCompatWrapper;->getMode()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #newMode:Ljava/lang/String;
    goto :goto_0
.end method
