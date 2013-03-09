.class public Lcom/android/camera/DCFRuler;
.super Ljava/lang/Object;
.source "DCFRuler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DCFRuler$StorageCardControl;,
        Lcom/android/camera/DCFRuler$InvalidDCFFormatException;,
        Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;,
        Lcom/android/camera/DCFRuler$PathPackage;,
        Lcom/android/camera/DCFRuler$fileFormat;
    }
.end annotation


# static fields
.field public static final DCFRootDirectory:Ljava/lang/String; = "DCIM"

.field static final DCF_DIRECTORY_MAX_NUMBER:I = 0x3e7

.field static final DCF_DIRECTORY_START_NUMBER:I = 0x64

.field static final DCF_FILENAME_LENGTH:I = 0x8

.field static final DCF_FILE_MAX_NUMBER:I = 0x270f

.field static final DCF_FILE_START_NUMBER:I = 0x1

.field public static final DefaultDCFInfo:Lcom/android/camera/DCFInfo; = null

.field public static final DefaultDirectoryName:Ljava/lang/String; = "100MEDIA"

.field static final TAG:Ljava/lang/String; = "DCFRuler"

.field static final VIDEO_DIRECTORY_NAME:Ljava/lang/String; = "VIDEO"

.field static final VIDEO_FILE_TAG:Ljava/lang/String; = "VIDEO"

