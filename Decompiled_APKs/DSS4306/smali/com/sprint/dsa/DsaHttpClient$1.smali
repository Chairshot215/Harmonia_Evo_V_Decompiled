.class Lcom/sprint/dsa/DsaHttpClient$1;
.super Landroid/os/AsyncTask;
.source "DsaHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaHttpClient;->execute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaHttpClient;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    iput-object p2, p0, Lcom/sprint/dsa/DsaHttpClient$1;->val$url:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/DsaHttpClient$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->val$url:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 285
    .end local v1           #result:Ljava/lang/String;
    .local v2, result:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 249
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->val$url:Ljava/lang/String;

    const-string v4, "stic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 250
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    const-string v4, "10.31.172.173"

    #setter for: Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->access$0(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V

    .line 251
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    const/16 v4, 0x50

    #setter for: Lcom/sprint/dsa/DsaHttpClient;->proxyPort:I
    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->access$1(Lcom/sprint/dsa/DsaHttpClient;I)V

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$3(Lcom/sprint/dsa/DsaHttpClient;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaDiag;->canConnectTo(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v3

    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v4}, Lcom/sprint/dsa/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 263
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v3}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z

    .line 274
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    iget-object v4, p0, Lcom/sprint/dsa/DsaHttpClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->loadURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v2, v1

    .line 285
    .end local v1           #result:Ljava/lang/String;
    .restart local v2       #result:Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v2           #result:Ljava/lang/String;
    .restart local v1       #result:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    if-eqz v3, :cond_3

    .line 253
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    sget-object v4, Lcom/sprint/dsa/DsaClient;->IP_PROXY_SPCSDNS:Ljava/lang/String;

    #setter for: Lcom/sprint/dsa/DsaHttpClient;->proxyHost:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->access$0(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    const/16 v4, 0x50

    #setter for: Lcom/sprint/dsa/DsaHttpClient;->proxyPort:I
    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->access$1(Lcom/sprint/dsa/DsaHttpClient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DSS"

    const-string v4, "DsaHttpClient.execute(): ERROR"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    const-string v4, "Network Error"

    #setter for: Lcom/sprint/dsa/DsaHttpClient;->errorMessage:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sprint/dsa/DsaHttpClient;->access$4(Lcom/sprint/dsa/DsaHttpClient;Ljava/lang/String;)V

    .line 283
    const/4 v1, 0x0

    goto :goto_3

    .line 256
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sprint/dsa/DsaClient;->SLOT0:Z

    goto :goto_1

    .line 267
    :cond_4
    invoke-static {}, Lcom/sprint/dsa/DsaDiag;->canConnectToDSA1()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    #getter for: Lcom/sprint/dsa/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/DsaClient;
    invoke-static {v3}, Lcom/sprint/dsa/DsaHttpClient;->access$2(Lcom/sprint/dsa/DsaHttpClient;)Lcom/sprint/dsa/DsaClient;

    move-result-object v3

    sget-object v4, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    invoke-virtual {v4}, Lcom/sprint/dsa/DsaSystem;->warmInit()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v3}, Lcom/sprint/dsa/DsaHttpClient;->retryLastUrl()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/DsaHttpClient$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sprint/dsa/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/DsaHttpClient;->handleResult(Ljava/lang/String;)V

    .line 294
    return-void
.end method
