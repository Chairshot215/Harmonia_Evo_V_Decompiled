.class Lcom/htc/app/FilePickerUtil;
.super Ljava/lang/Object;
.source "FilePickerUtil.java"


# static fields
.field private static final HOURS_24:Ljava/lang/String; = "24"

#the value of this static final field might be set in the static constructor
.field static final IsDrawSeperatorDivider:Z = false

.field static final IsEditingWindowMode:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableBottomRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnableTopRound:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnabledListViewRoundedCorner:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsEnabledTranparentBckground:Z = false

#the value of this static final field might be set in the static constructor
.field static final IsSupportInternalStorage:Z = false

.field private static instance:Lcom/htc/app/FilePickerUtil; = null

.field private static final mExtSdcardPath:Ljava/lang/String; = "/mnt/sdcard/ext_sd"

.field private static final mSdcardPath:Ljava/lang/String; = null

.field private static final mUsbPath:Ljava/lang/String; = "/mnt/sdcard/usb"


# instance fields
.field private ALLOW_FORDER:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentViewType:I

.field private mDcfAudioList:[Ljava/lang/String;

.field private mDcfImageList:[Ljava/lang/String;

.field private mDcfVideoList:[Ljava/lang/String;

.field private mDmAudioList:[Ljava/lang/String;

.field private mDmImageList:[Ljava/lang/String;

.field private mDmVideoList:[Ljava/lang/String;

.field private mFileDate:Ljava/sql/Date;

.field private mRootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportInternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->mSdcardPath:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0}, Lcom/htc/app/FilePickerUtil;-><init>()V

    sput-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;

    .line 444
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledListViewRoundedCorner()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledListViewRoundedCorner:Z

    .line 462
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableTopRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableTopRound:Z

    .line 481
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableBottomRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableBottomRound:Z

    .line 496
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledTranparentBckground()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledTranparentBckground:Z

    .line 509
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->shouldDrawSeperatorDivider()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsDrawSeperatorDivider:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.voicerecorder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 339
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    .line 340
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    .line 341
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    .line 343
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    .line 344
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    .line 345
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    .line 388
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFileDate:Ljava/sql/Date;

    .line 63
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "path"
    .parameter "mDrmFilter"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.voicerecorder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .line 339
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    .line 340
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    .line 341
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    .line 343
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    .line 344
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    .line 345
    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    .line 388
    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFileDate:Ljava/sql/Date;

    .line 73
    iput-object p3, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p0, p2}, Lcom/htc/app/FilePickerUtil;->initDmFileList([Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->setRootPath(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static IsEmptyPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, result:Z
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 246
    :cond_1
    return v0
.end method

.method private static checkEnableBottomRound()Z
    .locals 2

    .prologue
    .line 483
    const/4 v0, 0x1

    .line 484
    .local v0, isEnableBottomRound:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 491
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    .line 488
    :sswitch_0
    const/4 v0, 0x0

    .line 489
    goto :goto_0

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnableTopRound()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 464
    const/4 v0, 0x1

    .line 465
    .local v0, isEnableTopRound:Z
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 479
    .end local v0           #isEnableTopRound:Z
    :cond_0
    :goto_1
    return v0

    .line 472
    .restart local v0       #isEnableTopRound:Z
    :sswitch_0
    const/4 v0, 0x0

    .line 473
    goto :goto_0

    .line 478
    :cond_1
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 465
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledListViewRoundedCorner()Z
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, enabledListViewRoundedCorner:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 460
    .end local v0           #enabledListViewRoundedCorner:Z
    :cond_0
    :goto_1
    return v0

    .line 453
    .restart local v0       #enabledListViewRoundedCorner:Z
    :sswitch_0
    const/4 v0, 0x1

    .line 454
    goto :goto_0

    .line 459
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3e -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnabledTranparentBckground()Z
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x1

    .line 499
    .local v0, isEnabledTranparentBckground:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    packed-switch v1, :pswitch_data_0

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 501
    :pswitch_0
    const/4 v0, 0x0

    .line 502
    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x8a
        :pswitch_0
    .end packed-switch
.end method

.method private static checkSupportInternalStorage()Z
    .locals 2

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, supportInternalStorage:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 426
    const/4 v0, 0x0

    .line 429
    :goto_0
    return v0

    .line 423
    :sswitch_0
    const/4 v0, 0x1

    .line 424
    goto :goto_0

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method static final getInstance()Lcom/htc/app/FilePickerUtil;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    sget-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;

    if-nez v0, :cond_0

    .line 67
    invoke-static {v1, v1, v1}, Lcom/htc/app/FilePickerUtil;->newInstance(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    .line 69
    :cond_0
    sget-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static final getInstance(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "path"
    .parameter "mDrmFilter"
    .parameter "context"

    .prologue
    .line 91
    sget-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;

    if-nez v0, :cond_0

    .line 92
    invoke-static {p0, p1, p2}, Lcom/htc/app/FilePickerUtil;->newInstance(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    .line 94
    :cond_0
    sget-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method private is24Hour()Z
    .locals 3

    .prologue
    .line 392
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, setting:Ljava/lang/String;
    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static declared-synchronized newInstance(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "path"
    .parameter "mDrmFilter"
    .parameter "context"

    .prologue
    .line 81
    const-class v1, Lcom/htc/app/FilePickerUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    monitor-exit v1

    return-void

    .line 83
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0}, Lcom/htc/app/FilePickerUtil;-><init>()V

    sput-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 86
    :cond_1
    :try_start_2
    new-instance v0, Lcom/htc/app/FilePickerUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/app/FilePickerUtil;-><init>(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/htc/app/FilePickerUtil;->instance:Lcom/htc/app/FilePickerUtil;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static shouldDrawSeperatorDivider()Z
    .locals 2

    .prologue
    .line 511
    const/4 v0, 0x1

    .line 512
    .local v0, shouldDrawSeperatorDivider:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 519
    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    .line 516
    :sswitch_0
    const/4 v0, 0x0

    .line 517
    goto :goto_0

    .line 512
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method IsFolderView()Z
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method IsListView()Z
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method IsMultiPath(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, pathCount:I
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, dirs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    .line 232
    new-instance v1, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 236
    :cond_0
    if-le v3, v4, :cond_1

    .line 239
    .end local v1           #folder:Ljava/io/File;
    :goto_1
    return v4

    .line 231
    .restart local v1       #folder:Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v1           #folder:Ljava/io/File;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method IsRootPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerUtil;->getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, tmpPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object p1

    .line 196
    :cond_0
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public IsSDcardPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, result:Z
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    .line 178
    const-string v1, "/mnt/sdcard/ext_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    sget-object v1, Lcom/htc/app/FilePickerUtil;->mSdcardPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/sdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/mnt/sdcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method IsUsbPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, result:Z
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method

.method checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 250
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, result:Z
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    const/4 v0, 0x1

    .line 258
    :cond_2
    return v0
.end method

.method checkExtSDCard()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method checkFileCanScan(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, result:Z
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkExtSDCard()Z

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkSDCard()Z

    move-result v0

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkUsb()Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method checkSDCard()Z
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkUsb()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    .line 526
    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    .line 527
    return-void
.end method

.method formatInt(I)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 412
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 415
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 205
    const-string v3, ""

    .line 206
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, dirs:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 208
    new-instance v1, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, folder:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v1           #folder:Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_2
    return-object v3
.end method

.method getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/app/FilePickerUtil;->mSdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 3
    .parameter "FileDate"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, dateFormat:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kk:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :goto_0
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 407
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hh:mm a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getMCurrentViewType(I)I
    .locals 1
    .parameter "viewType"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    return v0
.end method

.method getPathArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 223
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, dirs:[Ljava/lang/String;
    goto :goto_0
.end method

.method getRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method initDmFileList([Ljava/lang/String;)V
    .locals 3
    .parameter "mDrmFilter"

    .prologue
    .line 349
    if-eqz p1, :cond_2

    .line 350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 351
    aget-object v1, p1, v0

    const-string v2, "drm_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "drm_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    aget-object v1, p1, v0

    const-string v2, "drm_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 386
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method isAllowForder(Ljava/lang/String;)Z
    .locals 5
    .parameter "forderName"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 277
    .local v3, path:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    const/4 v4, 0x1

    .line 280
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return v4

    .line 276
    .restart local v3       #path:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isContainDM(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 265
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 267
    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDcfContent(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 286
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 294
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 301
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 302
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 303
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 308
    .end local v0           #i:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isDmContent(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 313
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 321
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 329
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 330
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 335
    .end local v0           #i:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setMCurrentViewType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 30
    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    .line 31
    return-void
.end method

.method setRootPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 48
    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    goto :goto_0
.end method
