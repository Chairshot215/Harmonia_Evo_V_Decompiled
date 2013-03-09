.class public Lcom/htc/providers/uploads/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/uploads/UploadService$UploadHandler;,
        Lcom/htc/providers/uploads/UploadService$UploadServiceConnection;,
        Lcom/htc/providers/uploads/UploadService$UpdateThread;,
        Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;,
        Lcom/htc/providers/uploads/UploadService$StateChange;
    }
.end annotation


# static fields
.field private static final BUFFER_TIME:I = 0x1388

.field private static final DBG:Z = false

.field static final MAX_KEEP_SERVICE_TIME_NONETWORK:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "UploadService"

.field public static mNotifier:Lcom/htc/providers/uploads/UploadNotification;


# instance fields
.field private curActiveFileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private curActiveUpload:I

.field private deletedBatchIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastNetworkOnTime:J

.field latestNetworkAvailableTime:J

.field private mObserver:Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;

.field private mUploads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private newChars:Landroid/database/CharArrayBuffer;

.field private oldChars:Landroid/database/CharArrayBuffer;

.field private pendingUpdate:Z

.field private prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

.field serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

.field serviceThread:Landroid/os/HandlerThread;

.field private updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadService;->latestNetworkAvailableTime:J

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadService;->lastNetworkOnTime:J

    .line 1100
    return-void
.end method

.method static synthetic access$000(Lcom/htc/providers/uploads/UploadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/providers/uploads/UploadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService;->trimDatabase()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/providers/uploads/UploadService;IJ)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/providers/uploads/UploadService;->nextAction(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/htc/providers/uploads/UploadService;Landroid/database/Cursor;IZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/htc/providers/uploads/UploadService;->updateUpload(Landroid/database/Cursor;IZJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/providers/uploads/UploadService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/providers/uploads/UploadService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/providers/uploads/UploadService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/providers/uploads/UploadService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/htc/providers/uploads/UploadService;->lastNetworkOnTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/providers/uploads/UploadService;)Lcom/htc/providers/uploads/UploadService$UpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/providers/uploads/UploadService;Lcom/htc/providers/uploads/UploadService$UpdateThread;)Lcom/htc/providers/uploads/UploadService$UpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/providers/uploads/UploadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/htc/providers/uploads/UploadService;->pendingUpdate:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/providers/uploads/UploadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/providers/uploads/UploadService;->pendingUpdate:Z

    return p1
.end method

