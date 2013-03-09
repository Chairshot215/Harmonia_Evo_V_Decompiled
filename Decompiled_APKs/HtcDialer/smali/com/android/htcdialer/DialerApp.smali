.class public Lcom/android/htcdialer/DialerApp;
.super Landroid/app/Application;
.source "DialerApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/DialerApp$WorkingHandler;
    }
.end annotation


# static fields
.field private static final CIME_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_JIME:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_KIME:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_MERGE_CONTACT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_PINYIN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_SEARCH_CYCLE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_SEARCH_JUMP:Z = false

#the value of this static final field might be set in the static constructor
.field public static final ENABLE_SEARCH_SUFFIX:Z = false

.field public static IME_PARAMETER:Ljava/lang/String; = null

.field private static final IME_PARAMETER_JP_HIRAKANA_NORMAL:Ljava/lang/String; = "1"

.field private static final IME_PARAMETER_JP_HIRAKANA_NO_VOICE:Ljava/lang/String; = "2"

.field private static final IME_PARAMETER_JP_HIRAKANA_RAW:Ljava/lang/String; = "5"

.field private static final IME_PARAMETER_JP_KATAKANA_NORMAL:Ljava/lang/String; = "3"

.field private static final IME_PARAMETER_JP_KATAKANA_NO_VOICE:Ljava/lang/String; = "4"

.field private static final IME_PARAMETER_JP_KATAKANA_RAW:Ljava/lang/String; = "6"

.field private static final IME_PARAMETER_ZH_CN:Ljava/lang/String; = "259"

.field private static final IME_PARAMETER_ZH_HK:Ljava/lang/String; = "258"

.field private static final IME_PARAMETER_ZH_TW:Ljava/lang/String; = "257"

.field public static IME_URI:Landroid/net/Uri; = null

.field public static final IS_OPEN_35_FUNCTION:Ljava/lang/Boolean; = null

.field private static final JIME_URI:Landroid/net/Uri; = null

.field private static final KIME_URI:Landroid/net/Uri; = null

.field public static final LOGGABLE:Z = false

.field private static final MSG_PREINFLATE_DIALER_LAYOUT:I = 0x1

.field private static final MSG_REMOVE_DIALER_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DialerApp"

.field public static final USE_KOREAN_INDEX:Z

.field private static mWorkingHandler:Landroid/os/Handler;

.field public static sIsNaviShowable:I


# instance fields
.field private mCurConfig:Landroid/content/res/Configuration;

.field private mDialerLayout:Landroid/view/View;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoaming:Z

.field private mStoreRoaming:Z

.field private mSyncControl:Lcom/htc/util/contacts/SyncControl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xd2

    const/16 v4, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_6

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    .line 88
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x51

    if-ne v0, v3, :cond_7

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    .line 90
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x32

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x33

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x29

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9d

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x1d

    if-ne v0, v3, :cond_2

    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x1b

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x12

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xda

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eq v0, v2, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_PINYIN:Z

    .line 105
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_9

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v5, :cond_9

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    .line 109
    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_CYCLE:Z

    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_JUMP:Z

    .line 111
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_3

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_a

    :cond_3
    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_SEARCH_SUFFIX:Z

    .line 115
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v4, :cond_4

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v5, :cond_b

    :cond_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/htcdialer/DialerApp;->USE_KOREAN_INDEX:Z

    .line 119
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v0, v3, :cond_5

    move v1, v2

    :cond_5
    sput-boolean v1, Lcom/android/htcdialer/DialerApp;->ENABLE_MERGE_CONTACT:Z

    .line 121
    const-string v0, "content://htc_cime/get_chinese_spelling"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerApp;->CIME_URI:Landroid/net/Uri;

    .line 122
    const-string v0, "content://com.diotek.ime.provider.HangulJasoProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerApp;->KIME_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "content://omron_jimeprovider/get_yomi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerApp;->JIME_URI:Landroid/net/Uri;

    .line 136
    sput-object v6, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 137
    sput-object v6, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    .line 140
    sput-object v6, Lcom/android/htcdialer/DialerApp;->mWorkingHandler:Landroid/os/Handler;

    .line 150
    const/4 v0, -0x1

    sput v0, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IS_OPEN_35_FUNCTION:Ljava/lang/Boolean;

    return-void

    :cond_6
    move v0, v1

    .line 84
    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 88
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 90
    goto :goto_2

    :cond_9
    move v0, v1

    .line 105
    goto :goto_3

    :cond_a
    move v0, v1

    .line 111
    goto :goto_4

    :cond_b
    move v0, v1

    .line 115
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 157
    iput-boolean v0, p0, Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z

    .line 158
    iput-boolean v0, p0, Lcom/android/htcdialer/DialerApp;->mRoaming:Z

    .line 229
    new-instance v0, Lcom/android/htcdialer/DialerApp$3;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/DialerApp$3;-><init>(Lcom/android/htcdialer/DialerApp;)V

    iput-object v0, p0, Lcom/android/htcdialer/DialerApp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/android/htcdialer/DialerApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/htcdialer/DialerApp;->switchCorrectComponent()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htcdialer/DialerApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/htcdialer/DialerApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/htcdialer/DialerApp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/htcdialer/DialerApp;->mRoaming:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/htcdialer/DialerApp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/htcdialer/DialerApp;->mRoaming:Z

    return p1
