.class public Lcom/sprint/ce/updater/UpdaterMain;
.super Landroid/app/Activity;
.source "UpdaterMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/ce/updater/UpdaterMain$InstallResult;,
        Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sprint$ce$updater$UpdaterMain$PackageState:[I = null

.field public static final ACTION_INSTALL_FROM_APK:Ljava/lang/String; = "com.sprint.action.INSTALL_FROM_APK"

.field public static final ACTION_UPGRADE_CHECK:Ljava/lang/String; = "com.sprint.action.UPGRADE_CHECK"

.field public static final ACTION_UPGRADE_TEST:Ljava/lang/String; = "com.sprint.action.UPGRADE_TEST"

.field public static final EXTRA_ALLOW_BROWSER_JSON_HTTP:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALLOW_BROWSER_JSON_HTTP"

.field public static final EXTRA_ALLOW_FROM_ROOT:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALLOW_FROM_ROOT"

.field public static final EXTRA_ALLOW_OVERRIDE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALLOW_OVERRIDE"

.field public static final EXTRA_ALLOW_TEST_INSTALL:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALLOW_TEST_INSTALL"

.field public static final EXTRA_ALT_TITLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_ALT_TITLE"

.field public static final EXTRA_DEBUG_LOGGING:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_DEBUG_LOGGING"

.field public static final EXTRA_NO_PROMPT:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_NO_PROMPT"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

.field public static final EXTRA_POST_UPDATE_ACTION:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

.field public static final EXTRA_USE_CERTIFICATION_URL:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_USE_CERTIFICATION_URL"

.field public static final EXTRA_USE_SLOT0:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_USE_SLOT0"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_VERSION_CODE"

.field private static final NEW_SIGNATURE:Ljava/lang/String; = "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

.field private static final OLD_SIGNATURE:Ljava/lang/String; = "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

.field public static final PERMISSION_INSTALL_UPDATES:Ljava/lang/String; = "com.sprint.permission.INSTALL_UPDATES"

.field private static final STATE_COMPLETED:Ljava/lang/String; = "completed"

.field private static final STATE_DOWNLOADING:Ljava/lang/String; = "downloading"

.field private static final STATE_INITIALIZED:Ljava/lang/String; = "initialized"

.field private static final STATE_INSTALLING:Ljava/lang/String; = "installing"

.field public static final TAG:Ljava/lang/String; = "SprintUpdater"

.field private static lock:Ljava/lang/Object;

.field private static sRandom:Ljava/util/Random;


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAllowOverride:Z

.field mAltTitle:Ljava/lang/String;

.field mAltUrl:Ljava/lang/String;

.field mAltUseSlot0:Z

.field mBrowserAPK:Z

.field mBrowserJSON:Z

.field private final mClearProgressBar:Ljava/lang/Runnable;

.field private final mDownloadAndInstall:Landroid/view/View$OnClickListener;

.field mDownloadStatusMsg:Ljava/lang/String;

.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;"
        }
    .end annotation
.end field

.field mFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFinishOnClick:Landroid/view/View$OnClickListener;

.field mIcon:Landroid/widget/ImageView;

.field mInProgress:Z

.field final mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

.field mInstallSuccess:Z

.field private final mInteractiveRetry:Landroid/view/View$OnClickListener;

.field mInteractiveUpdate:Z

.field mNoPrompt:Z

.field final mOpenOnClick:Landroid/view/View$OnClickListener;

.field private mOverRideFile:Z

.field mPackage:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPostAction:Landroid/content/Intent;

.field private mPostActionStarted:Z

.field private mProcessedCount:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field mProgressStatus:Landroid/widget/TextView;

.field mResponse:Lcom/sprint/ce/updater/Response;

.field mState:Ljava/lang/String;

.field mStatus:Landroid/widget/TextView;

.field private mStop:Z

.field mSuccess:Z

.field mTitle:Landroid/widget/TextView;

.field mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

.field private final mUpdateCheckDone:Ljava/lang/Runnable;

.field private final mUpdateCheckDoneAlt:Ljava/lang/Runnable;