.field private static final mDCFInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/DCFInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "IMAG"

    const-string v3, "counter_image"

    const-string v4, "counter_imagefolder"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V
    .locals 7

    const/16 v6, 0x64

    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/16 v2, 0x64

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    if-gt v2, v6, :cond_1

    const/4 v1, 0x0

    const/16 v2, 0x64

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    goto :goto_0

    :cond_1
    if-le v2, v6, :cond_0

    const/16 v1, 0x270f

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static backToCounterForVideo(Landroid/app/Activity;)V
    .locals 5

    const-string v3, "counter_video"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v3, "counter_video"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static backupDcimDirectory(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const-string v4, "DCIM"

    invoke-static {p1, v4}, Lcom/android/camera/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "DCFRuler"

    const-string v5, "Cannot backup \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DCFRuler"

    const-string v5, "Cannot create new \'DCIM\' directory."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/DCFInfo;

    invoke-virtual {v0}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "null"

    invoke-static {p0, v3, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static checkDCFFormat(Ljava/io/File;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v6, v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static complementToFourCharacters(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    div-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    div-int/lit8 v2, p0, 0x64

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    div-int/lit16 v2, p0, 0x3e8

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    div-int/lit16 v2, p0, 0x2710

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 6

    const/4 v2, -0x1

    const/16 v3, 0x3e7

    if-le p3, v3, :cond_1

    invoke-static {p0, p1}, Lcom/android/camera/DCFRuler;->backupDcimDirectory(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot backup \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const/16 p3, 0x64

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DCFRuler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not a directory. Creating new directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p3

    :cond_3
    move v2, p3

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "DCFRuler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' directory."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;
    .locals 4

    add-int/lit16 v1, p1, 0x2710

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;IILcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateFileName(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    invoke-static {p2}, Lcom/android/camera/DCFRuler;->getFreeFileCharacters(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/DCFRuler;->complementToFourCharacters(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static generateIMAGEFullFileName(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/camera/DCFRuler;->generateFileName(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized generateObjectsMap(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    const-class v10, Lcom/android/camera/DCFRuler;

    monitor-enter v10

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit v10

    return-object v6

    :cond_1
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    array-length v9, v2

    if-ge v3, v9, :cond_0

    aget-object v9, v2, v3

    invoke-static {v9}, Lcom/android/camera/DCFRuler;->checkDCFFormat(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    aget-object v9, v2, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/DCFRuler;->parseDCFFileNumber(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x0

    if-nez v4, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v5, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_3
    :try_start_2
    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static getDCFRootDirectoryName()Ljava/lang/String;
    .locals 1

    const-string v0, "DCIM"

    return-object v0
.end method

.method public static getDefaultDirectory()Ljava/lang/String;
    .locals 1

    const-string v0, "DCIM/100MEDIA"

    return-object v0
.end method

.method public static getFileExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".jpg"

    return-object v0
.end method

.method public static getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    if-ne p0, v0, :cond_0

    const-string v0, ".jpg"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    if-ne p0, v0, :cond_1

    const-string v0, ".jps"

    goto :goto_0

    :cond_1
    const-string v0, ".mpo"

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getFreeFileCharacters(Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "IMAG"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "VIDEO"

    goto :goto_0
.end method

.method public static getImageDirectoryName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImageDirectoryName(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getImageDirectoryNumber(Landroid/app/Activity;)I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public static getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/android/camera/DCFRuler$1;

    invoke-direct {v4, v0, v1, p1}, Lcom/android/camera/DCFRuler$1;-><init>(IILjava/lang/String;)V

    invoke-static {p0, v4, v3}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v2

    const-string v4, "DCFRuler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot get last directory number in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x8

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v0

    new-instance v0, Lcom/android/camera/DCFRuler$2;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/DCFRuler$2;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, v8}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget-object v0, v8, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v7

    const-string v0, "DCFRuler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot get last file number in \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\' directory."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "/sdcard"

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v0, "null"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v0, "null"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/16 v3, 0x64

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0x270f

    if-le v4, v0, :cond_5

    const/4 v4, 0x1

    const-string v0, "DCIM"

    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x64

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_1

    :catch_1
    move-exception v8

    const/16 v3, 0x64

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DCIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/io/File;

    const-string v1, "DCIM"

    move-object v0, p1

    move-object v2, p3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/DCFRuler;->fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;IILcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v7, v6}, Lcom/android/camera/DCFRuler;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_6

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_6
    const/16 v0, 0x64

    if-ge v3, v0, :cond_7

    const-string v0, "DCIM"

    const/16 v1, 0x64

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    :goto_2
    if-gez v3, :cond_8

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_7
    const-string v0, "DCIM"

    invoke-static {p0, p1, v0, v3, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/camera/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/DCFRuler;->getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_9
    const/16 v0, 0x270f

    if-ne v4, v0, :cond_a

    const/4 v4, 0x1

    const-string v0, "DCIM"

    add-int/lit8 v1, v3, 0x1

    invoke-static {p0, p1, v0, v1, v6}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    :cond_b
    new-instance v9, Lcom/android/camera/DCFRuler$PathPackage;

    invoke-direct {v9}, Lcom/android/camera/DCFRuler$PathPackage;-><init>()V

    iput v4, v9, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    iput v3, v9, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    return-object v9

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/camera/DCFRuler;->getFileExtension(Lcom/android/camera/DCFRuler$fileFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_3
.end method

.method public static getReleativeVideoPath()Ljava/lang/String;
    .locals 1

    const-string v0, "DCIM/100MEDIA"

    return-object v0
.end method

.method public static getThumbExtension()Ljava/lang/String;
    .locals 1

    const-string v0, ".thm"

    return-object v0
.end method

.method public static getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v8, "counter_video"

    invoke-static {p0, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v8, 0x1

    move v9, v8

    :goto_0
    :try_start_0
    const-string v8, "null"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "/sdcard"

    :cond_0
    const v8, 0x7fffffff

    if-ne v1, v8, :cond_1

    const-string v8, "DCIM"

    const/16 v9, 0x3e8

    sget-object v10, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v10}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v4, v8, v9, v10}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_5

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const-string v8, "VIDEO"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "^"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\\..*)?$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/camera/FileUtility;->isFileExistent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v1

    :goto_3
    return v2

    :cond_2
    const/4 v8, 0x0

    move v9, v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    :cond_6
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v8, "VIDEO"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v8

    new-instance v8, Lcom/android/camera/DCFRuler$3;

    invoke-direct {v8, v7}, Lcom/android/camera/DCFRuler$3;-><init>(I)V

    invoke-static {v6, v8, v3}, Lcom/android/camera/FileUtility;->enumerateFiles(Ljava/lang/String;Lcom/android/camera/FileUtility$FileEnumerationCallback;Ljava/lang/Object;)Z

    const/4 v8, 0x0

    aget-object v8, v3, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v8, 0x7fffffff

    if-ne v1, v8, :cond_7

    const-string v8, "DCIM"

    const/16 v9, 0x3e8

    sget-object v10, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v10}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v4, v8, v9, v10}, Lcom/android/camera/DCFRuler;->ensureDirectoryExists(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v8

    if-gez v8, :cond_8

    const/4 v1, 0x0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    const-string v8, "VIDEO"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_3

    :cond_8
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
.end method

.method public static getVideoNameAndNumber_old(Landroid/app/Activity;Ljava/lang/StringBuffer;)I
    .locals 11

    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    const-string v7, "counter_video"

    invoke-static {p0, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "0001"

    if-eqz v6, :cond_1

    :try_start_0
    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    :goto_0
    add-int/lit8 v4, v4, 0x1

    const-string v7, "%04d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VIDEO"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "0001"

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static getVideoPath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/sdcard"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "100MEDIA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isSaveToNextFolder(I)Z
    .locals 1

    const/16 v0, 0x270f

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openDCFRootDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "DCFRuler"

    const-string v4, "Exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseDCFFileNumber(Ljava/io/File;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->parseDCFFileNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseDCFFileNumber(Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static registerDCFInfo(Lcom/android/camera/DCFInfo;)V
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterDCFInfo(Lcom/android/camera/DCFInfo;)Z
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "dcfInfo"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/DCFRuler;->mDCFInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
