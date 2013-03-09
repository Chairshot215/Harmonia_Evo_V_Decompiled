.class Lcom/htc/providers/uploads/UploadService$UpdateThread;
.super Ljava/lang/Thread;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/UploadService;


# direct methods
.method public constructor <init>(Lcom/htc/providers/uploads/UploadService;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    .line 273
    const-string v0, "Upload Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 35

    .prologue
    .line 277
    const/16 v2, 0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 278
    const/16 v24, 0x0

    .line 281
    .local v24, keepService:Z
    const-wide v33, 0x7fffffffffffffffL

    .line 283
    .local v33, wakeUp:J
    :goto_0
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateThread is looping keepService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    monitor-enter v5

    .line 286
    :try_start_0
    const-string v2, "UploadService"

    const-string v6, "UpdateThread synchronized"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$200(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadService$UpdateThread;

    move-result-object v2

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_0

    .line 288
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "multiple UpdateThreads in UploadService"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 291
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->pendingUpdate:Z
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$300(Lcom/htc/providers/uploads/UploadService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const/4 v6, 0x0

    #setter for: Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;
    invoke-static {v2, v6}, Lcom/htc/providers/uploads/UploadService;->access$202(Lcom/htc/providers/uploads/UploadService;Lcom/htc/providers/uploads/UploadService$UpdateThread;)Lcom/htc/providers/uploads/UploadService$UpdateThread;

    .line 293
    if-nez v24, :cond_1

    .line 294
    const-string v2, "UploadService"

    const-string v6, "stop self"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-virtual {v2}, Lcom/htc/providers/uploads/UploadService;->stopSelf()V

    .line 297
    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v33, v6

    if-eqz v2, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const-string v6, "alarm"

    invoke-virtual {v2, v6}, Lcom/htc/providers/uploads/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 299
    .local v11, alarms:Landroid/app/AlarmManager;
    if-nez v11, :cond_3

    .line 300
    const-string v2, "UploadService"

    const-string v6, "couldn\'t get alarm manager"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v11           #alarms:Landroid/app/AlarmManager;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const/4 v6, 0x0

    #setter for: Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;
    invoke-static {v2, v6}, Lcom/htc/providers/uploads/UploadService;->access$402(Lcom/htc/providers/uploads/UploadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const/4 v6, 0x0

    #setter for: Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;
    invoke-static {v2, v6}, Lcom/htc/providers/uploads/UploadService;->access$502(Lcom/htc/providers/uploads/UploadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 321
    monitor-exit v5

    .line 337
    :goto_2
    return-void

    .line 303
    .restart local v11       #alarms:Landroid/app/AlarmManager;
    :cond_3
    sget-boolean v2, Lcom/htc/providers/uploads/Constants;->LOGV:Z

    if-eqz v2, :cond_4

    .line 304
    const-string v2, "UploadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_4
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPLOAD_WAKEUP"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v20, intent:Landroid/content/Intent;
    const-string v2, "com.htc.providers.uploads"

    const-class v6, Lcom/htc/providers/uploads/UploadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v6, v6, v33

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const/4 v9, 0x0

    const/high16 v10, 0x4000

    move-object/from16 v0, v20

    invoke-static {v8, v9, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v11, v2, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 323
    .end local v11           #alarms:Landroid/app/AlarmManager;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    const/4 v6, 0x0

    #setter for: Lcom/htc/providers/uploads/UploadService;->pendingUpdate:Z
    invoke-static {v2, v6}, Lcom/htc/providers/uploads/UploadService;->access$302(Lcom/htc/providers/uploads/UploadService;Z)Z

    .line 324
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-static {v2}, Lcom/htc/providers/uploads/UploadHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v27

    .line 327
    .local v27, networkAvailable:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 328
    .local v30, now:J
    if-eqz v27, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move-wide/from16 v0, v30

    iput-wide v0, v2, Lcom/htc/providers/uploads/UploadService;->latestNetworkAvailableTime:J

    .line 331
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-virtual {v2}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/opensense/upload/Uploads$UploadColumns;->UPLOAD_PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 335
    .local v3, cursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 336
    const-string v2, "UploadService"

    const-string v5, "cursor = 0"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 339
    :cond_7
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUpload.size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/providers/uploads/UploadService;->access$600(Lcom/htc/providers/uploads/UploadService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    const/4 v4, 0x0

    .line 343
    .local v4, arrayPos:I
    const/16 v26, 0x0

    .line 344
    .local v26, mustScan:Z
    const/16 v22, 0x0

    .line 345
    .local v22, isNewInsert:Z
    const/16 v24, 0x0

    .line 346
    const-wide v33, 0x7fffffffffffffffL

    .line 348
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v21

    .line 350
    .local v21, isAfterLast:Z
    const-string v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 367
    .local v19, idColumn:I
    :goto_3
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$600(Lcom/htc/providers/uploads/UploadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_16

    .line 368
    :cond_8
    if-eqz v21, :cond_9

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->deleteUpload(I)V
    invoke-static {v2, v4}, Lcom/htc/providers/uploads/UploadService;->access$700(Lcom/htc/providers/uploads/UploadService;I)V

    goto :goto_3

    .line 375
    :cond_9
    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 377
    .local v18, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$600(Lcom/htc/providers/uploads/UploadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v4, v2, :cond_d

    .line 378
    const/16 v22, 0x1

    .line 384
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserting id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ array position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move/from16 v5, v27

    move-wide/from16 v6, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->insertUpload(Landroid/database/Cursor;IZJ)V
    invoke-static/range {v2 .. v7}, Lcom/htc/providers/uploads/UploadService;->access$800(Lcom/htc/providers/uploads/UploadService;Landroid/database/Cursor;IZJ)V

    .line 387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->visibleNotification(I)Z
    invoke-static {v2, v4}, Lcom/htc/providers/uploads/UploadService;->access$900(Lcom/htc/providers/uploads/UploadService;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 388
    const/16 v24, 0x1

    .line 390
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move-wide/from16 v0, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->nextAction(IJ)J
    invoke-static {v2, v4, v0, v1}, Lcom/htc/providers/uploads/UploadService;->access$1000(Lcom/htc/providers/uploads/UploadService;IJ)J

    move-result-wide v28

    .line 391
    .local v28, next:J
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-nez v2, :cond_c

    .line 394
    const/16 v24, 0x1

    .line 398
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 399
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 400
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v21

    .line 401
    goto/16 :goto_3

    .line 395
    :cond_c
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-lez v2, :cond_b

    cmp-long v2, v28, v33

    if-gez v2, :cond_b

    .line 396
    move-wide/from16 v33, v28

    goto :goto_4

    .line 402
    .end local v28           #next:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$600(Lcom/htc/providers/uploads/UploadService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/providers/uploads/UploadInfo;

    iget v12, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    .line 404
    .local v12, arrayId:I
    move/from16 v0, v18

    if-ge v12, v0, :cond_e

    .line 406
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing arrayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ array position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->deleteUpload(I)V
    invoke-static {v2, v4}, Lcom/htc/providers/uploads/UploadService;->access$700(Lcom/htc/providers/uploads/UploadService;I)V

    goto/16 :goto_3

    .line 410
    :cond_e
    move/from16 v0, v18

    if-ne v12, v0, :cond_12

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move/from16 v5, v27

    move-wide/from16 v6, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->updateUpload(Landroid/database/Cursor;IZJ)V
    invoke-static/range {v2 .. v7}, Lcom/htc/providers/uploads/UploadService;->access$1100(Lcom/htc/providers/uploads/UploadService;Landroid/database/Cursor;IZJ)V

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->visibleNotification(I)Z
    invoke-static {v2, v4}, Lcom/htc/providers/uploads/UploadService;->access$900(Lcom/htc/providers/uploads/UploadService;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 419
    const/16 v24, 0x1

    .line 421
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move-wide/from16 v0, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->nextAction(IJ)J
    invoke-static {v2, v4, v0, v1}, Lcom/htc/providers/uploads/UploadService;->access$1000(Lcom/htc/providers/uploads/UploadService;IJ)J

    move-result-wide v28

    .line 422
    .restart local v28       #next:J
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-nez v2, :cond_11

    .line 423
    const/16 v24, 0x1

    .line 427
    :cond_10
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 428
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 429
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v21

    .line 430
    goto/16 :goto_3

    .line 424
    :cond_11
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-lez v2, :cond_10

    cmp-long v2, v28, v33

    if-gez v2, :cond_10

    .line 425
    move-wide/from16 v33, v28

    goto :goto_5

    .line 433
    .end local v28           #next:J
    :cond_12
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appending id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ array position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v22, 0x1

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move/from16 v5, v27

    move-wide/from16 v6, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->insertUpload(Landroid/database/Cursor;IZJ)V
    invoke-static/range {v2 .. v7}, Lcom/htc/providers/uploads/UploadService;->access$800(Lcom/htc/providers/uploads/UploadService;Landroid/database/Cursor;IZJ)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #calls: Lcom/htc/providers/uploads/UploadService;->visibleNotification(I)Z
    invoke-static {v2, v4}, Lcom/htc/providers/uploads/UploadService;->access$900(Lcom/htc/providers/uploads/UploadService;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 440
    const/16 v24, 0x1

    .line 442
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    move-wide/from16 v0, v30

    #calls: Lcom/htc/providers/uploads/UploadService;->nextAction(IJ)J
    invoke-static {v2, v4, v0, v1}, Lcom/htc/providers/uploads/UploadService;->access$1000(Lcom/htc/providers/uploads/UploadService;IJ)J

    move-result-wide v28

    .line 443
    .restart local v28       #next:J
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-nez v2, :cond_15

    .line 444
    const/16 v24, 0x1

    .line 448
    :cond_14
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 449
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 450
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v21

    goto/16 :goto_3

    .line 445
    :cond_15
    const-wide/16 v5, 0x0

    cmp-long v2, v28, v5

    if-lez v2, :cond_14

    cmp-long v2, v28, v33

    if-gez v2, :cond_14

    .line 446
    move-wide/from16 v33, v28

    goto :goto_6

    .line 455
    .end local v12           #arrayId:I
    .end local v18           #id:I
    .end local v28           #next:J
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1200(Lcom/htc/providers/uploads/UploadService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 456
    .local v13, batchId:I
    sget-object v2, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    invoke-virtual {v2, v13}, Lcom/htc/providers/uploads/UploadNotification;->checkRemoveNotification(I)V

    goto :goto_7

    .line 458
    .end local v13           #batchId:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1200(Lcom/htc/providers/uploads/UploadService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 460
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set notification curActiveUpload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I
    invoke-static {v6}, Lcom/htc/providers/uploads/UploadService;->access$1300(Lcom/htc/providers/uploads/UploadService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1400(Lcom/htc/providers/uploads/UploadService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    .line 462
    .local v25, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 463
    .local v23, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, -0x1

    .line 464
    .local v14, completeBatch:I
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 465
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 467
    .local v15, curId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1400(Lcom/htc/providers/uploads/UploadService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/providers/uploads/UploadInfo;

    .line 468
    .local v16, curUploadInfo:Lcom/htc/providers/uploads/UploadInfo;
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotification with batch id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v2, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v5, v0, v6}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    .line 470
    const/16 v24, 0x1

    .line 471
    if-nez v27, :cond_18

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->lastNetworkOnTime:J
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1500(Lcom/htc/providers/uploads/UploadService;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long v2, v5, v7

    if-lez v2, :cond_19

    .line 473
    const/16 v24, 0x0

    .line 506
    .end local v15           #curId:I
    .end local v16           #curUploadInfo:Lcom/htc/providers/uploads/UploadInfo;
    :cond_18
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 507
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keepService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    .restart local v15       #curId:I
    .restart local v16       #curUploadInfo:Lcom/htc/providers/uploads/UploadInfo;
    :cond_19
    const-wide/32 v33, 0xea60

    goto :goto_8

    .line 479
    .end local v15           #curId:I
    .end local v16           #curUploadInfo:Lcom/htc/providers/uploads/UploadInfo;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1300(Lcom/htc/providers/uploads/UploadService;)I

    move-result v2

    if-nez v2, :cond_18

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;
    invoke-static {v2}, Lcom/htc/providers/uploads/UploadService;->access$1600(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    invoke-virtual {v2}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "batch_id == "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;
    invoke-static {v8}, Lcom/htc/providers/uploads/UploadService;->access$1600(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadInfo;

    move-result-object v8

    iget v8, v8, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " AND "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "status"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " < "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v8, 0xc8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 490
    .local v32, queryBatchCursor:Landroid/database/Cursor;
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 491
    const-string v2, "UploadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Has item(s) in previous batch id, id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;
    invoke-static {v6}, Lcom/htc/providers/uploads/UploadService;->access$1600(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadInfo;

    move-result-object v6

    iget v6, v6, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    sget-object v2, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;->this$0:Lcom/htc/providers/uploads/UploadService;

    #getter for: Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;
    invoke-static {v5}, Lcom/htc/providers/uploads/UploadService;->access$1600(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadInfo;

    move-result-object v5

    iget v5, v5, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v5, v0, v6}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    .line 493
    const/16 v24, 0x1

    .line 498
    :goto_9
    if-eqz v32, :cond_18

    .line 499
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 495
    :cond_1b
    const-string v2, "UploadService"

    const-string v5, "No item in previous batch id"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v2, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v5, v0, v6}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    goto :goto_9

    .line 501
    .end local v32           #queryBatchCursor:Landroid/database/Cursor;
    :cond_1c
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_18

    .line 502
    sget-object v2, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v5, v0, v6}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    goto/16 :goto_8
.end method
