.class public Lcom/android/camera/RecordLimitCheck;
.super Ljava/lang/Object;
.source "RecordLimitCheck.java"


# static fields
.field public static final BITRATE_FILE_PATH:Ljava/lang/String; = "/data/.mms_bitrate"

.field public static final DISK_SPACE_LIMIT:I = 0x2

.field public static final FILE_SIZE_LIMIT:I = 0x1

.field public static final FS_FILE_SIZE_LIMIT:I = 0x5

.field private static final KERNEL_FILE_IO_BUFFER_SIZE:J = 0x1400000L

.field private static final MAXINUM_VIDEO_FILE_SIZE:J = 0xff800000L

.field public static final MINIMUN_FILE_LIMIT:J = 0x61a8L

.field private static final MINIMUN_VIDEO_REMAIN_SPACE:J = 0x500000L

.field private static final MMS_QVGA_BITRATE:I = 0x1f400

.field private static final MMS_RECORDING_TIMEOUT:I = 0x3c

.field public static final NO_LIMIT:I = 0x0

.field private static QUICK_CHECK_DURATION:I = 0x0

.field private static QUICK_CHECK_THRESHOLD:I = 0x0

.field public static final REASSIGN_FILE_LIMIT:J = 0xea60L

.field private static STANDARD_CHECK_DURATION:I = 0x0

.field private static STANDARD_CHECK_THRESHOLD:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field public static final TIME_API_LIMIT:I = 0x4

.field public static final TIME_UI_LIMIT:I = 0x3

.field private static final VERIZON_BITRATE:I = 0x3e800


# instance fields
.field private bUseTimeOut_API:Z

.field private bifCheckDisk:Z

.field private bifCheckFile:Z

.field private mByteRate:I

.field mCameraThread:Lcom/android/camera/CameraThread;

.field private mCheckSizeDuration:J

.field private mLimitState:I

.field private mMaxBytes:J

.field private mMaxSeconds:I

.field private mRecordingFile:Ljava/io/File;

.field private mVideoBitrate:I

.field mVideo_safty_space:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RecordLimitCheck"

    sput-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const/16 v0, 0xf

    sput v0, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_THRESHOLD:I

    const/16 v0, 0xa

    sput v0, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_THRESHOLD:I

    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_DURATION:I

    const/16 v0, 0x64

    sput v0, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_DURATION:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_DURATION:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mVideo_safty_space:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/RecordLimitCheck;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object p1, p0, Lcom/android/camera/RecordLimitCheck;->mCameraThread:Lcom/android/camera/CameraThread;

    return-void
.end method

