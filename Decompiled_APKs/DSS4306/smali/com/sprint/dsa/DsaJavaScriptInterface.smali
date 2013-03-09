.class public Lcom/sprint/dsa/DsaJavaScriptInterface;
.super Ljava/lang/Object;
.source "DsaJavaScriptInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DSS"


# instance fields
.field private allowSetInputType:Z

.field private dsaClient:Lcom/sprint/dsa/DsaClient;

.field formData:Ljava/util/HashMap;
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

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/DsaClient;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/DsaJavaScriptInterface;)Lcom/sprint/dsa/DsaClient;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    return-object v0
.end method


# virtual methods
.method public doneWrite(I)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "DSS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DsaJavascript.doneWrite(): size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    if-lez p1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    if-eqz v1, :cond_1

    .line 200
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaSystem;->sysPropWrite(Lcom/sprint/dsa/DsaClient;)V

    .line 215
    :goto_0
    return-void

    .line 203
    :cond_1
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const-string v2, "option=prov_success"

    iput-object v2, v1, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 208
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaJavascript:Lcom/sprint/dsa/DsaJavaScriptInterface;

    invoke-virtual {v1, v4}, Lcom/sprint/dsa/DsaJavaScriptInterface;->processFormData(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "write"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 211
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 212
    sget-object v1, Lcom/sprint/dsa/DsaClient;->dsaStateManager:Lcom/sprint/dsa/StateManager;

    sget-object v2, Lcom/sprint/dsa/StateManager$dsaUIState;->DSA_WAIT_USER_ACTION:Lcom/sprint/dsa/StateManager$dsaUIState;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/StateManager;->setUIState(Lcom/sprint/dsa/StateManager$dsaUIState;)V

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, timeout:I
    :try_start_0
    const-string v2, "mdn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->mdn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->mdn:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    const/16 v2, 0x3e9

    if-lt v1, v2, :cond_2

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->mdn:Ljava/lang/String;

    .line 292
    :goto_1
    return-object v2

    .line 277
    :cond_2
    add-int/lit16 v1, v1, 0xfa

    .line 278
    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DSS"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 282
    :cond_4
    :try_start_1
    const-string v2, "nai"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    sget-object v2, Lcom/sprint/dsa/DsaSystem;->nai:Ljava/lang/String;

    goto :goto_1

    .line 284
    :cond_5
    const-string v2, "firmwarever"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 285
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_1

    .line 286
    :cond_6
    const-string v2, "prlver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    const-string v2, "2.0.0.1"

    goto :goto_1
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "from"
    .parameter "desc"

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DSS-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public popup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "msg"
    .parameter "title"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Lcom/sprint/dsa/DsaJavaScriptInterface$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/DsaJavaScriptInterface$4;-><init>(Lcom/sprint/dsa/DsaJavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public processFormData(Ljava/lang/String;)V
    .locals 6
    .parameter "formData"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "DSS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DsaJavascript.processFormData(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->exitAction:Z

    if-eqz v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v4, 0x0

    const-string v5, "Shutting Down..."

    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V

    .line 111
    :goto_0
    const/4 v0, 0x0

    .line 112
    .local v0, data:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 113
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_1

    const-string v3, "DSS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    move-object v0, p1

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 125
    if-nez v0, :cond_7

    .line 126
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v3, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    .line 132
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .line 133
    .local v2, url:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_4
    if-eqz v0, :cond_a

    const-string v3, ""

    if-eq v0, v3, :cond_a

    .line 137
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    :goto_2
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v3, v3, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v3, :cond_5

    const-string v3, "DSS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DsaJavascript.processFormData(): URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_5
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sprint/dsa/DsaClient;->htmlPage:Ljava/lang/String;

    .line 153
    sget-object v3, Lcom/sprint/dsa/DsaClient;->dsaHttpClient:Lcom/sprint/dsa/DsaHttpClient;

    invoke-virtual {v3, v2}, Lcom/sprint/dsa/DsaHttpClient;->execute(Ljava/lang/String;)V

    .line 161
    .end local v0           #data:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :goto_3
    return-void

    .line 107
    :cond_6
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v4, 0x0

    const-string v5, "Loading..."

    invoke-virtual {v3, v4, v5}, Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "DSS"

    const-string v4, "DsaJavascript.processFormData(): ERROR"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 128
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #data:Ljava/lang/String;
    :cond_7
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/DsaClient;->option:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 139
    .restart local v2       #url:Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v3, v3, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 142
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v4, v4, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 145
    :cond_a
    iget-object v3, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v3, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public saveFormElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "value"

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->formData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    const-string v2, "error storing formdata"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavaScript.setBackMessage(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    if-eqz p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "DSS:setBackMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/DsaClient;->back:Z

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_3
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/dsa/DsaClient;->back:Z

    goto :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->backMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExitMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 238
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->exitMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInputType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "DSS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DsaJavascript.setInputType(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->allowSetInputType:Z

    if-eqz v0, :cond_1

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 167
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/DsaJavaScriptInterface$3;

    invoke-direct {v1, p0, p1}, Lcom/sprint/dsa/DsaJavaScriptInterface$3;-><init>(Lcom/sprint/dsa/DsaJavaScriptInterface;I)V

    .line 179
    const-wide/16 v2, 0x96

    .line 167
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->allowSetInputType:Z

    .line 182
    :cond_1
    return-void
.end method

.method public setLeftSoftKey(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/DsaJavaScriptInterface;->setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V

    .line 28
    return-void
.end method

.method public setNextURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/DsaClient;->SWITCH_TO_HTTP:Z

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->nextURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRightSoftKey(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    invoke-virtual {p0, p1, v0}, Lcom/sprint/dsa/DsaJavaScriptInterface;->setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V

    .line 33
    return-void
.end method

.method public setSoftKey(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 9
    .parameter "label"
    .parameter "btnSoftKey"

    .prologue
    const/4 v8, -0x1

    const/16 v6, 0x3a

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 38
    :cond_0
    const-string p1, "000:"

    .line 40
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 41
    .local v2, index:I
    const/4 v3, 0x0

    .line 42
    .local v3, locLabel:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, command:Ljava/lang/String;
    :try_start_0
    const-string v5, "004"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "00C"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 47
    const/16 v6, 0x3a

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 48
    const/16 v7, 0x2c

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 46
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 53
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 54
    move-object v3, p1

    .line 57
    :cond_4
    const/4 v4, 0x0

    .line 58
    .local v4, subLabel:Ljava/lang/String;
    if-ne v8, v2, :cond_5

    .line 59
    move-object v4, v3

    .line 64
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/sprint/dsa/DsaJavaScriptInterface;->setViewText(Landroid/widget/Button;Ljava/lang/String;)V

    .line 65
    return-void

    .line 50
    .end local v4           #subLabel:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DSS"

    const-string v6, "DsaJavascript.setSoftKey(): Error in Option Format"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #subLabel:Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setSysProp(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v2, v2, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "DSS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DsaJavascript.setSysPros(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    if-nez p1, :cond_2

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-boolean v2, v2, Lcom/sprint/dsa/DsaClient;->DEVICE:Z

    if-eqz v2, :cond_1

    .line 188
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, code:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 191
    sget-object v2, Lcom/sprint/dsa/DsaClient;->dsaSystem:Lcom/sprint/dsa/DsaSystem;

    iget-object v2, v2, Lcom/sprint/dsa/DsaSystem;->mapPayload:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iput-object p1, v0, Lcom/sprint/dsa/DsaClient;->titleText:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/sprint/dsa/DsaClient;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->dsaClient:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->titleText:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/DsaJavaScriptInterface;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected setViewText(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "text"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/DsaJavaScriptInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/DsaJavaScriptInterface$1;-><init>(Lcom/sprint/dsa/DsaJavaScriptInterface;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method protected setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "text"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sprint/dsa/DsaJavaScriptInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sprint/dsa/DsaJavaScriptInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sprint/dsa/DsaJavaScriptInterface$2;-><init>(Lcom/sprint/dsa/DsaJavaScriptInterface;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void
.end method
