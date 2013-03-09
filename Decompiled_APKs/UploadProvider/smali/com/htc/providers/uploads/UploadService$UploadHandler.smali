.class Lcom/htc/providers/uploads/UploadService$UploadHandler;
.super Landroid/os/Handler;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadHandler"
.end annotation


# static fields
.field public static final MESSAGE_ADD_NEW_TASK:I = 0x0

.field public static final MESSAGE_SERVICE_BINDER_DIED:I = 0x5

.field public static final MESSAGE_SERVICE_CANCEL:I = 0x4

.field public static final MESSAGE_SERVICE_CONNECTED:I = 0x1

.field public static final MESSAGE_SERVICE_DISCONNECTED:I = 0x2

.field public static final MESSAGE_SERVICE_PAUSE:I = 0x3

.field private static final WATING_FOR_UPLOAD:I = 0x1d4c0


# instance fields
.field currentBatchId:I

.field currentServiceName:Landroid/content/ComponentName;

.field private isBinding:Z

.field mConnection:Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

.field mContext:Landroid/content/Context;

.field runningItemId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/providers/uploads/UploadService;

.field uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadService;Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "looper"
    .parameter "context"

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->this$0:Lcom/htc/providers/uploads/UploadService;

    .line 1119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1112
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentBatchId:I

    .line 1115
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    .line 1116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isBinding:Z

    .line 1120
    iput-object p3, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mContext:Landroid/content/Context;

    .line 1121
    new-instance v0, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

    invoke-direct {v0, p0}, Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;-><init>(Lcom/htc/providers/uploads/UploadService$UploadHandler;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mConnection:Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

    .line 1122
    return-void
.end method

.method private addUploadTask(ILjava/lang/Integer;)V
    .locals 4
    .parameter "batchId"
    .parameter "uploadId"

    .prologue
    .line 1248
    const-string v1, "UploadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUploadTask, batchId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uploadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isConnectionAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    :try_start_0
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/htc/opensense/upload/IUploadInterface;->addUploadTask(II)V

    .line 1252
    iget-object v2, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1253
    :try_start_1
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1254
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1256
    :cond_0
    monitor-exit v2

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1256
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1257
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1260
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1261
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "UploadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addUploadTask,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkRebind(I)Z
    .locals 12
    .parameter "batchId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1202
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "service_pkg"

    aput-object v3, v2, v10

    const-string v3, "service_class"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1207
    .local v6, bCursor:Landroid/database/Cursor;
    const/4 v7, 0x1

    .line 1208
    .local v7, batchNotExist:Z
    if-eqz v6, :cond_3

    .line 1210
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    const/4 v7, 0x0

    .line 1212
    new-instance v8, Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    .local v8, comName:Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-boolean v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isBinding:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isConnectionAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1231
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 1238
    .end local v8           #comName:Landroid/content/ComponentName;
    :goto_0
    return v0

    .line 1218
    .restart local v8       #comName:Landroid/content/ComponentName;
    :cond_1
    :try_start_1
    iput-object v8, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentServiceName:Landroid/content/ComponentName;

    .line 1219
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->unBindCurrent()V

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isBinding:Z

    .line 1221
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1222
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1223
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mConnection:Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    .end local v8           #comName:Landroid/content/ComponentName;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1234
    :cond_3
    if-eqz v7, :cond_4

    .line 1235
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_4
    move v0, v10

    .line 1238
    goto :goto_0

    .line 1231
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isConnectionAlive()Z
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    if-nez v0, :cond_0

    .line 1243
    const/4 v0, 0x0

    .line 1244
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    invoke-interface {v0}, Lcom/htc/opensense/upload/IUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    .line 1125
    if-eqz p1, :cond_0

    .line 1126
    const-string v6, "UploadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1194
    :cond_1
    :goto_0
    return-void

    .line 1130
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1131
    .local v0, batchId:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1132
    .local v4, uploadId:I
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    monitor-enter v7

    .line 1133
    :try_start_0
    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    iget v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentBatchId:I

    if-eq v0, v6, :cond_2

    invoke-direct {p0, v0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->checkRebind(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1137
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->addUploadTask(ILjava/lang/Integer;)V

    .line 1139
    :cond_3
    iput v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentBatchId:I

    goto :goto_0

    .line 1134
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1143
    .end local v0           #batchId:I
    .end local v4           #uploadId:I
    :pswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/htc/opensense/upload/IUploadInterface;

    iput-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    .line 1144
    iput-boolean v9, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isBinding:Z

    .line 1146
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    monitor-enter v7

    .line 1147
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->runningItemId:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1148
    .local v1, copy:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1150
    .restart local v4       #uploadId:I
    iget v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentBatchId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->addUploadTask(ILjava/lang/Integer;)V

    goto :goto_1

    .line 1148
    .end local v1           #copy:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #uploadId:I
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 1155
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isConnectionAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1157
    :try_start_4
    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    invoke-interface {v6}, Lcom/htc/opensense/upload/IUploadInterface;->pauseUpload()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v2

    .line 1160
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1166
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isConnectionAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1168
    :try_start_5
    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v7}, Lcom/htc/opensense/upload/IUploadInterface;->cancelUploadTask(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1169
    :catch_1
    move-exception v2

    .line 1171
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1177
    .end local v2           #e:Landroid/os/RemoteException;
    :pswitch_4
    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->uploadInterface:Lcom/htc/opensense/upload/IUploadInterface;

    invoke-interface {v6}, Lcom/htc/opensense/upload/IUploadInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mConnection:Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

    invoke-interface {v6, v7, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1181
    :pswitch_5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "status"

    const/16 v7, 0xc1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1183
    iget-object v6, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-virtual {v6}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status=192 AND batch_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->currentBatchId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method unBindCurrent()V
    .locals 2

    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->isConnectionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService$UploadHandler;->mConnection:Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1199
    :cond_0
    return-void
.end method