.field final mUpdateLauncher:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sprint$ce$updater$UpdaterMain$PackageState()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain;->$SWITCH_TABLE$com$sprint$ce$updater$UpdaterMain$PackageState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->values()[Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NEWER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NOT_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->OLDER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->SAME_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    invoke-virtual {v1}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain;->$SWITCH_TABLE$com$sprint$ce$updater$UpdaterMain$PackageState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 874
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain;->sRandom:Ljava/util/Random;

    .line 875
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 450
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$1;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$1;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateLauncher:Landroid/view/View$OnClickListener;

    .line 473
    iput-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z

    .line 475
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$2;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$2;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    .line 491
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$3;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$3;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mOpenOnClick:Landroid/view/View$OnClickListener;

    .line 525
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$4;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$4;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$5;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$5;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mClearProgressBar:Ljava/lang/Runnable;

    .line 688
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$6;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$6;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadAndInstall:Landroid/view/View$OnClickListener;

    .line 700
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$7;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$7;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveRetry:Landroid/view/View$OnClickListener;

    .line 714
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$8;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$8;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDone:Ljava/lang/Runnable;

    .line 739
    iput v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    .line 1044
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mFileMap:Ljava/util/HashMap;

    .line 1085
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$9;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$9;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/ce/updater/UpdaterMain;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    return-void
.end method

.method static synthetic access$10(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    invoke-direct {p0, p1, p2}, Lcom/sprint/ce/updater/UpdaterMain;->performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$11(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-direct {p0, p1, p2}, Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13(Lcom/sprint/ce/updater/UpdaterMain;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/sprint/ce/updater/UpdaterMain;->fileOverride(Z)V

    return-void
.end method

.method static synthetic access$14(Lcom/sprint/ce/updater/UpdaterMain;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    return-void
.end method

.method static synthetic access$15(Lcom/sprint/ce/updater/UpdaterMain;)Z
    .locals 1
    .parameter

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    return v0
.end method

.method static synthetic access$16(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterMain;->clearProgressBar()V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/ce/updater/UpdaterMain;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/sprint/ce/updater/UpdaterMain;->removeUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/ce/updater/UpdaterMain;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterMain;->startPostAction()V

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/ce/updater/UpdaterMain;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadAndInstall:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 638
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatusOnUi(IIIZ)V

    return-void
.end method

.method static synthetic access$8(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveRetry:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sprint/ce/updater/UpdaterMain;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;

    return-object v0
.end method

.method private clearProgressBar()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mClearProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 636
    return-void
.end method

.method private createEntry(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/sprint/ce/updater/Entry;
    .locals 1
    .parameter "packageName"
    .parameter "url"
    .parameter "version"
    .parameter "force"

    .prologue
    .line 1006
    new-instance v0, Lcom/sprint/ce/updater/Entry;

    invoke-direct {v0}, Lcom/sprint/ce/updater/Entry;-><init>()V

    .line 1007
    .local v0, entry:Lcom/sprint/ce/updater/Entry;
    iput-object p1, v0, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    .line 1008
    iput-object p2, v0, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    .line 1009
    iput p3, v0, Lcom/sprint/ce/updater/Entry;->versionCode:I

    .line 1010
    iput-boolean p4, v0, Lcom/sprint/ce/updater/Entry;->force:Z

    .line 1012
    return-object v0
.end method

.method private downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .parameter "url"
    .parameter "saveToFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1202
    const/4 v12, 0x0

    .line 1203
    .local v12, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1204
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 1205
    .local v6, bos:Ljava/io/BufferedOutputStream;
    const/16 v17, 0x0

    .line 1208
    .local v17, inputStream:Ljava/io/InputStream;
    const v24, 0x7f050005

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->setProgressStatus(I)V

    .line 1209
    invoke-static/range {p0 .. p1}, Lcom/sprint/ce/updater/DownloadUtil;->getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v16

    .line 1210
    .local v16, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v13, get:Lorg/apache/http/client/methods/HttpGet;
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_0

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Download APK Url: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1214
    .local v21, time:J
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 1215
    .local v20, resp:Lorg/apache/http/HttpResponse;
    const/16 v24, 0xc8

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 1216
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_1

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Http error response: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_1
    new-instance v24, Ljava/io/IOException;

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v20           #resp:Lorg/apache/http/HttpResponse;
    .end local v21           #time:J
    :catchall_0
    move-exception v24

    .line 1266
    :goto_0
    if-eqz v6, :cond_2

    .line 1268
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1269
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1273
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 1275
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 1276
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1280
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1282
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1286
    :cond_4
    :goto_3
    if-eqz v17, :cond_5

    .line 1288
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1291
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->deleteFile(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1293
    sget-boolean v25, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v25, :cond_6

    const-string v25, "SprintUpdater"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "file deleted: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_6
    :goto_5
    throw v24

    .line 1219
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v20       #resp:Lorg/apache/http/HttpResponse;
    .restart local v21       #time:J
    :cond_7
    :try_start_5
    const-string v24, "content-length"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 1220
    .local v14, headLength:Lorg/apache/http/Header;
    const/16 v18, -0x1

    .line 1221
    .local v18, length:I
    if-eqz v14, :cond_8

    .line 1223
    :try_start_6
    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1224
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_8

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Reported file size="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1227
    :cond_8
    :goto_6
    :try_start_7
    const-string v24, "content-type"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    .line 1228
    .local v15, headerType:Lorg/apache/http/Header;
    if-eqz v15, :cond_9

    .line 1229
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_9

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Content type: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " value: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_9
    invoke-static/range {v18 .. v18}, Lcom/sprint/ce/updater/DownloadUtil;->checkForDeviceSpace(I)Z

    move-result v24

    if-nez v24, :cond_a

    .line 1232
    const v24, 0x7f05002c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadStatusMsg:Ljava/lang/String;

    .line 1233
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mDownloadStatusMsg:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1236
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->initProgressBar(I)V

    .line 1237
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 1238
    const/16 v3, 0x1000

    .line 1239
    .local v3, BUFFER_SIZE:I
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v24, 0x1000

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v5, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1240
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    const/16 v24, 0x1

    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 1242
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v24, 0x1000

    move/from16 v0, v24

    invoke-direct {v7, v12, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1243
    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .local v7, bos:Ljava/io/BufferedOutputStream;
    const/16 v24, 0x1000

    :try_start_9
    move/from16 v0, v24

    new-array v8, v0, [B

    .line 1245
    .local v8, buffer:[B
    const/16 v23, 0x0

    .line 1247
    .local v23, totalSize:I
    const/16 v19, 0x0

    .line 1248
    .local v19, progress:I
    const v24, 0x7f050003

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->setProgressStatus(I)V

    .line 1249
    :cond_b
    :goto_7
    const/16 v24, -0x1

    invoke-virtual {v5, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    .local v9, c:I
    move/from16 v0, v24

    if-eq v0, v9, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 1259
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1260
    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    move/from16 v24, v0

    if-nez v24, :cond_d

    .line 1261
    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "APK file size different - totalSize: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v21

    const-wide/16 v26, 0x3e8

    div-long v10, v24, v26

    .line 1264
    .local v10, diff:J
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_e

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Finish download time: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1266
    :cond_e
    if-eqz v7, :cond_f

    .line 1268
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1269
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1273
    :cond_f
    :goto_8
    if-eqz v12, :cond_10

    .line 1275
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 1276
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 1280
    :cond_10
    :goto_9
    if-eqz v5, :cond_11

    .line 1282
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 1286
    :cond_11
    :goto_a
    if-eqz v17, :cond_12

    .line 1288
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 1291
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 1292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->deleteFile(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 1293
    sget-boolean v24, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v24, :cond_13

    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "file deleted: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_13
    :goto_c
    return-void

    .line 1250
    .end local v10           #diff:J
    :cond_14
    const/16 v24, 0x0

    :try_start_e
    move/from16 v0, v24

    invoke-virtual {v7, v8, v0, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1251
    add-int v23, v23, v9

    .line 1252
    add-int v19, v19, v9

    .line 1253
    if-lez v18, :cond_b

    const/16 v24, 0xfff

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1255
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 1295
    .end local v3           #BUFFER_SIZE:I
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #buffer:[B
    .end local v9           #c:I
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #headLength:Lorg/apache/http/Header;
    .end local v15           #headerType:Lorg/apache/http/Header;
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v18           #length:I
    .end local v19           #progress:I
    .end local v20           #resp:Lorg/apache/http/HttpResponse;
    .end local v21           #time:J
    .end local v23           #totalSize:I
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    :cond_15
    const-string v25, "SprintUpdater"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "failed to delete file: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #BUFFER_SIZE:I
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #buffer:[B
    .restart local v9       #c:I
    .restart local v10       #diff:J
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #headLength:Lorg/apache/http/Header;
    .restart local v15       #headerType:Lorg/apache/http/Header;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #length:I
    .restart local v19       #progress:I
    .restart local v20       #resp:Lorg/apache/http/HttpResponse;
    .restart local v21       #time:J
    .restart local v23       #totalSize:I
    :cond_16
    const-string v24, "SprintUpdater"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "failed to delete file: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1283
    .end local v3           #BUFFER_SIZE:I
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #buffer:[B
    .end local v9           #c:I
    .end local v10           #diff:J
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #headLength:Lorg/apache/http/Header;
    .end local v15           #headerType:Lorg/apache/http/Header;
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v18           #length:I
    .end local v19           #progress:I
    .end local v20           #resp:Lorg/apache/http/HttpResponse;
    .end local v21           #time:J
    .end local v23           #totalSize:I
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v25

    goto/16 :goto_3

    .line 1289
    :catch_1
    move-exception v25

    goto/16 :goto_4

    .line 1283
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v3       #BUFFER_SIZE:I
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    .restart local v8       #buffer:[B
    .restart local v9       #c:I
    .restart local v10       #diff:J
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #headLength:Lorg/apache/http/Header;
    .restart local v15       #headerType:Lorg/apache/http/Header;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #length:I
    .restart local v19       #progress:I
    .restart local v20       #resp:Lorg/apache/http/HttpResponse;
    .restart local v21       #time:J
    .restart local v23       #totalSize:I
    :catch_2
    move-exception v24

    goto/16 :goto_a

    .line 1289
    :catch_3
    move-exception v24

    goto/16 :goto_b

    .line 1277
    :catch_4
    move-exception v24

    goto/16 :goto_9

    .line 1270
    :catch_5
    move-exception v24

    goto/16 :goto_8

    .line 1277
    .end local v3           #BUFFER_SIZE:I
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v8           #buffer:[B
    .end local v9           #c:I
    .end local v10           #diff:J
    .end local v13           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v14           #headLength:Lorg/apache/http/Header;
    .end local v15           #headerType:Lorg/apache/http/Header;
    .end local v16           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v18           #length:I
    .end local v19           #progress:I
    .end local v20           #resp:Lorg/apache/http/HttpResponse;
    .end local v21           #time:J
    .end local v23           #totalSize:I
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v25

    goto/16 :goto_2

    .line 1270
    :catch_7
    move-exception v25

    goto/16 :goto_1

    .line 1265
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #BUFFER_SIZE:I
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v13       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v14       #headLength:Lorg/apache/http/Header;
    .restart local v15       #headerType:Lorg/apache/http/Header;
    .restart local v16       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v18       #length:I
    .restart local v20       #resp:Lorg/apache/http/HttpResponse;
    .restart local v21       #time:J
    :catchall_1
    move-exception v24

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v24

    move-object v6, v7

    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 1225
    .end local v3           #BUFFER_SIZE:I
    .end local v15           #headerType:Lorg/apache/http/Header;
    :catch_8
    move-exception v24

    goto/16 :goto_6
.end method

.method private fileOverride(Z)V
    .locals 2
    .parameter "override"

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "Don\'t override: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    iput-boolean p1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mOverRideFile:Z

    .line 617
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 617
    monitor-exit v1

    .line 620
    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initProgressBar(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 1303
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$23;

    invoke-direct {v0, p0, p1}, Lcom/sprint/ce/updater/UpdaterMain$23;-><init>(Lcom/sprint/ce/updater/UpdaterMain;I)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1318
    return-void
.end method

.method private installUpdate(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "filePath"
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    .line 1048
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1049
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1050
    .local v3, infoNew:Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_1

    .line 1051
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to find downloaded file at path: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    :goto_0
    return v8

    .line 1054
    :cond_1
    iget-boolean v9, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->allowTestInstall:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1056
    const-string v8, "SprintUpdater"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Package names not the same - downloaded: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name provided: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Illegal package update attempt by "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1059
    :cond_2
    iget-object v9, p0, Lcom/sprint/ce/updater/UpdaterMain;->mFileMap:Ljava/util/HashMap;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    if-eqz p2, :cond_6

    const/4 v2, 0x2

    .line 1062
    .local v2, flags:I
    :goto_1
    :try_start_0
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1063
    .local v4, infoOld:Landroid/content/pm/PackageInfo;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " new versionCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - installed versionCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_3
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v9, v10, :cond_4

    .line 1065
    or-int/lit8 v2, v2, 0x2

    .line 1071
    .end local v4           #infoOld:Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1072
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1073
    .local v7, uri:Landroid/net/Uri;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Installing package: path="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v9, v2, v10}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1082
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v2           #flags:I
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_6
    move v2, v8

    .line 1060
    goto/16 :goto_1

    .line 1067
    .restart local v2       #flags:I
    :catch_0
    move-exception v1

    .line 1069
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - not yet installed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1076
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 1077
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SprintUpdater"

    const-string v10, "Failed to invoke installPackage"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Removing file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method private performBrowserRequest()V
    .locals 1

    .prologue
    .line 814
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$15;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$15;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 861
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 862
    return-void
.end method

.method private performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 743
    iput-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    .line 744
    iput-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    .line 745
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/sprint/ce/updater/UpdaterMain$14;-><init>(Lcom/sprint/ce/updater/UpdaterMain;Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V

    .line 809
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 810
    return-void
.end method

.method private processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 1105
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    .line 1108
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->SUCCESS:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    if-ne p1, v0, :cond_4

    .line 1109
    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1111
    iput-boolean v3, p0, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    .line 1112
    iput-boolean v3, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInstallSuccess:Z

    .line 1113
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserAPK:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserJSON:Z

    if-nez v0, :cond_1

    .line 1114
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "Setting RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->setResult(I)V

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1118
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$19;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$19;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1186
    :cond_2
    :goto_0
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1187
    :try_start_0
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    return-void

    .line 1142
    :cond_3
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterMain;->startPostAction()V

    goto :goto_0

    .line 1145
    :cond_4
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->NOT_OVERRIDDEN:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    if-ne p1, v0, :cond_7

    .line 1146
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not overridden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_5
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1154
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1155
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$20;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$20;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1166
    :cond_6
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterMain;->startPostAction()V

    goto :goto_0

    .line 1171
    :cond_7
    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Installation failed for pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$21;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$21;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeUpdatePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 1367
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain;->mFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1368
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1371
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t remove file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v0           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1373
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File removed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1376
    .end local v0           #f:Ljava/io/File;
    :cond_2
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File path not found for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProgressStatus(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1193
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$22;

    invoke-direct {v0, p0, p1}, Lcom/sprint/ce/updater/UpdaterMain$22;-><init>(Lcom/sprint/ce/updater/UpdaterMain;I)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1198
    return-void
.end method

.method private setViewStatus(IIIZ)V
    .locals 5
    .parameter "mainStatus"
    .parameter "actionButton"
    .parameter "progressStatus"
    .parameter "showProgressBar"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 657
    if-eq p1, v2, :cond_0

    .line 658
    if-nez p1, :cond_3

    .line 659
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    :goto_0
    if-eq p2, v2, :cond_1

    .line 664
    if-nez p2, :cond_4

    .line 665
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    :cond_1
    :goto_1
    if-eq p3, v2, :cond_2

    .line 673
    if-nez p3, :cond_5

    .line 674
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    :cond_2
    :goto_2
    if-eqz p4, :cond_6

    .line 683
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 686
    :goto_3
    return-void

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(I)V

    .line 668
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 677
    :cond_5
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 678
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 685
    :cond_6
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3
.end method

.method private setViewStatusOnUi(IIIZ)V
    .locals 6
    .parameter "mainStatus"
    .parameter "progressButton"
    .parameter "progressStatus"
    .parameter "showProgressBar"

    .prologue
    .line 640
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sprint/ce/updater/UpdaterMain$13;-><init>(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method private startPostAction()V
    .locals 4

    .prologue
    .line 514
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z

    if-nez v1, :cond_1

    .line 515
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SprintUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing post-update action: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->startActivity(Landroid/content/Intent;)V

    .line 518
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SprintUpdater"

    const-string v2, "Error starting post-action activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private validateOverride(Ljava/lang/String;)Z
    .locals 2
    .parameter "appName"

    .prologue
    .line 571
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$10;

    invoke-direct {v0, p0, p1}, Lcom/sprint/ce/updater/UpdaterMain$10;-><init>(Lcom/sprint/ce/updater/UpdaterMain;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    sget-object v1, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    sget-object v0, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mOverRideFile:Z

    return v0

    .line 577
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private validateVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    .locals 8
    .parameter "packageName"
    .parameter "version"

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1019
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1020
    .local v2, infoOld:Landroid/content/pm/PackageInfo;
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SprintUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Package "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new versionCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - installed versionCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1022
    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1023
    .local v4, versionCode:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1024
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    .line 1040
    .end local v2           #infoOld:Landroid/content/pm/PackageInfo;
    .end local v4           #versionCode:I
    :goto_0
    return-object v5

    .line 1025
    .restart local v2       #infoOld:Landroid/content/pm/PackageInfo;
    .restart local v4       #versionCode:I
    :cond_1
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v4, :cond_2

    .line 1026
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->OLDER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    goto :goto_0

    .line 1027
    :cond_2
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v5, v4, :cond_3

    .line 1028
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->SAME_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    goto :goto_0

    .line 1030
    :cond_3
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NEWER_VERSION_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1033
    .end local v4           #versionCode:I
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_2
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "SprintUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Version is invalid: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_4
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->INVALID_VERSION:Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1037
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #infoOld:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    .line 1039
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "SprintUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Package "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - not yet installed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_5
    sget-object v5, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->NOT_INSTALLED:Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    goto :goto_0
.end method


# virtual methods
.method protected downloadAndInstallUpdates()V
    .locals 15

    .prologue
    .line 879
    iget-object v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    if-eqz v11, :cond_0

    .line 880
    const/4 v11, 0x0

    iput v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    .line 881
    iget-object v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1002
    :cond_0
    return-void

    .line 881
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/ce/updater/Entry;

    .line 882
    .local v2, e:Lcom/sprint/ce/updater/Entry;
    iget-object v11, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    iput-object v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackageName:Ljava/lang/String;

    .line 883
    const/4 v1, 0x0

    .line 884
    .local v1, downloadOk:Z
    const/4 v6, 0x0

    .line 887
    .local v6, filePath:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_0
    iput-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    .line 888
    iget-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v11, :cond_6

    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->allowTestInstall:Z

    if-nez v11, :cond_6

    .line 889
    iget-object v11, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    if-nez v11, :cond_5

    .line 890
    :cond_2
    const-string v11, "SprintUpdater"

    const-string v13, "Inconsistent package names"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v13, "Inconsistent package names"

    invoke-direct {v11, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :catch_0
    move-exception v3

    .line 959
    .local v3, ee:Ljava/lang/Throwable;
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    .line 960
    iget v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mProcessedCount:I

    .line 962
    if-eqz v6, :cond_3

    .line 963
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 964
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 965
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 969
    .end local v4           #f:Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_10

    const/4 v0, 0x0

    .line 970
    .local v0, downloadException:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->isFinishing()Z

    move-result v11

    if-nez v11, :cond_4

    .line 971
    new-instance v11, Lcom/sprint/ce/updater/UpdaterMain$18;

    invoke-direct {v11, p0, v0}, Lcom/sprint/ce/updater/UpdaterMain$18;-><init>(Lcom/sprint/ce/updater/UpdaterMain;Z)V

    invoke-virtual {p0, v11}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 997
    :cond_4
    if-eqz v1, :cond_11

    const-string v8, "Installation failed"

    .line 998
    .local v8, message:Ljava/lang/String;
    :goto_2
    const-string v11, "SprintUpdater"

    invoke-static {v11, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 893
    .end local v0           #downloadException:Z
    .end local v3           #ee:Ljava/lang/Throwable;
    .end local v8           #message:Ljava/lang/String;
    :cond_5
    :try_start_1
    iget-object v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    iget-object v13, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 894
    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Inconsistent package names: caller="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";update="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v13, "Inconsistent package names"

    invoke-direct {v11, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 899
    :cond_6
    iget-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_8

    .line 901
    :try_start_2
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 902
    .local v10, pm:Landroid/content/pm/PackageManager;
    iget-object v11, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 903
    .local v7, info:Landroid/content/pm/PackageInfo;
    iget-boolean v11, v2, Lcom/sprint/ce/updater/Entry;->force:Z

    if-nez v11, :cond_8

    iget v11, v2, Lcom/sprint/ce/updater/Entry;->versionCode:I

    iget v13, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v11, v13, :cond_8

    .line 904
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_7

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Attempting to install same version. versionCode: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_7
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sprint/ce/updater/UpdaterMain;->validateOverride(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 906
    sget-object v11, Lcom/sprint/ce/updater/UpdaterMain$InstallResult;->NOT_OVERRIDDEN:Lcom/sprint/ce/updater/UpdaterMain$InstallResult;

    iget-object v13, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-direct {p0, v11, v13}, Lcom/sprint/ce/updater/UpdaterMain;->processEntryComplete(Lcom/sprint/ce/updater/UpdaterMain$InstallResult;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 910
    .end local v7           #info:Landroid/content/pm/PackageInfo;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v9

    .line 911
    .local v9, notFound:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_8

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "App not currently installed "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v9           #notFound:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "trying URL: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "pkg."

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/sprint/ce/updater/UpdaterMain;->sRandom:Ljava/util/Random;

    const v14, 0x186a0

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 918
    .local v5, fileName:Ljava/lang/String;
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_a

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "saving to file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_a
    iget-object v11, v2, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-direct {p0, v11, v5}, Lcom/sprint/ce/updater/UpdaterMain;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    if-eqz v11, :cond_b

    .line 921
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v13, "Aborting: user cancelled"

    invoke-direct {v11, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 924
    :cond_b
    new-instance v11, Lcom/sprint/ce/updater/UpdaterMain$17;

    invoke-direct {v11, p0}, Lcom/sprint/ce/updater/UpdaterMain$17;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    invoke-virtual {p0, v11}, Lcom/sprint/ce/updater/UpdaterMain;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 945
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_c

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Successfully downloaded: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v2, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_c
    const/4 v1, 0x1

    .line 948
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 949
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_d

    const-string v11, "SprintUpdater"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Using temp file: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_d
    iget-boolean v11, v2, Lcom/sprint/ce/updater/Entry;->force:Z

    if-nez v11, :cond_e

    iget-boolean v11, p0, Lcom/sprint/ce/updater/UpdaterMain;->mOverRideFile:Z

    if-nez v11, :cond_e

    const/4 v11, 0x0

    :goto_3
    invoke-direct {p0, v6, v11}, Lcom/sprint/ce/updater/UpdaterMain;->installUpdate(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 951
    sget-object v13, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 952
    :try_start_4
    sget-object v11, Lcom/sprint/ce/updater/UpdaterMain;->lock:Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Object;->wait()V

    .line 951
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11

    .line 950
    :cond_e
    const/4 v11, 0x1

    goto :goto_3

    .line 955
    :cond_f
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v13, "Install update failed"

    invoke-direct {v11, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 969
    .end local v5           #fileName:Ljava/lang/String;
    .restart local v3       #ee:Ljava/lang/Throwable;
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 997
    .restart local v0       #downloadException:Z
    :cond_11
    const-string v8, "Download failed"

    goto/16 :goto_2
.end method

.method protected downloadAndInstallUpdatesAsync()V
    .locals 1

    .prologue
    .line 865
    new-instance v0, Lcom/sprint/ce/updater/UpdaterMain$16;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterMain$16;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 871
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 872
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 27
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, action:Ljava/lang/String;
    const-string v23, "com.sprint.action.UPGRADE_CHECK"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 132
    const-string v23, "com.sprint.action.UPGRADE_TEST"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 133
    const-string v23, "com.sprint.action.INSTALL_FROM_APK"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 134
    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    .line 448
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_1

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "UpdaterMain: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    const/high16 v23, 0x7f03

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->setContentView(I)V

    .line 158
    const v23, 0x7f070003

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ProgressBar;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    .line 159
    const v23, 0x7f070002

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const v24, 0x7f050017

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const v23, 0x7f070004

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const-string v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v23, 0x7f070001

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mTitle:Landroid/widget/TextView;

    .line 164
    const/high16 v23, 0x7f07

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mIcon:Landroid/widget/ImageView;

    .line 165
    const v23, 0x7f070006

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const v24, 0x7f050010

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateLauncher:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->invalidate()V

    .line 173
    invoke-static/range {p0 .. p0}, Lcom/sprint/ce/updater/DownloadUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 177
    .local v8, data:Landroid/net/Uri;
    :try_start_0
    const-string v23, "android.intent.action.VIEW"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    .line 178
    if-nez v8, :cond_2

    .line 179
    const-string v23, "SprintUpdater"

    const-string v24, "Invalid request from browser, expecting data"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 443
    :catch_0
    move-exception v9

    .line 444
    .local v9, e:Ljava/lang/Throwable;
    const-string v23, "SprintUpdater"

    const-string v24, "Unexpected Exception launching: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 185
    .end local v9           #e:Ljava/lang/Throwable;
    :cond_2
    const/16 v23, 0x0

    :try_start_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    .line 186
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mNoPrompt:Z

    .line 187
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    .line 188
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z

    .line 190
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    .line 191
    const-string v23, "package"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    .line 192
    const-string v23, "version"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 193
    .local v21, version:Ljava/lang/String;
    const/16 v22, -0x1

    .line 195
    .local v22, versionCode:I
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_3

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "scheme: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " host: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " url: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " package: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_5

    .line 198
    :cond_4
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "url param is required: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 203
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_7

    .line 204
    :cond_6
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "package param is required: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 209
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 210
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 212
    .local v18, type:Ljava/lang/String;
    if-nez v18, :cond_8

    .line 213
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "URL is invalid: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 216
    :cond_8
    const-string v23, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 219
    .local v14, pm:Landroid/content/pm/PackageManager;
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_a

    .line 220
    :cond_9
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "version param is required: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 226
    :cond_a
    :try_start_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v22

    .line 235
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 236
    .local v13, infoOld:Landroid/content/pm/PackageInfo;
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_b

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Package "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " new versionCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - installed versionCode="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_b
    iget v0, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_d

    .line 238
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_c

    const-string v23, "SprintUpdater"

    const-string v24, "Newer version already installed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_c
    const v23, 0x7f050027

    const v24, 0x104000a

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 243
    .end local v13           #infoOld:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v10

    .line 245
    .local v10, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_d

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Package "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " - not yet installed"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v10           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserAPK:Z

    .line 249
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mEntries:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->createEntry(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/sprint/ce/updater/Entry;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v21           #version:Ljava/lang/String;
    .end local v22           #versionCode:I
    :cond_e
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const v24, 0x7f05001f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_28

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_29

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v14

    .line 416
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 417
    .local v7, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 419
    .local v12, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mTitle:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 430
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 431
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_f

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Using altUrl="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";altTitle="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";slot0="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_f
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_10

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "postUpdateAction="

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/high16 v24, 0x104

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserAPK:Z

    move/from16 v23, v0

    if-nez v23, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserJSON:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2a

    .line 439
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->performBrowserRequest()V

    goto/16 :goto_0

    .line 228
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    .restart local v18       #type:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    .restart local v21       #version:Ljava/lang/String;
    .restart local v22       #versionCode:I
    :catch_2
    move-exception v9

    .line 229
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Version is invalid, needs to be an int value: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 251
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_13
    const-string v23, ".json"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 253
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    const-string v24, "https"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 254
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->allowBrowserJsonHttp:Z

    if-eqz v23, :cond_15

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    const-string v24, "http"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 255
    :cond_14
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mBrowserJSON:Z

    goto/16 :goto_1

    .line 257
    :cond_15
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "JSON file request must use https: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 262
    :cond_16
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "URL has unexpected value (must end with .apk or .json): "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 266
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v21           #version:Ljava/lang/String;
    .end local v22           #versionCode:I
    :cond_17
    const-string v23, "com.sprint.action.INSTALL_FROM_APK"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    .line 268
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_18

    .line 272
    const-string v23, "SprintUpdater"

    const-string v24, "No APK file sent in data"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 276
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 277
    .restart local v19       #uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 279
    .restart local v18       #type:Ljava/lang/String;
    if-nez v18, :cond_19

    .line 280
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Data URL is invalid: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 283
    :cond_19
    const-string v23, ".apk"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1a

    .line 284
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Data URL is invalid, needs to end in .apk: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 290
    :cond_1a
    const/16 v22, -0x1

    .line 291
    .restart local v22       #versionCode:I
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 292
    .local v11, extras:Landroid/os/Bundle;
    if-eqz v11, :cond_1b

    .line 293
    const-string v23, "com.sprint.ce.updater.EXTRA_USE_SLOT0"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    .line 294
    const-string v23, "com.sprint.ce.updater.EXTRA_ALT_TITLE"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    .line 295
    const-string v23, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mNoPrompt:Z

    .line 296
    const-string v23, "com.sprint.ce.updater.EXTRA_ALLOW_OVERRIDE"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z

    .line 297
    const-string v23, "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    .line 298
    const-string v23, "com.sprint.ce.updater.EXTRA_VERSION_CODE"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result v22

    .line 301
    :try_start_7
    const-string v23, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 307
    :cond_1b
    :goto_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_1d

    .line 308
    :cond_1c
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Package name is invalid: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 302
    :catch_3
    move-exception v9

    .line 303
    .local v9, e:Ljava/lang/RuntimeException;
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_1b

    const-string v23, "SprintUpdater"

    const-string v24, "Error: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 313
    .end local v9           #e:Ljava/lang/RuntimeException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->validateVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/ce/updater/UpdaterMain$PackageState;

    move-result-object v17

    .line 314
    .local v17, state:Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    invoke-static {}, Lcom/sprint/ce/updater/UpdaterMain;->$SWITCH_TABLE$com$sprint$ce$updater$UpdaterMain$PackageState()[I

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/sprint/ce/updater/UpdaterMain$PackageState;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    .line 342
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_1e

    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Not allowed to install issue: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1e
    const v23, 0x7f050029

    const v24, 0x104000a

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 316
    :pswitch_0
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_1f

    const-string v23, "SprintUpdater"

    const-string v24, "Newer version already installed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1f
    const v23, 0x7f050027

    const v24, 0x104000a

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 322
    :pswitch_1
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_20

    const-string v23, "SprintUpdater"

    const-string v24, "Same version already installed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAllowOverride:Z

    move/from16 v23, v0

    if-nez v23, :cond_21

    .line 324
    const v23, 0x7f050028

    const v24, 0x104000a

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setEnabled(Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 336
    :pswitch_2
    const v23, 0x7f05002a

    const v24, 0x104000a

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mFinishOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 348
    :cond_21
    :pswitch_3
    new-instance v23, Lcom/sprint/ce/updater/Response;

    invoke-direct/range {v23 .. v23}, Lcom/sprint/ce/updater/Response;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mResponse:Lcom/sprint/ce/updater/Response;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mResponse:Lcom/sprint/ce/updater/Response;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->createEntry(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/sprint/ce/updater/Entry;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sprint/ce/updater/Response;->addEntry(Lcom/sprint/ce/updater/Entry;)V

    goto/16 :goto_1

    .line 355
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v17           #state:Lcom/sprint/ce/updater/UpdaterMain$PackageState;
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v22           #versionCode:I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 356
    .restart local v11       #extras:Landroid/os/Bundle;
    if-eqz v11, :cond_23

    .line 357
    const-string v23, "com.sprint.ce.updater.EXTRA_USE_SLOT0"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    .line 358
    const-string v23, "com.sprint.ce.updater.EXTRA_ALT_TITLE"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltTitle:Ljava/lang/String;

    .line 359
    const-string v23, "com.sprint.ce.updater.EXTRA_NO_PROMPT"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mNoPrompt:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 361
    :try_start_9
    const-string v23, "com.sprint.ce.updater.EXTRA_POST_UPDATE_ACTION"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPostAction:Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    .line 367
    :cond_23
    :goto_5
    :try_start_a
    const-string v23, "com.sprint.action.UPGRADE_TEST"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    .line 368
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    .line 370
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getIntent()Landroid/content/Intent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    .line 372
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v6

    .line 374
    .local v6, cn:Landroid/content/ComponentName;
    if-nez v6, :cond_25

    .line 375
    const-string v23, "SprintUpdater"

    const-string v24, "Caller is NULL! Please check that: 1) you are using startActivityForResult from the UI thread, and 2) your Activity doesn\'t finish before receiving onActivityResult"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 362
    .end local v6           #cn:Landroid/content/ComponentName;
    :catch_4
    move-exception v9

    .line 363
    .restart local v9       #e:Ljava/lang/RuntimeException;
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v23, :cond_23

    const-string v23, "SprintUpdater"

    const-string v24, "Error: "

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 381
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cn:Landroid/content/ComponentName;
    :cond_25
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 384
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x40

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 385
    .restart local v12       #info:Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 386
    .local v16, sigs:[Landroid/content/pm/Signature;
    const/16 v20, 0x0

    .line 387
    .local v20, validSig:Z
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_26

    .line 388
    const/16 v23, 0x0

    aget-object v23, v16, v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    .line 389
    .local v15, signature:Ljava/lang/String;
    const-string v23, "30820310308201f8a003020102021076c3b7bb6661ab632dc762ef1951f660300d06092a864886f70d01010505003036310b3009060355040613025553310f300d060355040a1306537072696e74311630140603550403130d537072696e7420417070204341301e170d3034303133303030303030305a170d3134303132393233353935395a3071310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310c300a060355040b1303505247311e301c06035504031315537072696e7420566973696f6e20526f6f7420434130819f300d06092a864886f70d010101050003818d0030818902818100f445b429c160c91022a93c1cf3a8e3ec2221251fc478b849252332e90ea484e1356cd327f7c6d3ad317495db01ad805f30de4cdb7ebfa01bdbf9ba4a168a433f5f4032ddf415d17bba0303063367667ec82388320e26406230be071b04c7bf902b74d0d28d318499418a207bb913c8efb2bf251c7f4b6acf152b3fbfebb822150203010001a363306130090603551d130402300030130603551d25040c300a06082b06010505070303300b0603551d0f040403020780301106096086480186f8420101040403020410301f0603551d23041830168014cb7a191aff9b7e74c5e75393c09470c7de0debe6300d06092a864886f70d01010505000382010100102d6d198d6b38a822571ad1ddb29c2e971308f8e81183933d9a1e9b44d3564006d66fb8477350cec63e1393645c6d488f41fc17f4f1849c4e549ba2a4297cc68b3b7af4d799ac9e5b86f4bdfb4e46f13e1eaa1779577c7f0e3609ff972a66866b19b3107ac022c69b9b9be13c7cec56e02c1fce16fdb10377c2db7d62ae0e11084186649ecd55bdba943f34dfb0d11255896bdc93bc867617b97b63022b7a9d745b5fec1ff7c97a5811807ab850984a3a8c6b4c8e7330de1401262495e1e492e65390d67f102ee91bc1b0c2300f4a0fd4d149aadfda1d285b8435bd78ebc79136e0fce06fa9c1752162cd017016fedeecd8484bcce0b34dc26bf4acf64c26af"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_27

    .line 390
    const-string v23, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_27

    const/16 v20, 0x0

    .line 393
    .end local v15           #signature:Ljava/lang/String;
    :cond_26
    :goto_6
    sget-boolean v23, Lcom/sprint/ce/updater/DownloadUtil;->allowTestInstall:Z

    if-nez v23, :cond_e

    .line 394
    const/16 v23, -0x1

    const-string v24, "com.sprint.permission.INSTALL_UPDATES"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 396
    if-nez v20, :cond_e

    .line 397
    const-string v23, "SprintUpdater"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Caller ("

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 398
    const-string v25, ") has no permission "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "com.sprint.permission.INSTALL_UPDATES"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "; returning..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 397
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterMain;->finish()V

    goto/16 :goto_0

    .line 390
    .restart local v15       #signature:Ljava/lang/String;
    :cond_27
    const/16 v20, 0x1

    goto :goto_6

    .line 411
    .end local v6           #cn:Landroid/content/ComponentName;
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #signature:Ljava/lang/String;
    .end local v16           #sigs:[Landroid/content/pm/Signature;
    .end local v20           #validSig:Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mStatus:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const v24, 0x7f05001f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 422
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :catch_5
    move-exception v9

    .line 423
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 426
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 441
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mResponse:Lcom/sprint/ce/updater/Response;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDoneAlt:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterMain;->performUpdateCheck(Lcom/sprint/ce/updater/Response;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mUpdateCheckDone:Ljava/lang/Runnable;

    move-object/from16 v23, v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_7

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1323
    iget-boolean v1, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-nez v1, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterMain;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1325
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1327
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1383
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1384
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInstallSuccess:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mPostActionStarted:Z

    if-nez v0, :cond_1

    .line 1386
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterMain;->startPostAction()V

    .line 1388
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1393
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInteractiveUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1394
    const/4 v0, 0x1

    .line 1396
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1344
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1335
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/ce/updater/UpdaterService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1336
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.sprint.action.RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterMain;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1340
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/provider/Settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/sprint/ce/updater/UpdaterMain;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1333
    nop

    :pswitch_data_0
    .packed-switch 0x7f07000a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1350
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1351
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1356
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1358
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStop() state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :cond_0
    invoke-static {p0}, Lcom/sprint/ce/updater/DownloadUtil;->releaseDataSession(Landroid/content/Context;)V

    .line 1360
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mAltUseSlot0:Z

    if-eqz v0, :cond_1

    .line 1361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterMain;->mStop:Z

    .line 1363
    :cond_1
    return-void
.end method

.method public showOverrideFileDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "appName"

    .prologue
    .line 589
    move-object v1, p1

    .line 590
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 592
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 593
    const v2, 0x7f05002b

    invoke-virtual {p0, v2}, Lcom/sprint/ce/updater/UpdaterMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 594
    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 596
    const v2, 0x104000a

    new-instance v3, Lcom/sprint/ce/updater/UpdaterMain$11;

    invoke-direct {v3, p0}, Lcom/sprint/ce/updater/UpdaterMain$11;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    .line 595
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 602
    const/high16 v2, 0x104

    new-instance v3, Lcom/sprint/ce/updater/UpdaterMain$12;

    invoke-direct {v3, p0}, Lcom/sprint/ce/updater/UpdaterMain$12;-><init>(Lcom/sprint/ce/updater/UpdaterMain;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 607
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 608
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 609
    return-void
.end method
