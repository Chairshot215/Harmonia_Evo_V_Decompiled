.class Lcom/sprint/dsa/DsaWebChromeClient$3;
.super Ljava/lang/Object;
.source "DsaWebChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaWebChromeClient;->processCommand(Landroid/widget/Button;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaWebChromeClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaWebChromeClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->exitMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->saveExitDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient$3;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->exitMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->saveExitDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    goto :goto_0
.end method
