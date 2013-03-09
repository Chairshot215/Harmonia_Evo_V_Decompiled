.class Lcom/htc/htccompressviewer/ReloadViewThread;
.super Ljava/lang/Thread;
.source "CompressViewer.java"


# static fields
.field private static mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;


# instance fields
.field private final STATE_DONE:I

.field private final STATE_RUNNING:I

.field private State:I

.field private handlerQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private htcZipQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccompressviewer/zip/HtcZip;",
            ">;"
        }
    .end annotation
.end field

.field private pathQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1282
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->handlerQueue:Ljava/util/ArrayList;

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->htcZipQueue:Ljava/util/ArrayList;

    .line 1278
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->STATE_RUNNING:I

    .line 1279
    iput v1, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->STATE_DONE:I

    .line 1280
    iput v1, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->State:I

    .line 1284
    return-void
.end method

.method public static createSingleten()Lcom/htc/htccompressviewer/ReloadViewThread;
    .locals 1

    .prologue
    .line 1330
    sget-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Lcom/htc/htccompressviewer/ReloadViewThread;

    invoke-direct {v0}, Lcom/htc/htccompressviewer/ReloadViewThread;-><init>()V

    sput-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    .line 1334
    :cond_0
    sget-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    return-object v0
.end method

.method public static getSingleten()Lcom/htc/htccompressviewer/ReloadViewThread;
    .locals 1

    .prologue
    .line 1325
    sget-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    return-object v0
.end method


# virtual methods
.method public addRequest(Ljava/lang/String;Landroid/os/Handler;Lcom/htc/htccompressviewer/zip/HtcZip;)V
    .locals 1
    .parameter "zipPath"
    .parameter "h"
    .parameter "htcZip"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    iget-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->handlerQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    iget-object v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->htcZipQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    return-void
.end method

.method public destroyThread()V
    .locals 1

    .prologue
    .line 1353
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    .line 1354
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->State:I

    .line 1355
    return-void
.end method

.method public interruptThread()V
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->State:I

    .line 1360
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1288
    const/16 v6, 0xa

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1290
    :cond_0
    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->handlerQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->htcZipQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 1292
    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1293
    .local v5, zipPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->handlerQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 1294
    .local v1, handler:Landroid/os/Handler;
    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->htcZipQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/HtcZip;

    .line 1295
    .local v2, htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-virtual {v2, v8}, Lcom/htc/htccompressviewer/zip/HtcZip;->setInterrupt(Z)V

    .line 1296
    const/4 v3, -0x6

    .line 1298
    .local v3, listRet:I
    if-eqz v5, :cond_1

    .line 1299
    invoke-virtual {v2, v5}, Lcom/htc/htccompressviewer/zip/HtcZip;->listUncompressFile(Ljava/lang/String;)I

    move-result v3

    .line 1301
    :cond_1
    iget-object v7, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1302
    :try_start_0
    iget-object v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->pathQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1304
    .local v0, b:Landroid/os/Bundle;
    const-string v6, "listRet"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1305
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1306
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1307
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1309
    .end local v0           #b:Landroid/os/Bundle;
    .end local v4           #msg:Landroid/os/Message;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    .end local v3           #listRet:I
    .end local v5           #zipPath:Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->State:I

    if-nez v6, :cond_0

    .line 1317
    return-void

    .line 1309
    .restart local v1       #handler:Landroid/os/Handler;
    .restart local v2       #htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    .restart local v3       #listRet:I
    .restart local v5       #zipPath:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public declared-synchronized startThread()V
    .locals 2

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/htccompressviewer/ReloadViewThread;->mReloadViewThread:Lcom/htc/htccompressviewer/ReloadViewThread;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ReloadViewThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 1339
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 1340
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/htccompressviewer/ReloadViewThread;->State:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    :cond_0
    monitor-exit p0

    return-void

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
