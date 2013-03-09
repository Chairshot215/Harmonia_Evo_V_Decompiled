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

.field private static final mExtSdcardPath:Ljava/lang/String; = "/mnt/sdcard/ext_sd"

.field private static final mSdcardPath:Ljava/lang/String; = null

.field private static final mUsbPath:Ljava/lang/String; = "/mnt/sdcard/usb"


# instance fields
.field private ALLOW_FORDER:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentViewType:I

.field private mDateFormat:Ljava/lang/String;

.field private mDcfAudioList:[Ljava/lang/String;

.field private mDcfImageList:[Ljava/lang/String;

.field private mDcfVideoList:[Ljava/lang/String;

.field private mDmAudioList:[Ljava/lang/String;

.field private mDmImageList:[Ljava/lang/String;

.field private mDmVideoList:[Ljava/lang/String;

.field private mFileDate:Ljava/sql/Date;

.field private mRootPath:Ljava/lang/String;

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkSupportInternalStorage()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/app/FilePickerUtil;->mSdcardPath:Ljava/lang/String;

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledListViewRoundedCorner()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledListViewRoundedCorner:Z

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableTopRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableTopRound:Z

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnableBottomRound()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnableBottomRound:Z

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->checkEnabledTranparentBckground()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsEnabledTranparentBckground:Z

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->shouldDrawSeperatorDivider()Z

    move-result v0

    sput-boolean v0, Lcom/htc/app/FilePickerUtil;->IsDrawSeperatorDivider:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.voicerecorder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFileDate:Ljava/sql/Date;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/mnt/sdcard/.voicerecorder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/mnt/sdcard/ext_sd/.voicerecorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    new-instance v0, Ljava/sql/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mFileDate:Ljava/sql/Date;

    iput-object p3, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/htc/app/FilePickerUtil;->initDmFileList([Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->setRootPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method static IsEmptyPath(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static checkEnableBottomRound()Z
    .locals 2

    const/4 v0, 0x1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkEnableTopRound()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v2, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v3, "3.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

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

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "3.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

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

    const/4 v0, 0x1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkSupportInternalStorage()Z
    .locals 2

    const/4 v0, 0x0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x8a -> :sswitch_0
    .end sparse-switch
.end method

.method private is24Hour()Z
    .locals 2

    const-string v0, "24"

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static shouldDrawSeperatorDivider()Z
    .locals 2

    const/4 v0, 0x1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_2

    new-instance v1, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    if-le v3, v4, :cond_1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method IsRootPath(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerUtil;->getAvailableFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {v0}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public IsSDcardPath(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    const-string v1, "/mnt/sdcard/ext_sd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

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

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method IsUsbPath(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_0

    const-string v1, "/mnt/sdcard/usb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method checkCanHideInternalStorageSdcardAndUsb(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->checkFileCanScan(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method checkExtSDCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method checkFileCanScan(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsSDcardPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkExtSDCard()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkSDCard()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->IsUsbPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/htc/app/FilePickerUtil;->IsSupportInternalStorage:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->checkUsb()Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method checkSDCard()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkUsb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method formatInt(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

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

    const-string v3, ""

    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerUtil;->getPathArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    new-instance v1, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

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

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method getDefaultPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/app/FilePickerUtil;->mSdcardPath:Ljava/lang/String;

    return-object v0
.end method

.method getFormatedDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-direct {p0}, Lcom/htc/app/FilePickerUtil;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " kk:mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    return v0
.end method

.method getPathArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getRootPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method initDmFileList([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    const-string v2, "drm_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v1, p1, v0

    const-string v2, "drm_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    aget-object v1, p1, v0

    const-string v2, "drm_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDcfFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/app/FilePickerUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/provider/DrmStore;->getDmFileList(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    return-void
.end method

.method isAllowForder(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/htc/app/FilePickerUtil;->ALLOW_FORDER:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method isContainDM(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDcfContent(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfAudioList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfVideoList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDcfImageList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isDmContent(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmAudioList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmVideoList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/htc/app/FilePickerUtil;->mDmImageList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setMCurrentViewType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/FilePickerUtil;->mCurrentViewType:I

    return-void
.end method

.method setRootPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/htc/app/FilePickerUtil;->IsEmptyPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/app/FilePickerUtil;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/htc/app/FilePickerUtil;->mRootPath:Ljava/lang/String;

    goto :goto_0
.end method
