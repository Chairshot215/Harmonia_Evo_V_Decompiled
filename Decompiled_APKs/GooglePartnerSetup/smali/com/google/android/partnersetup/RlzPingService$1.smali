.class Lcom/google/android/partnersetup/RlzPingService$1;
.super Ljava/lang/Thread;
.source "RlzPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/partnersetup/RlzPingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/RlzPingService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/partnersetup/RlzPingService;Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    iput-object p2, p0, Lcom/google/android/partnersetup/RlzPingService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/partnersetup/RlzPingService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 327
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "events._id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "ap"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "event_type"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const-string v4, "current_rlz"

    aput-object v4, v3, v1

    .line 333
    .local v3, projection:[Ljava/lang/String;
    const/16 v23, -0x1

    .line 334
    .local v23, numEventsProcessed:I
    sget-object v1, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "/pending"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 336
    .local v2, pending:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 337
    .local v16, cur:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 339
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 340
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v26, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "app_name"

    aput-object v4, v6, v1

    const/4 v1, 0x1

    const-string v4, "current_rlz"

    aput-object v4, v6, v1

    .line 345
    .local v6, rlzProj:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 346
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 350
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mMachineID:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$300(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mBrandCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$400(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mPID:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$500(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzPingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v8, v26

    invoke-static/range {v7 .. v12}, Lcom/google/android/partnersetup/RlzPingService;->buildPing(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 353
    .local v24, ping:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object/from16 v0, v24

    #calls: Lcom/google/android/partnersetup/RlzPingService;->tryPing(Landroid/net/Uri;)I
    invoke-static {v1, v0}, Lcom/google/android/partnersetup/RlzPingService;->access$600(Lcom/google/android/partnersetup/RlzPingService;Landroid/net/Uri;)I

    move-result v23

    .line 417
    .end local v6           #rlzProj:[Ljava/lang/String;
    .end local v24           #ping:Landroid/net/Uri;
    .end local v26           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    :goto_1
    if-ltz v23, :cond_1

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$800(Lcom/google/android/partnersetup/RlzPingService;)Lcom/google/android/partnersetup/RlzPreferencesInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->resetBackoffTime()V

    .line 421
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->val$intent:Landroid/content/Intent;

    const-string v4, "com.google.android.partnersetup.intents.EXTRA_TESTING"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.partnersetup.intents.ACTION_SERVICE_FINISHED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/android/partnersetup/RlzPingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/partnersetup/RlzPingService$1;->val$startId:I

    invoke-virtual {v1, v4}, Lcom/google/android/partnersetup/RlzPingService;->stopSelf(I)V

    .line 425
    return-void

    .line 412
    .local v7, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .local v8, rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .local v18, eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v19, eventsToClear:Ljava/lang/StringBuilder;
    .local v22, isFirst:Z
    .restart local v24       #ping:Landroid/net/Uri;
    .local v27, values:Landroid/content/ContentValues;
    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 355
    .end local v7           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .end local v8           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .end local v18           #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #eventsToClear:Ljava/lang/StringBuilder;
    .end local v22           #isFirst:Z
    .end local v24           #ping:Landroid/net/Uri;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 357
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .restart local v7       #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .restart local v8       #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .restart local v19       #eventsToClear:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v18       #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x1

    .line 364
    .restart local v22       #isFirst:Z
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 365
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 366
    .local v20, id:J
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 367
    .local v15, ap:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 368
    .local v17, et:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 369
    .local v25, rlz:Ljava/lang/String;
    if-nez v25, :cond_5

    .line 370
    const-string v25, ""

    .line 372
    :cond_5
    new-instance v1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;

    move-object/from16 v0, v17

    invoke-direct {v1, v15, v0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v1, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;

    move-object/from16 v0, v25

    invoke-direct {v1, v15, v0}, Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    if-nez v22, :cond_6

    .line 375
    const-string v1, " OR "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_6
    const-string v1, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "=?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const/16 v22, 0x0

    .line 381
    goto :goto_2

    .line 382
    .end local v15           #ap:Ljava/lang/String;
    .end local v17           #et:Ljava/lang/String;
    .end local v20           #id:J
    .end local v25           #rlz:Ljava/lang/String;
    :cond_7
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->deactivate()V

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mMachineID:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$300(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mBrandCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$400(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mPID:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$500(Lcom/google/android/partnersetup/RlzPingService;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    invoke-virtual {v1}, Lcom/google/android/partnersetup/RlzPingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/partnersetup/RlzAcap;->generateAcap(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/google/android/partnersetup/RlzPingService;->buildPing(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 386
    .restart local v24       #ping:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    move-object/from16 v0, v24

    #calls: Lcom/google/android/partnersetup/RlzPingService;->tryPing(Landroid/net/Uri;)I
    invoke-static {v1, v0}, Lcom/google/android/partnersetup/RlzPingService;->access$600(Lcom/google/android/partnersetup/RlzPingService;Landroid/net/Uri;)I

    move-result v23

    .line 393
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .restart local v27       #values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/google/android/partnersetup/RlzProtocol$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v4, v5, v0, v9, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    if-gez v23, :cond_9

    .line 415
    .end local v7           #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .end local v8           #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .end local v18           #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #eventsToClear:Ljava/lang/StringBuilder;
    .end local v22           #isFirst:Z
    .end local v24           #ping:Landroid/net/Uri;
    .end local v27           #values:Landroid/content/ContentValues;
    :cond_8
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 408
    .restart local v7       #events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$Event;>;"
    .restart local v8       #rlzs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/partnersetup/RlzProtocol$PingInfo$RLZ;>;"
    .restart local v18       #eventIDsToClear:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19       #eventsToClear:Ljava/lang/StringBuilder;
    .restart local v22       #isFirst:Z
    .restart local v24       #ping:Landroid/net/Uri;
    .restart local v27       #values:Landroid/content/ContentValues;
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v23

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/partnersetup/RlzPingService$1;->this$0:Lcom/google/android/partnersetup/RlzPingService;

    #getter for: Lcom/google/android/partnersetup/RlzPingService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/google/android/partnersetup/RlzPingService;->access$200(Lcom/google/android/partnersetup/RlzPingService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    #calls: Lcom/google/android/partnersetup/RlzPingService;->eventsWereAdded(Landroid/content/ContentResolver;II)Z
    invoke-static {v1, v0, v4}, Lcom/google/android/partnersetup/RlzPingService;->access$700(Landroid/content/ContentResolver;II)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3
.end method