.method static synthetic access$402(Lcom/htc/providers/uploads/UploadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/providers/uploads/UploadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/providers/uploads/UploadService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/providers/uploads/UploadService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadService;->deleteUpload(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/providers/uploads/UploadService;Landroid/database/Cursor;IZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/htc/providers/uploads/UploadService;->insertUpload(Landroid/database/Cursor;IZJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/providers/uploads/UploadService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadService;->visibleNotification(I)Z

    move-result v0

    return v0
.end method

.method private deleteUpload(I)V
    .locals 7
    .parameter "arrayPos"

    .prologue
    const/4 v3, -0x1

    .line 963
    const-string v0, "UploadService"

    const-string v1, "Delete upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/providers/uploads/UploadInfo;

    .line 966
    .local v6, info:Lcom/htc/providers/uploads/UploadInfo;
    monitor-enter p0

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, v6, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove activeFileInfo id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iput-object v6, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    .line 970
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, v6, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    .line 972
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v1, 0x4

    iget v2, v6, Lcom/htc/providers/uploads/UploadInfo;->id:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 976
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    iget v0, v6, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 979
    const/16 v0, 0x1ea

    iput v0, v6, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;

    iget v1, v6, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->deletedBatchIds:Ljava/util/List;

    iget v1, v6, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 990
    iget v1, v6, Lcom/htc/providers/uploads/UploadInfo;->id:I

    iget v2, v6, Lcom/htc/providers/uploads/UploadInfo;->status:I

    iget-wide v4, v6, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    .line 991
    return-void

    .line 976
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertUpload(Landroid/database/Cursor;IZJ)V
    .locals 18
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "now"

    .prologue
    .line 728
    const-string v3, "UploadService"

    const-string v4, "Insert upload"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v3, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 730
    .local v16, statusColumn:I
    const-string v3, "fail_connections"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 731
    .local v15, failedColumn:I
    new-instance v2, Lcom/htc/providers/uploads/UploadInfo;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "batch_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v9, "status_change_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "lastmod"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "current_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "resp_status"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-direct/range {v2 .. v14}, Lcom/htc/providers/uploads/UploadInfo;-><init>(IIIIJJIILjava/lang/String;I)V

    .line 758
    .local v2, info:Lcom/htc/providers/uploads/UploadInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 759
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/providers/uploads/UploadService;->readInUICommand(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 760
    iget v4, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    const/4 v5, -0x1

    iget v6, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    iget-wide v7, v2, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    .line 762
    if-eqz p3, :cond_3

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/providers/uploads/UploadService;->trackingActiveUpload(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 766
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/htc/providers/uploads/UploadInfo;->isReadyToStart(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    iget v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v3}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 772
    .local v7, currentTime:J
    iget v5, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 773
    .local v5, oldStatus:I
    const/16 v6, 0xc0

    .line 775
    .local v6, newStatus:I
    const/16 v3, 0xc0

    iput v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 777
    iput-wide v7, v2, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 778
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 779
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "status"

    iget v4, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string v3, "resp_status"

    iget-object v4, v2, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v3, "status_change_time"

    iget-wide v9, v2, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget v9, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    int-to-long v9, v9

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    iget v4, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    .line 792
    .end local v5           #oldStatus:I
    .end local v6           #newStatus:I
    .end local v7           #currentTime:J
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v4, 0x0

    iget v9, v2, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    iget v10, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v3, v4, v9, v10}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 798
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/providers/uploads/UploadService;->lastNetworkOnTime:J

    .line 815
    :cond_2
    :goto_0
    return-void

    .line 800
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 802
    iget v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v4, 0xbe

    if-eq v3, v4, :cond_4

    iget v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_4

    iget v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_2

    .line 805
    :cond_4
    const/16 v3, 0xc1

    iput v3, v2, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 806
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 807
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 808
    const-string v3, "resp_status"

    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x7f04001c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v3, "status_change_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget v9, v2, Lcom/htc/providers/uploads/UploadInfo;->id:I

    int-to-long v9, v9

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isStateChanged(II)Z
    .locals 4
    .parameter "oldStatus"
    .parameter "newStatus"

    .prologue
    const/16 v3, 0x1ea

    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 1008
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p2, v3, :cond_2

    .line 1027
    :cond_1
    :goto_0
    return v0

    .line 1013
    :cond_2
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1019
    :cond_3
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1024
    :cond_5
    if-eq p1, v2, :cond_1

    if-eq p2, v2, :cond_1

    .line 1027
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextAction(IJ)J
    .locals 7
    .parameter "arrayPos"
    .parameter "now"

    .prologue
    const-wide/16 v3, 0x0

    .line 1038
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/UploadInfo;

    .line 1039
    .local v0, info:Lcom/htc/providers/uploads/UploadInfo;
    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v5}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1040
    const-wide/16 v3, -0x1

    .line 1053
    :cond_0
    :goto_0
    return-wide v3

    .line 1042
    :cond_1
    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v6, 0xc1

    if-ne v5, v6, :cond_0

    .line 1045
    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    if-eqz v5, :cond_0

    .line 1048
    invoke-virtual {v0}, Lcom/htc/providers/uploads/UploadInfo;->restartTime()J

    move-result-wide v1

    .line 1050
    .local v1, when:J
    cmp-long v5, v1, p2

    if-lez v5, :cond_0

    .line 1053
    sub-long v3, v1, p2

    goto :goto_0
.end method

.method private notifyThroughMessage(IIIJ)V
    .locals 3
    .parameter "id"
    .parameter "oldStatus"
    .parameter "newStatus"
    .parameter "time"

    .prologue
    .line 995
    invoke-direct {p0, p2, p3}, Lcom/htc/providers/uploads/UploadService;->isStateChanged(II)Z

    move-result v1

    .line 996
    .local v1, isChange:Z
    if-eqz v1, :cond_0

    .line 997
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.providers.uploads.INTENT_STATUS_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 998
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "message_file_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 999
    const-string v2, "message_file_status"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1000
    const-string v2, "message_status_change_time"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p0, v0}, Lcom/htc/providers/uploads/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1004
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private readInUICommand(Lcom/htc/providers/uploads/UploadInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 623
    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusClientError(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusServerError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    :cond_0
    const-string v1, "UploadService"

    const-string v2, "control: RUN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/16 v1, 0xbd

    iput v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 630
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 632
    iput v3, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    .line 633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 634
    iput v4, p1, Lcom/htc/providers/uploads/UploadInfo;->currentBytes:I

    .line 635
    iput v4, p1, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    .line 637
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "control"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    const-string v1, "status"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string v1, "resp_status"

    iget-object v2, p1, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "current_bytes"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->currentBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v1, "fail_connections"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v1, "status_change_time"

    iget-wide v2, p1, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 646
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 654
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_1
    monitor-enter p1

    .line 655
    :try_start_0
    iget-boolean v1, p1, Lcom/htc/providers/uploads/UploadInfo;->canCancel:Z

    if-eqz v1, :cond_3

    .line 656
    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 661
    :cond_2
    const-string v1, "UploadService"

    const-string v2, "control: PAUSE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v1, 0x1ea

    iput v1, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 663
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 665
    const/4 v1, -0x1

    iput v1, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 667
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .restart local v0       #values:Landroid/content/ContentValues;
    const-string v1, "control"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v1, "status"

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string v1, "resp_status"

    iget-object v2, p1, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v1, "status_change_time"

    iget-wide v2, p1, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 677
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 687
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_0
    monitor-exit p1

    .line 689
    return-void

    .line 683
    :cond_4
    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->control:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeUnusedData()V
    .locals 10

    .prologue
    .line 206
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 207
    .local v9, unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v8, st:Ljava/lang/StringBuilder;
    const-string v0, " select distinct B."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, " from "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v0, "uploads"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, " A,"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v0, "batch"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v0, " B where A."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v0, "batch_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v0, "= B."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v0, " AND (SELECT COUNT (A."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v0, "_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, ") FROM "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v0, "uploads"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, " WHERE "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v0, "uploads"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, "."

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v0, "status"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v0, "<>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/16 v0, 0xc8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "=0)"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads;->RAWQUERY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 234
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v7

    .line 240
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "UploadService"

    const-string v1, "Failed to removeUnusedData!"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    if-eqz v6, :cond_0

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    const/4 v6, 0x0

    .line 249
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 250
    return-void

    .line 242
    :cond_1
    if-eqz v6, :cond_0

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    const/4 v6, 0x0

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 244
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method private startUpload(Lcom/htc/providers/uploads/UploadInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 602
    const/16 v0, 0xbe

    iput v0, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 603
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 607
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert activeFileInfo, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    .line 612
    :cond_0
    return-void
.end method

.method private stringFromCursor(Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "old"
    .parameter "cursor"
    .parameter "column"

    .prologue
    const/4 v7, 0x0

    .line 933
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 934
    .local v1, index:I
    if-nez p1, :cond_1

    .line 935
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 956
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 937
    .restart local p1
    :cond_1
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    if-nez v5, :cond_2

    .line 938
    new-instance v5, Landroid/database/CharArrayBuffer;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    .line 940
    :cond_2
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    invoke-interface {p2, v1, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 941
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    iget v2, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 942
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 943
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 945
    :cond_3
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-ge v5, v2, :cond_5

    .line 946
    :cond_4
    new-instance v5, Landroid/database/CharArrayBuffer;

    invoke-direct {v5, v2}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v5, p0, Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;

    .line 948
    :cond_5
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->oldChars:Landroid/database/CharArrayBuffer;

    iget-object v4, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 949
    .local v4, oldArray:[C
    iget-object v5, p0, Lcom/htc/providers/uploads/UploadService;->newChars:Landroid/database/CharArrayBuffer;

    iget-object v3, v5, Landroid/database/CharArrayBuffer;->data:[C

    .line 950
    .local v3, newArray:[C
    invoke-virtual {p1, v7, v2, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 951
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 952
    aget-char v5, v4, v0

    aget-char v6, v3, v0

    if-eq v5, v6, :cond_6

    .line 953
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 951
    .restart local p1
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private trackingActiveUpload(Lcom/htc/providers/uploads/UploadInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    .line 517
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curActiveUpload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info.id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-enter p0

    .line 523
    :try_start_0
    iget v0, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v1, 0xbd

    if-ne v0, v1, :cond_a

    .line 526
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadService;->startUpload(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 528
    monitor-exit p0

    .line 599
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v11, 0x0

    .line 531
    .local v11, taskNotFinished:I
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    if-eqz v0, :cond_6

    .line 532
    const/4 v7, 0x0

    .line 533
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 534
    .local v6, curInfo:Lcom/htc/providers/uploads/UploadInfo;
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 536
    .local v9, itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    check-cast v6, Lcom/htc/providers/uploads/UploadInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 539
    .restart local v6       #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    :cond_1
    if-eqz v6, :cond_8

    .line 541
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "status"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "batch_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 547
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 548
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 549
    .local v8, id:I
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 553
    .local v10, status:I
    invoke-static {v10}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/UploadInfo;

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    .line 557
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 565
    .end local v8           #id:I
    .end local v10           #status:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 566
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 597
    .end local v6           #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v11           #taskNotFinished:I
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 560
    .restart local v6       #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #id:I
    .restart local v9       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v10       #status:I
    .restart local v11       #taskNotFinished:I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 565
    .end local v8           #id:I
    .end local v10           #status:I
    :cond_5
    if-eqz v7, :cond_6

    .line 566
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 572
    .end local v6           #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_2
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    if-nez v0, :cond_7

    .line 573
    const-string v0, "UploadService"

    const-string v1, "No current active upload, start upload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    iget v0, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    if-eq v0, v1, :cond_9

    .line 576
    if-nez v11, :cond_7

    .line 577
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadService;->startUpload(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 597
    .end local v11           #taskNotFinished:I
    :cond_7
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 569
    .restart local v6       #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v11       #taskNotFinished:I
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    goto :goto_2

    .line 579
    .end local v6           #curInfo:Lcom/htc/providers/uploads/UploadInfo;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #itrs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadService;->startUpload(Lcom/htc/providers/uploads/UploadInfo;)V

    goto :goto_3

    .line 584
    .end local v11           #taskNotFinished:I
    :cond_a
    iget v0, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    const/16 v1, 0xc1

    if-eq v0, v1, :cond_b

    .line 587
    const-string v0, "UploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove activeFileInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadService;->prevActiveFileInfo:Lcom/htc/providers/uploads/UploadInfo;

    .line 589
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    goto :goto_3

    .line 591
    :cond_b
    iget v0, p1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 592
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 593
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveFileInfo:Ljava/util/HashMap;

    iget v1, p1, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadService;->curActiveUpload:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method

.method private trimDatabase()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "status >= 200"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 702
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 705
    const-string v0, "UploadService"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return-void

    .line 709
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    sget-object v0, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 714
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 719
    .end local v7           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "UploadService"

    const-string v1, "UpdateThread already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 260
    :cond_0
    monitor-enter p0

    .line 262
    :try_start_0
    const-string v0, "UploadService"

    const-string v1, "updateFromProvider synchronized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/providers/uploads/UploadService;->pendingUpdate:Z

    .line 264
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lcom/htc/providers/uploads/UploadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/htc/providers/uploads/UploadService$UpdateThread;-><init>(Lcom/htc/providers/uploads/UploadService;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    .line 266
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->updateThread:Lcom/htc/providers/uploads/UploadService$UpdateThread;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/UploadService$UpdateThread;->start()V

    .line 268
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateUpload(Landroid/database/Cursor;IZJ)V
    .locals 27
    .parameter "cursor"
    .parameter "arrayPos"
    .parameter "networkAvailable"
    .parameter "now"

    .prologue
    .line 821
    const-string v3, "UploadService"

    const-string v4, "Update upload"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/providers/uploads/UploadInfo;

    .line 823
    .local v20, info:Lcom/htc/providers/uploads/UploadInfo;
    const-string v3, "status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 824
    .local v25, statusColumn:I
    const-string v3, "fail_connections"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 826
    .local v19, failedColumn:I
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    .line 828
    const-string v3, "batch_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    .line 831
    move-object/from16 v0, v20

    iget v3, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v3}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 833
    const/16 v22, 0x1

    .line 834
    .local v22, isSuccess:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(batch_id == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, WHERE_VISIBILITY_CHANGE:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "batch_id"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "status"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const-string v8, "batch_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 843
    .local v23, otherCursor:Landroid/database/Cursor;
    const/16 v21, 0x1

    .line 844
    .local v21, isDone:Z
    :cond_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 846
    const-string v3, "status"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 849
    .local v24, otherStatus:I
    invoke-static/range {v24 .. v24}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    const/16 v21, 0x0

    .line 851
    invoke-static/range {v24 .. v24}, Lcom/htc/opensense/upload/Uploads;->isStatusSuccess(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 852
    const/16 v22, 0x0

    .line 857
    .end local v24           #otherStatus:I
    :cond_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 858
    if-eqz v21, :cond_2

    .line 859
    const-string v3, "UploadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel notification because done with batch id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    sget-object v3, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    iget-object v3, v3, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 864
    .end local v6           #WHERE_VISIBILITY_CHANGE:Ljava/lang/String;
    .end local v21           #isDone:Z
    .end local v22           #isSuccess:Z
    .end local v23           #otherCursor:Landroid/database/Cursor;
    :cond_2
    const-string v3, "control"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->control:I

    .line 866
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 867
    .local v16, newStatus:I
    move-object/from16 v0, v20

    iget v9, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 869
    .local v9, oldStatus:I
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 870
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->numFailed:I

    .line 871
    const-string v3, "status_change_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 873
    const-string v3, "lastmod"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v20

    iput-wide v3, v0, Lcom/htc/providers/uploads/UploadInfo;->lastMod:J

    .line 875
    const-string v3, "total_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->totalBytes:I

    .line 877
    const-string v3, "current_bytes"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/htc/providers/uploads/UploadInfo;->currentBytes:I

    .line 879
    const-string v3, "resp_status"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/providers/uploads/UploadService;->readInUICommand(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 886
    move-object/from16 v0, v20

    iget v8, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    move-object/from16 v0, v20

    iget-wide v11, v0, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    .line 888
    if-eqz p3, :cond_4

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 890
    .local v11, currentTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/providers/uploads/UploadService;->trackingActiveUpload(Lcom/htc/providers/uploads/UploadInfo;)V

    .line 891
    move-object/from16 v0, v20

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/htc/providers/uploads/UploadInfo;->isReadyToRestart(J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 893
    move-object/from16 v0, v20

    iget v9, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 894
    const/16 v10, 0xc0

    .line 895
    .end local v16           #newStatus:I
    .local v10, newStatus:I
    move-object/from16 v0, v20

    iput v10, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    .line 898
    move-object/from16 v0, v20

    iput-wide v11, v0, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    .line 899
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 900
    .local v26, values:Landroid/content/ContentValues;
    const-string v3, "status"

    move-object/from16 v0, v20

    iget v4, v0, Lcom/htc/providers/uploads/UploadInfo;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    const-string v3, "resp_status"

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/htc/providers/uploads/UploadInfo;->respStatus:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v3, "status_change_time"

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/htc/providers/uploads/UploadInfo;->statusChangeTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    int-to-long v7, v5

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 909
    move-object/from16 v0, v20

    iget v8, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    .line 911
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/htc/providers/uploads/UploadInfo;->batch_id:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    invoke-virtual {v3, v4, v5, v7}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 920
    .end local v26           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/providers/uploads/UploadService;->lastNetworkOnTime:J

    .line 925
    .end local v11           #currentTime:J
    :goto_1
    return-void

    .line 916
    .end local v10           #newStatus:I
    .restart local v11       #currentTime:J
    .restart local v16       #newStatus:I
    :cond_3
    move-object/from16 v0, v20

    iget v14, v0, Lcom/htc/providers/uploads/UploadInfo;->id:I

    move-object/from16 v13, p0

    move v15, v9

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/htc/providers/uploads/UploadService;->notifyThroughMessage(IIIJ)V

    move/from16 v10, v16

    .end local v16           #newStatus:I
    .restart local v10       #newStatus:I
    goto :goto_0

    .line 922
    .end local v10           #newStatus:I
    .end local v11           #currentTime:J
    .restart local v16       #newStatus:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    move/from16 v10, v16

    .end local v16           #newStatus:I
    .restart local v10       #newStatus:I
    goto :goto_1
.end method

.method private visibleNotification(I)Z
    .locals 2
    .parameter "arrayPos"

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/UploadInfo;

    .line 1061
    .local v0, info:Lcom/htc/providers/uploads/UploadInfo;
    invoke-virtual {v0}, Lcom/htc/providers/uploads/UploadInfo;->hasCompletionNotification()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Upload Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 150
    const-string v0, "UploadService"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UploadHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Lcom/htc/providers/uploads/UploadService$UploadHandler;

    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService;->serviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/providers/uploads/UploadService$UploadHandler;-><init>(Lcom/htc/providers/uploads/UploadService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    .line 157
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->mUploads:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;

    invoke-direct {v0, p0, p0}, Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;-><init>(Lcom/htc/providers/uploads/UploadService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadService;->mObserver:Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;

    .line 160
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/providers/uploads/UploadService;->mObserver:Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    new-instance v0, Lcom/htc/providers/uploads/UploadNotification;

    invoke-direct {v0, p0}, Lcom/htc/providers/uploads/UploadNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    .line 165
    sget-object v0, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/providers/uploads/UploadService$1;

    invoke-direct {v1, p0}, Lcom/htc/providers/uploads/UploadService$1;-><init>(Lcom/htc/providers/uploads/UploadService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 177
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService;->updateFromProvider()V

    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceHandler:Lcom/htc/providers/uploads/UploadService$UploadHandler;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/UploadService$UploadHandler;->unBindCurrent()V

    .line 195
    invoke-virtual {p0}, Lcom/htc/providers/uploads/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/providers/uploads/UploadService;->mObserver:Lcom/htc/providers/uploads/UploadService$UploadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    const-string v0, "UploadService"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadService;->serviceThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 201
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 202
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 185
    const-string v0, "UploadService"

    const-string v1, "Service onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadService;->updateFromProvider()V

    .line 188
    return-void
.end method
