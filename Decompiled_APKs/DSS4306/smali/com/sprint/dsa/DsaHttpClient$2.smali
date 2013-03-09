.class Lcom/sprint/dsa/DsaHttpClient$2;
.super Ljava/lang/Object;
.source "DsaHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaHttpClient;->handleResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaHttpClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->retryLoadCount:I
    invoke-static {v0}, Lcom/sprint/dsa/DsaHttpClient;->access$5(Lcom/sprint/dsa/DsaHttpClient;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/dsa/DsaHttpClient;->access$6(Lcom/sprint/dsa/DsaHttpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->retryDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/DsaHttpClient$2;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;
    invoke-static {v1}, Lcom/sprint/dsa/DsaHttpClient;->access$6(Lcom/sprint/dsa/DsaHttpClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDialogs;->closeDialog(Lcom/sprint/dsa/DsaClient;Ljava/lang/String;)V

    goto :goto_0
.end method
