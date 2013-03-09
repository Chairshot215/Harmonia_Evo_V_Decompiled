.class public Lcom/sprint/dsa/DsaClient;
.super Landroid/app/Activity;
.source "DsaClient.java"


# static fields
.field public static final CDIC:I = 0x1

.field public static final CIFUMO:I = 0x2

.field public static final CIPRL:I = 0x3

.field public static final CIQ:I = 0x4

.field public static IP_PROXY_SPCSDNS:Ljava/lang/String; = null

.field public static final IP_PROXY_STIC:Ljava/lang/String; = "10.31.172.173"

.field public static final TAG:Ljava/lang/String; = "DSS"

.field public static final USE_HTTP_CLIENT:Z = true

.field public static final WAKE_TAG:Ljava/lang/String; = "DSS"

.field static btnLeft:Landroid/widget/Button;

.field static dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

.field static dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

.field static dsaStateManager:Lcom/sprint/dsa/StateManager;

.field static dsaSystem:Lcom/sprint/dsa/DsaSystem;

.field static dsaWebChromeClient:Lcom/sprint/dsa/DsaWebChromeClient;

.field static dsaWebView:Landroid/webkit/WebView;

.field static dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

.field private static keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private static keyguardManager:Landroid/app/KeyguardManager;

.field private static loadingDialog:Landroid/app/ProgressDialog;

.field static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static powerManager:Landroid/os/PowerManager;

.field static titleView:Landroid/widget/TextView;


# instance fields
.field DEVICE:Z

.field private FormData:Ljava/lang/String;

.field SLOT0:Z

.field SWITCH_TO_HTTP:Z

.field WIFI:Z

.field private allowBack:Z

.field back:Z

.field backMessage:Ljava/lang/String;

.field baseURL:Ljava/lang/String;

.field btnRight:Landroid/widget/Button;

.field private clientVersion:Ljava/lang/String;

.field private destroying:Z

.field dsaDebug:Z

.field private esn:Ljava/lang/String;

.field exitAction:Z

.field exitMessage:Ljava/lang/String;

.field htmlPage:Ljava/lang/String;

.field private initLoad:Z

.field private isUIActive:Z

.field private keyGuard:Z

.field private keyguardLockDisabled:Z

.field private lang:Ljava/lang/String;

.field leftSoftKeyText:Ljava/lang/String;

.field loading:Z

.field private make:Ljava/lang/String;

.field mdn:Ljava/lang/String;

.field private meid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field needsPowerRecycle:Z

.field nextURL:Ljava/lang/String;

.field option:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field rightSoftKeyText:Ljava/lang/String;

.field titleText:Ljava/lang/String;

.field useLocalPages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "144.226.247.31"

    sput-object v0, Lcom/sprint/dsa/DsaClient;->IP_PROXY_SPCSDNS:Ljava/lang/String;

    .line 73
    sput-object v1, Lcom/sprint/dsa/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    .line 74
    sput-object v1, Lcom/sprint/dsa/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->keyguardLockDisabled:Z

    .line 87
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->exitMessage:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->destroying:Z

    .line 93
    iput-boolean v2, p0, Lcom/sprint/dsa/DsaClient;->initLoad:Z

    .line 108
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    .line 109
    sget-boolean v0, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    .line 110
    sget-boolean v0, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    .line 112
    iput-boolean v2, p0, Lcom/sprint/dsa/DsaClient;->keyGuard:Z

    .line 113
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->WIFI:Z

    .line 115
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->SWITCH_TO_HTTP:Z

    .line 116
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->useLocalPages:Z

    .line 118
    iput-boolean v2, p0, Lcom/sprint/dsa/DsaClient;->loading:Z

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    .line 110
    goto :goto_1
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/DsaClient;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    return-void
.end method

