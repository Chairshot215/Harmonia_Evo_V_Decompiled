.class public Lcom/htc/WifiRouter/WifiTurnOffConfirm;
.super Landroid/app/Activity;
.source "WifiTurnOffConfirm.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiTurnOffConfirm"


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private showWifiTurnOffDialog()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090052

    new-instance v2, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;-><init>(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090054

    new-instance v2, Lcom/htc/WifiRouter/WifiTurnOffConfirm$1;

    invoke-direct {v2, p0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm$1;-><init>(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 65
    invoke-direct {p0}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->showWifiTurnOffDialog()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiTurnOffDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 122
    :cond_0
    return-void
.end method
