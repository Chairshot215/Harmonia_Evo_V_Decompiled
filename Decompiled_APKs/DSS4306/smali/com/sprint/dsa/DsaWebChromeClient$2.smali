.class Lcom/sprint/dsa/DsaWebChromeClient$2;
.super Ljava/lang/Object;
.source "DsaWebChromeClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaWebChromeClient;-><init>(Lcom/sprint/dsa/DsaClient;)V
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
    iput-object p1, p0, Lcom/sprint/dsa/DsaWebChromeClient$2;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$2;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    const-string v1, "Click right softkey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaWebChromeClient$2;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    iget-object v1, p0, Lcom/sprint/dsa/DsaWebChromeClient$2;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v1}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/dsa/DsaWebChromeClient$2;->this$0:Lcom/sprint/dsa/DsaWebChromeClient;

    #getter for: Lcom/sprint/dsa/DsaWebChromeClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v2}, Lcom/sprint/dsa/DsaWebChromeClient;->access$0(Lcom/sprint/dsa/DsaWebChromeClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v2

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/DsaWebChromeClient;->processCommand(Landroid/widget/Button;Ljava/lang/String;)V

    .line 31
    return-void
.end method