.method private excuteCommand(Landroid/net/Uri;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 723
    const-string v4, "command"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, encCommand:Ljava/lang/String;
    const/4 v0, 0x0

    .line 726
    .local v0, command:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/sprint/dsa/UtilEncryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 730
    :goto_0
    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V

    .line 742
    :goto_1
    return-void

    .line 727
    :catch_0
    move-exception v1

    .line 728
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 734
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "SCRTN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    invoke-static {p0}, Lcom/sprint/dsa/Util;->setFactoryDefault(Landroid/content/Context;)V

    goto :goto_1

    .line 736
    :cond_1
    const-string v4, "DSSStart"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 737
    const-string v4, "option"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, option:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "option="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    goto :goto_1

    .line 740
    .end local v3           #option:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V

    goto :goto_1
.end method

.method private isValidDID(Ljava/lang/String;)Z
    .locals 5
    .parameter "did"

    .prologue
    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, id:Ljava/lang/String;
    sget-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v3, :cond_0

    .line 707
    const-string v1, "1234567890ABCD"

    .line 716
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    const/4 v3, 0x1

    .line 719
    :goto_1
    return v3

    .line 709
    :cond_0
    new-instance v2, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v2, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 711
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v3, 0x1e

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Lcom/sprint/internal/SystemPropertiesException;
    const-string v3, "DSS"

    invoke-virtual {v0}, Lcom/sprint/internal/SystemPropertiesException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    .end local v0           #e:Lcom/sprint/internal/SystemPropertiesException;
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private processViewIntent(Landroid/net/Uri;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 674
    if-nez p1, :cond_1

    .line 675
    const-string v5, "DSS"

    const-string v6, "Invalid request from browser, expecting data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    sget-boolean v5, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v5, :cond_2

    .line 680
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 682
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, scheme:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, host:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "dss"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    if-eqz v3, :cond_0

    const-string v5, "SprintSelfService"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 687
    const-string v5, "did"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, encDID:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/sprint/dsa/UtilEncryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, did:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sprint/dsa/DsaClient;->isValidDID(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lcom/sprint/dsa/DsaClient;->excuteCommand(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v0           #did:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 694
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V

    goto :goto_0

    .line 692
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #did:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected acquireLocks()V
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    sget-object v0, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyGuard:Z

    if-eqz v0, :cond_1

    .line 356
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyguardLockDisabled:Z

    if-nez v0, :cond_1

    .line 357
    sget-object v0, Lcom/sprint/dsa/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyguardLockDisabled:Z

    .line 361
    :cond_1
    return-void
.end method

.method public close(I)V
    .locals 13
    .parameter "lastAction"

    .prologue
    const/4 v9, 0x0

    .line 564
    iget-boolean v10, p0, Lcom/sprint/dsa/DsaClient;->destroying:Z

    if-eqz v10, :cond_0

    .line 565
    sget-object v9, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v9}, Lcom/sprint/dsa/StateManager;->done()V

    .line 671
    :goto_0
    return-void

    .line 568
    :cond_0
    sget-object v10, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v11, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v10, v11}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 574
    const-string v10, "DSS"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Close: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const v10, 0x7f04000b

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, message:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v4}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 579
    sget-object v10, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    if-eqz v10, :cond_1

    .line 580
    sget-object v10, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    iget-object v10, v10, Lcom/sprint/dsa/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v10, :cond_1

    .line 581
    sget-object v10, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    iget-object v10, v10, Lcom/sprint/dsa/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 585
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 586
    .local v6, resultIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 587
    const/4 v10, -0x1

    invoke-virtual {p0, v10, v6}, Lcom/sprint/dsa/DsaClient;->setResult(ILandroid/content/Intent;)V

    .line 620
    const-string v10, "images"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/sprint/dsa/DsaClient;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 621
    .local v2, imgDir:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "images"

    invoke-direct {v7, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 622
    .local v7, subDir:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 623
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    array-length v11, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-lt v9, v11, :cond_5

    .line 630
    .end local v2           #imgDir:Ljava/io/File;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #subDir:Ljava/io/File;
    :cond_2
    :goto_2
    iget-boolean v9, p0, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    if-eqz v9, :cond_3

    .line 632
    :try_start_1
    sget-object v9, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v9}, Lcom/sprint/dsa/DsaSystem;->done()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    :cond_3
    :goto_3
    sget-object v9, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v9}, Lcom/sprint/dsa/StateManager;->done()V

    .line 640
    iget-boolean v9, p0, Lcom/sprint/dsa/DsaClient;->needsPowerRecycle:Z

    if-eqz v9, :cond_4

    .line 643
    :try_start_2
    new-instance v5, Lcom/sprint/internal/Platform;

    invoke-direct {v5, p0}, Lcom/sprint/internal/Platform;-><init>(Landroid/content/Context;)V

    .line 644
    .local v5, p:Lcom/sprint/internal/Platform;
    invoke-virtual {v5}, Lcom/sprint/internal/Platform;->reboot()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 657
    .end local v5           #p:Lcom/sprint/internal/Platform;
    :goto_4
    :try_start_3
    const-string v9, "DSS"

    const-string v10, "ACTION_REBOOT!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 663
    :cond_4
    :goto_5
    new-instance v9, Lcom/sprint/dsa/DsaClient$4;

    invoke-direct {v9, p0}, Lcom/sprint/dsa/DsaClient$4;-><init>(Lcom/sprint/dsa/DsaClient;)V

    invoke-virtual {p0, v9}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 670
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->finish()V

    goto/16 :goto_0

    .line 623
    .restart local v2       #imgDir:Ljava/io/File;
    .restart local v4       #message:Ljava/lang/String;
    .restart local v6       #resultIntent:Landroid/content/Intent;
    .restart local v7       #subDir:Ljava/io/File;
    :cond_5
    :try_start_4
    aget-object v1, v10, v9

    .line 624
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 623
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 627
    .end local v1           #f:Ljava/io/File;
    .end local v2           #imgDir:Ljava/io/File;
    .end local v4           #message:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #subDir:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "DSS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "close:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 633
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 634
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "DSS"

    const-string v10, "close:doneSystem"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 645
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 646
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 647
    .local v3, intent:Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v8, value:Landroid/os/Bundle;
    const-string v9, "com.android.service.Watchdog.REBOOT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    const-string v9, "DSS"

    const-string v10, "REBOOT_ACTION!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v9, "nowait"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 651
    const-string v9, "window"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string v9, "interval"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    invoke-virtual {v3, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 654
    const-string v9, "android.intent.action.REBOOT"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/DsaClient;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 658
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #value:Landroid/os/Bundle;
    :catch_3
    move-exception v0

    .line 659
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "DSS"

    const-string v10, "Power Cycling"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public enableUI(ZLjava/lang/String;)V
    .locals 2
    .parameter "uiActiveFlag"
    .parameter "message"

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/sprint/dsa/DsaClient;->isUIActive:Z

    .line 516
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    iget-object v0, v0, Lcom/sprint/dsa/StateManager;->currentUIState:Lcom/sprint/dsa/StateManager$dsaUIState;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-ne v0, v1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 518
    :cond_0
    new-instance v0, Lcom/sprint/dsa/DsaClient$3;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/DsaClient$3;-><init>(Lcom/sprint/dsa/DsaClient;Z)V

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected initDsa()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 414
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->needsPowerRecycle:Z

    .line 415
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 416
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    .line 417
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    .line 418
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->isUIActive:Z

    .line 419
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->FormData:Ljava/lang/String;

    .line 420
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 421
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->baseURL:Ljava/lang/String;

    .line 422
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->titleText:Ljava/lang/String;

    .line 423
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 424
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 425
    iput-object v0, p0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, data:Landroid/net/Uri;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-direct {p0, v1}, Lcom/sprint/dsa/DsaClient;->processViewIntent(Landroid/net/Uri;)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->requestWindowFeature(I)Z

    .line 141
    const/high16 v4, 0x7f03

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 151
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->clientVersion:Ljava/lang/String;

    .line 152
    const-string v4, "DSS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Version Name = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sprint/dsa/DsaClient;->clientVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    :try_start_2
    sget-boolean v4, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-nez v4, :cond_1

    .line 160
    new-instance v4, Lcom/sprint/dsa/DsaSystem;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/DsaSystem;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    .line 162
    :cond_1
    const v4, 0x7f050003

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    sput-object v4, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    .line 163
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    .line 164
    const/high16 v4, 0x7f05

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sput-object v4, Lcom/sprint/dsa/DsaClient;->titleView:Landroid/widget/TextView;

    .line 165
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    .line 166
    new-instance v4, Lcom/sprint/dsa/DsaWebChromeClient;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/DsaWebChromeClient;-><init>(Lcom/sprint/dsa/DsaClient;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/DsaWebChromeClient;

    .line 167
    new-instance v4, Lcom/sprint/dsa/DsaWebViewClient;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/DsaWebViewClient;-><init>(Lcom/sprint/dsa/DsaClient;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    .line 168
    new-instance v4, Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/DsaJavaScriptInterface;-><init>(Lcom/sprint/dsa/DsaClient;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    .line 169
    new-instance v4, Lcom/sprint/dsa/StateManager;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/StateManager;-><init>(Lcom/sprint/dsa/DsaClient;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    .line 170
    new-instance v4, Lcom/sprint/dsa/DsaHttpClient;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/DsaHttpClient;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    .line 171
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    :goto_2
    if-nez p1, :cond_4

    .line 179
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->initDsa()V

    .line 189
    :goto_3
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v5, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_CREATE:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 191
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 192
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 193
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/DsaWebChromeClient;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 194
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    const-string v6, "dsa"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 197
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 198
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 199
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 200
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaWebView:Landroid/webkit/WebView;

    const/high16 v5, -0x100

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 202
    sget-boolean v4, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v4, :cond_5

    .line 203
    sget-object v4, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->model:Ljava/lang/String;

    .line 204
    sget-object v4, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->make:Ljava/lang/String;

    .line 211
    :goto_4
    :try_start_3
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/sprint/dsa/DsaClient;->powerManager:Landroid/os/PowerManager;

    .line 212
    sget-object v4, Lcom/sprint/dsa/DsaClient;->powerManager:Landroid/os/PowerManager;

    const v5, 0x3000000a

    .line 213
    const-string v6, "DSS"

    .line 212
    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 214
    iget-boolean v4, p0, Lcom/sprint/dsa/DsaClient;->keyGuard:Z

    if-eqz v4, :cond_2

    .line 215
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/sprint/dsa/DsaClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    sput-object v4, Lcom/sprint/dsa/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    .line 216
    sget-object v4, Lcom/sprint/dsa/DsaClient;->keyguardManager:Landroid/app/KeyguardManager;

    const-string v5, "SDSA_KEYGUARDLOCK"

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v4

    sput-object v4, Lcom/sprint/dsa/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 221
    :cond_2
    :goto_5
    return-void

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Ljava/lang/Exception;
    iget-boolean v4, p0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "DSS"

    const-string v5, "DsaClient.onCreate(): failed to setContentView"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto/16 :goto_0

    .line 153
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 154
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DSS"

    const-string v5, "PM error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 173
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v2

    .line 174
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "Failed to init DSA"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-virtual {p0, v7}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto/16 :goto_2

    .line 181
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v4}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v4

    sget-object v5, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-eq v4, v5, :cond_2

    .line 184
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/DsaClient;->restoreDsa(Landroid/os/Bundle;)V

    .line 185
    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v5, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESTART:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v4, v5}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    goto/16 :goto_3

    .line 206
    :cond_5
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->model:Ljava/lang/String;

    .line 207
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, p0, Lcom/sprint/dsa/DsaClient;->make:Ljava/lang/String;

    goto :goto_4

    .line 218
    :catch_3
    move-exception v2

    .line 219
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "DsaClient.onCreate(): failed Power manager"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->destroying:Z

    .line 344
    sget-object v0, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 473
    const/4 v2, 0x4

    if-ne p1, v2, :cond_4

    .line 474
    iget-boolean v2, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    iget-boolean v2, p0, Lcom/sprint/dsa/DsaClient;->back:Z

    if-eqz v2, :cond_3

    .line 478
    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    .line 479
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sprint/dsa/DsaDialogs;->yesBackDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_2
    const-string v1, "option=back"

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 484
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sprint/dsa/DsaDialogs;->noBackDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_4
    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_5

    .line 490
    const/16 v2, 0x14

    if-eq p1, v2, :cond_5

    const/16 v2, 0x17

    if-eq p1, v2, :cond_5

    .line 491
    const/16 v2, 0x15

    if-eq p1, v2, :cond_5

    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    .line 492
    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    :cond_5
    move v0, v1

    .line 493
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "DSS"

    const-string v1, "DsaClient.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 502
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->releaseLocks()V

    .line 334
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-eq v0, v1, :cond_0

    .line 335
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 338
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 305
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->acquireLocks()V

    .line 307
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/StateManager$dsaUIState;

    if-eq v0, v1, :cond_0

    .line 308
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 309
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->isUIActive:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 312
    :cond_0
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getBGState()Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v0, v1, :cond_1

    .line 317
    sget-object v0, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 318
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 382
    const-string v0, "LeftSoftKeyText"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 383
    const-string v0, "RightSoftKeyText"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 384
    const-string v0, "TitleText"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->titleText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 385
    const-string v0, "baseURL"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->baseURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 386
    const-string v0, "NextURL"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "FormData"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->FormData:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 388
    const-string v0, "option"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 389
    const-string v0, "allowBack"

    iget-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 390
    const-string v0, "exitAction"

    iget-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 391
    const-string v0, "htmlPage"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 392
    const-string v0, "esn"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->esn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 393
    const-string v0, "meid"

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient;->meid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 394
    const-string v0, "isUIActive"

    iget-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->isUIActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v0, "LastURL"

    sget-object v1, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 396
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v0}, Lcom/sprint/dsa/DsaWebViewClient;->saveFormData()V

    .line 397
    const-string v0, "formData"

    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    iget-object v1, v1, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 398
    sget-object v0, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 400
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    .line 401
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->getBGState()Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    if-ne v0, v1, :cond_0

    .line 402
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/StateManager;->setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V

    .line 404
    :cond_0
    const-string v0, "BGState"

    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v1}, Lcom/sprint/dsa/StateManager;->getBGState()Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 405
    const-string v0, "UIState"

    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v1}, Lcom/sprint/dsa/StateManager;->getUIState()Lcom/sprint/dsa/StateManager$dsaUIState;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 408
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/DsaClient;->printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method protected onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 236
    sget-object v5, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f040009

    invoke-virtual {p0, v6}, Lcom/sprint/dsa/DsaClient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    sget-object v5, Lcom/sprint/dsa/DsaClient;->titleView:Landroid/widget/TextView;

    const v6, 0x7f040016

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 238
    sget-object v5, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    sget-object v5, Lcom/sprint/dsa/DsaClient;->loadingDialog:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/sprint/dsa/DsaClient$1;

    invoke-direct {v6, p0}, Lcom/sprint/dsa/DsaClient$1;-><init>(Lcom/sprint/dsa/DsaClient;)V

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 248
    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v6, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 250
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 251
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/DsaClient;->lang:Ljava/lang/String;

    .line 252
    iget-boolean v5, p0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "DSS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current lanaguage: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sprint/dsa/DsaClient;->lang:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    const/4 v4, 0x0

    .line 254
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sprint/dsa/DsaClient;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 255
    .local v1, intent:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 256
    const-string v5, "com.sprint.dsa.query"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_1

    .line 258
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 259
    .local v3, pos:I
    const/4 v5, -0x1

    if-le v3, v5, :cond_1

    .line 260
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    .line 261
    invoke-virtual {v4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 269
    .end local v3           #pos:I
    :cond_1
    iget-boolean v5, p0, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    if-eqz v5, :cond_4

    .line 270
    iget-boolean v5, p0, Lcom/sprint/dsa/DsaClient;->initLoad:Z

    if-eqz v5, :cond_3

    .line 272
    :try_start_0
    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v5, p0}, Lcom/sprint/dsa/DsaSystem;->initSystem(Lcom/sprint/dsa/DsaClient;)V

    .line 273
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sprint/dsa/DsaClient;->initLoad:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_2
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "DSS"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 278
    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    iget-object v6, p0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/DsaWebViewClient;->loadData(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 286
    sget-object v5, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sprint/dsa/DsaClient;->query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sprint/dsa/DsaHttpClient;->execute(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    const-string v1, "DsaClient.onUserleaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 460
    sget-object v0, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/StateManager;->startPauseWatch()V

    .line 461
    return-void
.end method

.method protected printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter "bundle"
    .parameter "label"

    .prologue
    .line 467
    return-void
.end method

.method protected releaseLocks()V
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/sprint/dsa/DsaClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    :cond_0
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyGuard:Z

    if-eqz v0, :cond_1

    .line 370
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyguardLockDisabled:Z

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Lcom/sprint/dsa/DsaClient;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaClient;->keyguardLockDisabled:Z

    .line 375
    :cond_1
    return-void
.end method

.method protected restoreDsa(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 432
    const-string v1, "LeftSoftKeyText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 433
    const-string v1, "RightSoftKeyText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 434
    const-string v1, "TitleText"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->titleText:Ljava/lang/String;

    .line 435
    const-string v1, "baseURL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->baseURL:Ljava/lang/String;

    .line 436
    const-string v1, "NextURL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 437
    const-string v1, "FormData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->FormData:Ljava/lang/String;

    .line 438
    const-string v1, "option"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 439
    const-string v1, "allowBack"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->allowBack:Z

    .line 440
    const-string v1, "exitAction"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    .line 441
    const-string v1, "htmlPage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    .line 442
    const-string v1, "esn"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->esn:Ljava/lang/String;

    .line 443
    const-string v1, "meid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sprint/dsa/DsaClient;->meid:Ljava/lang/String;

    .line 444
    const-string v1, "isUIActive"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->isUIActive:Z

    .line 445
    const-string v1, "LastURL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 446
    .local v0, url:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 447
    :cond_0
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    const-string v1, "formData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v2, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    .line 448
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    const-string v1, "BGState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/StateManager$dsaBackgroundState;

    invoke-virtual {v2, v1}, Lcom/sprint/dsa/StateManager;->setBGState(Lcom/sprint/dsa/StateManager$dsaBackgroundState;)V

    .line 449
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    const-string v1, "UIState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v2, v1}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    .line 450
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/DsaWebViewClient;

    invoke-virtual {v1}, Lcom/sprint/dsa/DsaWebViewClient;->restoreFormData()V

    .line 451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/dsa/DsaClient;->initLoad:Z

    .line 453
    const-string v1, "restoreDsa"

    invoke-virtual {p0, p1, v1}, Lcom/sprint/dsa/DsaClient;->printDebugData(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setBusyText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 505
    new-instance v0, Lcom/sprint/dsa/DsaClient$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/DsaClient$2;-><init>(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 510
    return-void
.end method
