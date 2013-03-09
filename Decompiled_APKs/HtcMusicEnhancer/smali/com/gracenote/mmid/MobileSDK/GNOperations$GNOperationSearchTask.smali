.class abstract Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;
.super Landroid/os/AsyncTask;
.source "GNOperations.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/FPXCallback;
.implements Lcom/gracenote/mmid/MobileSDK/GNOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gracenote/mmid/MobileSDK/GNOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GNOperationSearchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/gracenote/mmid/MobileSDK/FPXCallback;",
        "Lcom/gracenote/mmid/MobileSDK/GNOperation;"
    }
.end annotation


# instance fields
.field protected config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field protected fingerprinter:Lcom/gracenote/mmid/MobileSDK/FPXJNI;

.field protected result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

.field protected resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;


# direct methods
.method protected constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V
    .locals 0
    .parameter "inConfig"
    .parameter "inResultReady"
    .parameter "inResult"

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 170
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    .line 171
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 172
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "unused"

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->doInBackground()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 181
    :catch_0
    move-exception v1

    .line 186
    .local v1, ex:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GNResult.UnhandledError stack trace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->fpxDebugMsg(Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-direct {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    iput-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    .line 189
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrCode(I)V

    .line 190
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, errString:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-virtual {v2, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .end local v0           #errString:Ljava/lang/String;
    :cond_0
    const-string v0, "unhandled error in operation thread"

    goto :goto_1
.end method

.method protected abstract doInBackground()V
.end method

.method public executeOperation()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    return-void
.end method

.method public fpxDebugMsg(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "fpxDebugMsg msg is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 212
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "DEBUG"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 213
    return-void

    :cond_0
    move v0, v2

    .line 211
    goto :goto_0
.end method

.method public fpxStatusUpdate(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V
    .locals 4
    .parameter "statusEnum"
    .parameter "status"
    .parameter "percentDone"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "status msg is null"

    invoke-static {v0, v3}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "STATUS"

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->publishProgress([Ljava/lang/Object;)V

    .line 208
    return-void

    :cond_0
    move v0, v2

    .line 206
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 239
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getOpQueue()Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;

    move-result-object v0

    .line 240
    .local v0, opQueue:Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;
    invoke-virtual {v0, p0}, Lcom/gracenote/mmid/MobileSDK/GNOperationQueue;->removeFromQueue(Lcom/gracenote/mmid/MobileSDK/GNOperation;)V

    .line 242
    invoke-static {}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->access$0()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-static {}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->access$0()Ljava/util/Hashtable;

    move-result-object v1

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    iget-object v2, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->result:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-interface {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "objects"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 218
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    const-string v8, "resultReady is null"

    invoke-static {v5, v8}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 219
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, type:Ljava/lang/String;
    const-string v5, "STATUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    aget-object v3, p1, v6

    check-cast v3, Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;

    .line 222
    .local v3, statusEnum:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
    const/4 v5, 0x2

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    .line 223
    .local v0, msg:Ljava/lang/String;
    const/4 v5, 0x3

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/Integer;

    .line 225
    .local v1, percentDoneObj:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    instance-of v5, v5, Lcom/gracenote/mmid/MobileSDK/GNOperationStatusChanged;

    if-eqz v5, :cond_0

    .line 226
    new-instance v2, Lcom/gracenote/mmid/MobileSDK/GNStatus;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v3, v0, v5}, Lcom/gracenote/mmid/MobileSDK/GNStatus;-><init>(Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;Ljava/lang/String;I)V

    .line 227
    .local v2, status:Lcom/gracenote/mmid/MobileSDK/GNStatus;
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    check-cast v5, Lcom/gracenote/mmid/MobileSDK/GNOperationStatusChanged;

    invoke-interface {v5, v2}, Lcom/gracenote/mmid/MobileSDK/GNOperationStatusChanged;->GNStatusChanged(Lcom/gracenote/mmid/MobileSDK/GNStatus;)V

    .line 233
    .end local v1           #percentDoneObj:Ljava/lang/Integer;
    .end local v2           #status:Lcom/gracenote/mmid/MobileSDK/GNStatus;
    .end local v3           #statusEnum:Lcom/gracenote/mmid/MobileSDK/GNStatusEnum;
    :cond_0
    :goto_1
    return-void

    .end local v0           #msg:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 218
    goto :goto_0

    .line 230
    .restart local v4       #type:Ljava/lang/String;
    :cond_2
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 231
    .restart local v0       #msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    invoke-virtual {v5, v0}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->appendToDebugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public reportLoginError(Lcom/gracenote/mmid/MobileSDK/GNResult;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 257
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;

    invoke-direct {v0, p1}, Lcom/gracenote/mmid/MobileSDK/GNSearchResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNResult;)V

    .line 258
    .local v0, sr:Lcom/gracenote/mmid/MobileSDK/GNSearchResult;
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNOperations$GNOperationSearchTask;->resultReady:Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;

    invoke-interface {v1, v0}, Lcom/gracenote/mmid/MobileSDK/GNSearchResultReady;->GNResultReady(Lcom/gracenote/mmid/MobileSDK/GNSearchResult;)V

    .line 259
    return-void
.end method
