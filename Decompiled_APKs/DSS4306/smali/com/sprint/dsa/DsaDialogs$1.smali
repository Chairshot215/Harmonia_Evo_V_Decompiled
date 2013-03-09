.class Lcom/sprint/dsa/DsaDialogs$1;
.super Landroid/os/Handler;
.source "DsaDialogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/DsaDialogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sprint/dsa/DsaClient;

    .line 29
    .local v0, dsaClient:Lcom/sprint/dsa/DsaClient;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 90
    sget-object v2, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 91
    sput-object v4, Lcom/sprint/dsa/DsaDialogs;->ad:Landroid/app/AlertDialog;

    .line 93
    :cond_1
    return-void

    .line 32
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 38
    :pswitch_2
    invoke-virtual {v0, v5}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 42
    :pswitch_3
    const-string v2, "&option=exit"

    iput-object v2, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 43
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    .line 44
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v2, "&option=save"

    iput-object v2, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 53
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaWebChromeClient:Lcom/sprint/dsa/DsaWebChromeClient;

    invoke-virtual {v2}, Lcom/sprint/dsa/DsaWebChromeClient;->getFormData()V

    goto :goto_0

    .line 57
    :pswitch_5
    const-string v2, "&option=main_menu"

    iput-object v2, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 59
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v2, "&option=back"

    iput-object v2, v0, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 65
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-virtual {v2, v4}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_7
    sget-object v2, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 71
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v2}, Lcom/sprint/dsa/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 72
    :cond_2
    sget-object v2, Lcom/sprint/dsa/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 74
    const-string v2, "No Network connection available!"

    invoke-static {v0, v2}, Lcom/sprint/dsa/DsaDialogs;->closeDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v2}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z

    move-result v1

    .line 79
    .local v1, retried:Z
    if-nez v1, :cond_0

    .line 81
    const-string v2, "DSS"

    const-string v3, "failed the retry, closing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0, v5}, Lcom/sprint/dsa/DsaClient;->close(I)V

    goto :goto_0

    .line 86
    .end local v1           #retried:Z
    :pswitch_8
    invoke-static {v0}, Lcom/sprint/dsa/Util;->setFactoryDefault(Landroid/content/Context;)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