.method private remain_time_from_disk()J
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private remain_time_from_file()J
    .locals 10

    const-wide/16 v2, 0x0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    iget-object v8, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long v0, v6, v8

    long-to-double v6, v0

    iget v8, p0, Lcom/android/camera/RecordLimitCheck;->mByteRate:I

    int-to-double v8, v8

    div-double v4, v6, v8

    double-to-long v2, v4

    const-wide/high16 v6, 0x3ff8

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    sget-object v6, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FILE_SIZE_LIMIT, file length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sget-object v6, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v7, "FILE_SIZE_LIMIT, mRecordingFile == null"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setLimitState(IZ)Z
    .locals 2

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v1, "setLimitState() - mLimitState != NO_LIMIT, can\'t set it"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public calculateRemainSpace()V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v9, v9

    mul-long v0, v7, v9

    const-wide/16 v7, 0x64

    div-long v7, v0, v7

    const-wide/16 v9, 0x2

    mul-long v2, v7, v9

    const-wide/32 v7, 0x500000

    add-long/2addr v7, v2

    const-wide/32 v9, 0x1400000

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/camera/RecordLimitCheck;->mVideo_safty_space:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    sget-object v7, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v8, "catch - calculate remain space with exception: "

    invoke-static {v7, v8, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public checkSizeLimit()V
    .locals 10

    const/4 v7, 0x2

    const-wide/16 v5, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v4, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    iget-boolean v4, p0, Lcom/android/camera/RecordLimitCheck;->bifCheckFile:Z

    if-ne v4, v8, :cond_5

    invoke-direct {p0}, Lcom/android/camera/RecordLimitCheck;->remain_time_from_file()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-gez v4, :cond_4

    iget-wide v4, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-wide v6, 0xff800000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/4 v4, 0x5

    invoke-direct {p0, v4, v9}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v4

    if-ne v4, v8, :cond_2

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v5, "setLimitState() = true, FS_FILE_SIZE_LIMIT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    if-nez v4, :cond_0

    sget v4, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_THRESHOLD:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6

    sget v4, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_DURATION:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    goto :goto_0

    :cond_3
    invoke-direct {p0, v8, v9}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v4

    if-ne v4, v8, :cond_2

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v5, "setLimitState() = true, FILE_SIZE_LIMIT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/RecordLimitCheck;->bifCheckDisk:Z

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Lcom/android/camera/RecordLimitCheck;->remain_time_from_disk()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    move-wide v2, v0

    cmp-long v4, v2, v5

    if-gez v4, :cond_2

    invoke-direct {p0, v7, v9}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v4

    if-ne v4, v8, :cond_2

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v5, "setLimitState() = true, DISK_SPACE_LIMIT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/RecordLimitCheck;->remain_time_from_disk()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-gez v4, :cond_2

    invoke-direct {p0, v7, v9}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v4

    if-ne v4, v8, :cond_2

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v5, "setLimitState() = true, DISK_SPACE_LIMIT"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget v4, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_THRESHOLD:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    sget v4, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_DURATION:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    goto/16 :goto_0

    :cond_7
    const-wide/16 v4, 0x5

    div-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    goto/16 :goto_0
.end method

.method public checkTimeOut_UI(J)J
    .locals 2

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v1, "setLimitState() = true, TIME_UI_LIMIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 p1, 0x0

    :cond_1
    :goto_0
    return-wide p1

    :cond_2
    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    int-to-long v0, v0

    sub-long p1, v0, p1

    goto :goto_0
.end method

.method public getCheckSizeDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    return-wide v0
.end method

.method public declared-synchronized getLimitState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    return-wide v0
.end method

.method public getMaxSeconds()I
    .locals 1

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    return v0
.end method

.method public getUseTimeOut_API()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/RecordLimitCheck;->bUseTimeOut_API:Z

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mVideoBitrate:I

    return v0
.end method

.method public remainTime(Z)J
    .locals 19

    const-wide/16 v11, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v2, v15, v17

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RecordLimitCheck;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/RecordLimitCheck;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v15}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/camera/RecordLimitCheck;->mVideo_safty_space:J

    :goto_0
    if-eqz p1, :cond_0

    sget-object v15, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v16, "isReadyRecordCheck = true, setLimitState( NO_LIMIT )"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/RecordLimitCheck;->bifCheckDisk:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/RecordLimitCheck;->bifCheckFile:Z

    :cond_0
    sub-long v15, v2, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/RecordLimitCheck;->mByteRate:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    div-long v7, v15, v17

    move-wide v11, v7

    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gez v15, :cond_1

    const-wide/16 v11, 0x0

    :cond_1
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/RecordLimitCheck;->bifCheckFile:Z

    if-nez v15, :cond_7

    sget v15, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_THRESHOLD:I

    int-to-long v15, v15

    cmp-long v15, v11, v15

    if-gtz v15, :cond_5

    sget v15, Lcom/android/camera/RecordLimitCheck;->QUICK_CHECK_DURATION:I

    int-to-long v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    :goto_1
    sget-object v15, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Check Size Duration : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-wide v11

    :cond_3
    const-wide/16 v15, 0x64

    div-long v15, v2, v15

    const-wide/16 v17, 0x2

    mul-long v4, v15, v17

    const-wide/32 v15, 0x500000

    add-long/2addr v15, v4

    const-wide/32 v17, 0x1400000

    add-long v13, v15, v17

    goto/16 :goto_0

    :cond_4
    sget-object v15, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v16, "mCameraThread == null"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-object v15, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v16, "catch - remainTime with exception: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v15, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v16, "return remainTime = -1"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, -0x1

    goto :goto_2

    :cond_5
    :try_start_1
    sget v15, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_THRESHOLD:I

    int-to-long v15, v15

    cmp-long v15, v11, v15

    if-gtz v15, :cond_6

    sget v15, Lcom/android/camera/RecordLimitCheck;->STANDARD_CHECK_DURATION:I

    int-to-long v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    goto :goto_1

    :cond_6
    const-wide/16 v15, 0x5

    div-long v15, v11, v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    goto :goto_1

    :cond_7
    const-wide/16 v15, 0x0

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public restartCheckFile()V
    .locals 6

    const-wide/16 v4, 0x61a8

    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/RecordLimitCheck;->bifCheckFile:Z

    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", less then safe size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mCheckSizeDuration:J

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto :goto_0
.end method