.end method

.method private checkNaviShowable()V
    .locals 4

    .prologue
    .line 503
    sget v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.navi.action.SHOW_NAVI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 507
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput v2, Lcom/android/htcdialer/DialerApp;->sIsNaviShowable:I

    .line 509
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void

    .line 507
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispatchText(II)V
    .locals 2
    .parameter "resId"
    .parameter "stringId"

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp;->mDialerLayout:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 497
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 500
    :cond_0
    return-void
.end method

.method private dispatchTextOnLocaleChanged()V
    .locals 2

    .prologue
    const v1, 0x7f09001f

    .line 482
    iget-object v0, p0, Lcom/android/htcdialer/DialerApp;->mDialerLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 485
    sget-boolean v0, Lcom/android/htcdialer/util/BuildUtils;->SENSE_TABLET:Z

    if-eqz v0, :cond_1

    .line 486
    const v0, 0x2020105

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/DialerApp;->dispatchText(II)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const v0, 0x7f0b003e

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/DialerApp;->dispatchText(II)V

    goto :goto_0
.end method

.method private initImeInfo(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 447
    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 448
    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    .line 449
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    :cond_0
    sget-object v0, Lcom/android/htcdialer/DialerApp;->CIME_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 451
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 455
    :cond_1
    const-string v0, "258"

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    .line 473
    :cond_2
    :goto_0
    return-void

    .line 457
    :cond_3
    const-string v0, "257"

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    goto :goto_0

    .line 460
    :cond_4
    const-string v0, "259"

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_5
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-eqz v0, :cond_6

    .line 463
    sget-object v0, Lcom/android/htcdialer/DialerApp;->KIME_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    goto :goto_0

    .line 464
    :cond_6
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-eqz v0, :cond_7

    .line 466
    sget-object v0, Lcom/android/htcdialer/DialerApp;->JIME_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 467
    const-string v0, "2"

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_PINYIN:Z

    if-eqz v0, :cond_2

    .line 470
    sget-object v0, Lcom/android/htcdialer/DialerApp;->CIME_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_URI:Landroid/net/Uri;

    .line 471
    const-string v0, "259"

    sput-object v0, Lcom/android/htcdialer/DialerApp;->IME_PARAMETER:Ljava/lang/String;

    goto :goto_0
.end method

.method private initSmartKeyMapping(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    .line 417
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 421
    :cond_0
    invoke-static {v2}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    .line 444
    :goto_0
    return-void

    .line 423
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto :goto_0

    .line 425
    :cond_2
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    invoke-static {v2}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "el_GR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto :goto_0

    .line 429
    :cond_4
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 431
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto :goto_0

    .line 432
    :cond_6
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-eqz v0, :cond_7

    .line 433
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto :goto_0

    .line 434
    :cond_7
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en_TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    :cond_8
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto/16 :goto_0

    .line 436
    :cond_9
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-eqz v0, :cond_a

    .line 438
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto/16 :goto_0

    .line 439
    :cond_a
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 440
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto/16 :goto_0

    .line 442
    :cond_b
    invoke-static {v2}, Lcom/android/htcdialer/search/SmartKeyMapping;->setKeyMapping(I)V

    goto/16 :goto_0
.end method

.method private onLocaleChanged(Landroid/content/res/Configuration;)Z
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, needInflate:Z
    iget-object v2, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 375
    .local v0, curLocale:Ljava/util/Locale;
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_RU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_RU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_UA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_UA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-nez v2, :cond_4

    :cond_0
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-nez v2, :cond_4

    :cond_1
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "th"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_TH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_TH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    :cond_4
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/DialerApp;->initImeInfo(Ljava/util/Locale;)V

    .line 396
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v2}, Lcom/android/htcdialer/DialerApp;->initSmartKeyMapping(Ljava/util/Locale;)V

    .line 398
    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh_HK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-nez v2, :cond_8

    :cond_5
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_KIME:Z

    if-nez v2, :cond_8

    :cond_6
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/htcdialer/DialerApp;->ENABLE_JIME:Z

    if-eqz v2, :cond_9

    .line 408
    :cond_8
    invoke-static {}, Lcom/android/htcdialer/DialerService;->notifyUpdateNamePattern()V

    .line 412
    :cond_9
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemTimeFormat(Landroid/content/Context;)V

    .line 413
    return v1
.end method

.method private switchCorrectComponent()V
    .locals 9

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 316
    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 344
    :goto_0
    return-void

    .line 321
    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.android.htcdialer"

    const-string v7, "com.android.htcdialer.NonPhoneActivity"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v4, nonPhoneActivity:Landroid/content/ComponentName;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.htcdialer"

    const-string v7, "com.android.htcdialer.Dialer"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, dialerActivity:Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v3

    .line 329
    .local v3, isPhoneEnabled:Z
    if-eqz v3, :cond_1

    move-object v1, v4

    .line 330
    .local v1, disabledCName:Landroid/content/ComponentName;
    :goto_1
    const-string v6, "DialerApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "disabled component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 335
    if-eqz v3, :cond_2

    move-object v2, v0

    .line 336
    .local v2, enabledCName:Landroid/content/ComponentName;
    :goto_2
    const-string v6, "DialerApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled component: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v0           #dialerActivity:Landroid/content/ComponentName;
    .end local v1           #disabledCName:Landroid/content/ComponentName;
    .end local v2           #enabledCName:Landroid/content/ComponentName;
    .end local v3           #isPhoneEnabled:Z
    .end local v4           #nonPhoneActivity:Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    goto :goto_0

    .restart local v0       #dialerActivity:Landroid/content/ComponentName;
    .restart local v3       #isPhoneEnabled:Z
    .restart local v4       #nonPhoneActivity:Landroid/content/ComponentName;
    :cond_1
    move-object v1, v0

    .line 329
    goto :goto_1

    .restart local v1       #disabledCName:Landroid/content/ComponentName;
    :cond_2
    move-object v2, v4

    .line 335
    goto :goto_2
.end method


# virtual methods
.method public getDialerLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflateDialerLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/DialerApp;->mDialerLayout:Landroid/view/View;

    .line 288
    iget-object v0, p0, Lcom/android/htcdialer/DialerApp;->mDialerLayout:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 354
    .local v0, diff:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lcom/android/htcdialer/DialerApp;->onLocaleChanged(Landroid/content/res/Configuration;)Z

    .line 359
    :cond_0
    invoke-static {}, Lcom/android/htcdialer/theme/ThemeAdapter;->isSkinPackageChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/htcdialer/DialerApp;->mDialerLayout:Landroid/view/View;

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 367
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 368
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 163
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    .line 165
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/DialerApp;->initImeInfo(Ljava/util/Locale;)V

    .line 166
    iget-object v1, p0, Lcom/android/htcdialer/DialerApp;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/htcdialer/DialerApp;->initSmartKeyMapping(Ljava/util/Locale;)V

    .line 169
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 171
    const-string v1, "Dialer"

    invoke-static {v1}, Lcom/htc/util/contacts/SyncControl;->getSyncControl(Ljava/lang/String;)Lcom/htc/util/contacts/SyncControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htcdialer/DialerApp;->mSyncControl:Lcom/htc/util/contacts/SyncControl;

    .line 177
    new-instance v1, Lcom/android/htcdialer/DialerApp$WorkingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/htcdialer/DialerApp$WorkingHandler;-><init>(Lcom/android/htcdialer/DialerApp;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/htcdialer/DialerApp;->mWorkingHandler:Landroid/os/Handler;

    .line 182
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    new-instance v2, Lcom/android/htcdialer/DialerApp$1;

    invoke-direct {v2, p0}, Lcom/android/htcdialer/DialerApp$1;-><init>(Lcom/android/htcdialer/DialerApp;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htcdialer/theme/ThemeAdapter;->setApplicationContext(Landroid/content/Context;)V

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/htcdialer/DialerApp$2;

    invoke-direct {v1, p0}, Lcom/android/htcdialer/DialerApp$2;-><init>(Lcom/android/htcdialer/DialerApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    .local v0, enableT:Ljava/lang/Thread;
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    invoke-direct {p0}, Lcom/android/htcdialer/DialerApp;->checkNaviShowable()V

    .line 215
    iput-boolean v3, p0, Lcom/android/htcdialer/DialerApp;->mStoreRoaming:Z

    .line 217
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/DialerApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/htcdialer/DialerApp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemDateFormat(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/htcdialer/DialerApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/htcdialer/util/TimeUtils;->loadSystemTimeFormat(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/htcdialer/theme/ThemeAdapter;->setApplicationContext(Landroid/content/Context;)V

    .line 280
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 281
    return-void
.end method
