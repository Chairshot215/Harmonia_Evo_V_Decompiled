.class public Lcom/htc/dlnamediaserver/WifiHelp;
.super Landroid/app/Activity;
.source "WifiHelp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private CloseIfWifiUP()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {p0}, Lcom/htc/dlnamediaserver/ConnectionChangeReceiver;->IsNetworkUp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/WifiHelp;->finish()V

    .line 19
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/dlnamediaserver/WifiHelp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/WifiHelp;->CloseIfWifiUP()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x7f07

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/WifiHelp;->setContentView(I)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/WifiHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/WifiHelp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/WifiHelp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/htc/dlnamediaserver/WifiHelp$1;

    invoke-direct {v1, p0}, Lcom/htc/dlnamediaserver/WifiHelp$1;-><init>(Lcom/htc/dlnamediaserver/WifiHelp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/WifiHelp;->CloseIfWifiUP()Z

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    return-void
.end method