.method public setByteRate(Lcom/android/camera/HTCCamera;)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v5, "Video resolution = null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v3, v2, Lcom/android/camera/Resolution;->width:I

    const v0, 0x11170

    const/16 v4, 0x780

    if-lt v3, v4, :cond_2

    const v0, 0x989680

    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/camera/RecordLimitCheck;->mVideoBitrate:I

    const/16 v1, 0x4e20

    add-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x8

    iput v4, p0, Lcom/android/camera/RecordLimitCheck;->mByteRate:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x500

    if-le v3, v4, :cond_3

    const v0, 0x7a1200

    goto :goto_1

    :cond_3
    const/16 v4, 0x3c0

    if-le v3, v4, :cond_4

    const v0, 0x4c4b40

    goto :goto_1

    :cond_4
    const/16 v4, 0x320

    if-lt v3, v4, :cond_5

    const v0, 0x2dc6c0

    goto :goto_1

    :cond_5
    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_6

    const v0, 0x2dc6c0

    goto :goto_1

    :cond_6
    const/16 v4, 0x280

    if-lt v3, v4, :cond_7

    const v0, 0x186a00

    goto :goto_1

    :cond_7
    const/16 v4, 0x1e0

    if-lt v3, v4, :cond_8

    const v0, 0xf4240

    goto :goto_1

    :cond_8
    const/16 v4, 0x160

    if-lt v3, v4, :cond_9

    const v0, 0xc3500

    goto :goto_1

    :cond_9
    const/16 v4, 0x140

    if-lt v3, v4, :cond_b

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_a

    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v4, v5, :cond_a

    const v0, 0x1f400

    goto :goto_1

    :cond_a
    const v0, 0xc3500

    goto :goto_1

    :cond_b
    const/16 v4, 0xb0

    if-lt v3, v4, :cond_1

    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v4, v5, :cond_c

    const v0, 0x1f400

    goto :goto_1

    :cond_c
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v4, v5, :cond_e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x95

    if-eq v4, v5, :cond_d

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x97

    if-ne v4, v5, :cond_e

    :cond_d
    const v0, 0x1f400

    goto :goto_1

    :cond_e
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_f

    const v0, 0x13880

    sget-object v4, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set bitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const v0, 0x13880

    goto/16 :goto_1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/RecordLimitCheck;->mRecordingFile:Ljava/io/File;

    return-void
.end method

.method public setFileSizelimit_API(Z)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-wide v2, 0xff800000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v1, "setLimitState() = true, FS_FILE_SIZE_LIMIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v1, "setLimitState() = true, FILE_SIZE_LIMIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRecordingLength(Lcom/android/camera/HTCCamera;)V
    .locals 14

    const/16 v13, 0x25

    const/4 v7, 0x2

    const-wide/16 v9, 0x61a8

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v12, :cond_1

    const-wide/32 v5, 0x4b000

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const/4 v1, 0x0

    const-string v5, "%d %s"

    new-array v6, v7, [Ljava/lang/Object;

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, 0x7f0a0140

    invoke-virtual {p1, v7}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f0a0141

    invoke-static {v5, v13, v6, v11, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    :goto_0
    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRecordingLength - mMaxSeconds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mMaxBytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v12, :cond_4

    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    cmp-long v5, v5, v9

    if-gtz v5, :cond_2

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", less then safe size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v5, 0xea60

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    :goto_1
    sget-object v5, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v6, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v5, v6, :cond_3

    const/16 v5, 0x3c

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto :goto_0

    :cond_2
    const-string v5, "%d %s"

    new-array v6, v7, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, 0x7f0a013e

    invoke-virtual {p1, v7}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f0a013f

    invoke-static {v5, v13, v6, v11, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v6, Lcom/android/camera/DisplayDevice$CustomMMS;->Sprint:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v5, v6, :cond_0

    const/16 v5, 0x78

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :cond_4
    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p1, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v12, :cond_5

    invoke-static {}, Lcom/android/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    iget-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    cmp-long v5, v5, v9

    if-gtz v5, :cond_0

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Video length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", less then safe size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v5, 0xea60

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    sget-object v5, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_mms_max_size"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get mms size from system settings: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-string v5, "%d %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const v8, 0x7f0a013e

    invoke-virtual {p1, v8}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x25

    const v7, 0x7f0a013f

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v6, "get mms size failed !!"

    invoke-static {v5, v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v6, "set recording length to 1 min"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    const/16 v5, 0x3c

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :cond_6
    sget-object v5, Lcom/android/camera/Resolution;->Video_VGA_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v5}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    const/16 v5, 0x258

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getRecordingLimit(Landroid/app/Activity;)I

    move-result v0

    sget-object v5, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRecordingLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-wide v5, 0xff800000L

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto/16 :goto_0

    :pswitch_1
    const-wide/32 v5, 0x3d090

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto/16 :goto_0

    :pswitch_2
    const-wide/32 v5, 0xf4240

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto/16 :goto_0

    :pswitch_3
    const-wide/32 v5, 0x1e8480

    iput-wide v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxBytes:J

    goto/16 :goto_0

    :pswitch_4
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :pswitch_5
    const/16 v5, 0x1e

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :pswitch_6
    const/16 v5, 0x3c

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :pswitch_7
    const/16 v5, 0xb4

    iput v5, p0, Lcom/android/camera/RecordLimitCheck;->mMaxSeconds:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setTimeOut_API()V
    .locals 2

    iget v0, p0, Lcom/android/camera/RecordLimitCheck;->mLimitState:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/RecordLimitCheck;->setLimitState(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/RecordLimitCheck;->TAG:Ljava/lang/String;

    const-string v1, "setLimitState() = true, TIME_API_LIMIT"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUseTimeOut_API(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/RecordLimitCheck;->bUseTimeOut_API:Z

    return-void
.end method
