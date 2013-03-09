.class public final Lcom/android/facelockutil/FaceLockUtil;
.super Ljava/lang/Object;
.source "FaceLockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/facelockutil/FaceLockUtil$CompareState;,
        Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    }
.end annotation


# static fields
.field private static GALLERY_FILE_NAME:Ljava/lang/String;

.field private static TEMP_FILE_NAME:Ljava/lang/String;

.field private static sGalleryFilename:Ljava/lang/String;

.field private static sHaveSettings:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

.field private static sTempGalleryFilename:Ljava/lang/String;

.field private static final sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "temp.gal"

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->TEMP_FILE_NAME:Ljava/lang/String;

    .line 42
    const-string v0, "lockscreen.gal"

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->GALLERY_FILE_NAME:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/android/facelockutil/LockScreenSettings;

    invoke-direct {v0}, Lcom/android/facelockutil/LockScreenSettings;-><init>()V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    .line 45
    new-instance v0, Lcom/android/facelockutil/LockScreenSettings;

    invoke-direct {v0}, Lcom/android/facelockutil/LockScreenSettings;-><init>()V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    .line 238
    const-string v0, "facelock_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static deleteGalleryFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filesDir"

    .prologue
    .line 164
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    .line 165
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->GALLERY_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, galleryFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const-string v1, "FaceLockUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method public static deleteTempGalleryFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "filesDir"

    .prologue
    .line 155
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 159
    :goto_0
    return v1

    .line 156
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->TEMP_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0
.end method

.method private static native finalizeJni(Z)V
.end method

.method private static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "cr"
    .parameter "filesDir"

    .prologue
    const/4 v1, 0x1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/facelockutil/FaceLockUtil;->TEMP_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->sTempGalleryFilename:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/facelockutil/FaceLockUtil;->GALLERY_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/facelockutil/FaceLockUtil;->sGalleryFilename:Ljava/lang/String;

    .line 56
    sget-object v2, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v0, "facelock_use_n_max"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Lcom/android/facelockutil/LockScreenSettings;->use_n_max:Z

    .line 57
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_enrollment_threshold"

    const/high16 v3, 0x4000

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->detection_threshold:F

    .line 59
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_recognition_threshold"

    const v3, 0x400ccccd

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->recognition_threshold:F

    .line 61
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_min_face_size"

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->min_face_size:I

    .line 62
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_max_tries"

    const/4 v3, 0x6

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->max_tries:I

    .line 63
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_max_enroll_images"

    const/16 v3, 0xa

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->max_enroll_images:I

    .line 64
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_max_gallery_size"

    const/16 v3, 0x14

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/facelockutil/LockScreenSettings;->max_gallery_size:I

    .line 65
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v2, "facelock_num_threads"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->num_threads:I

    .line 66
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v1, "facelock_min_height"

    const/16 v2, 0xa0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->min_height:I

    .line 67
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v1, "facelock_min_width"

    const/16 v2, 0x78

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->min_width:I

    .line 68
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v1, "facelock_black_screen_threshold"

    const/16 v2, 0xf

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->black_screen_threshold:I

    .line 72
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget-boolean v1, v1, Lcom/android/facelockutil/LockScreenSettings;->use_n_max:Z

    iput-boolean v1, v0, Lcom/android/facelockutil/LockScreenSettings;->use_n_max:Z

    .line 73
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    const-string v1, "facelock_detection_threshold"

    const/high16 v2, 0x3fc0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->detection_threshold:F

    .line 75
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->recognition_threshold:F

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->recognition_threshold:F

    .line 76
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->min_face_size:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->min_face_size:I

    .line 77
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->max_tries:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->max_tries:I

    .line 78
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->max_enroll_images:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->max_enroll_images:I

    .line 79
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->max_gallery_size:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->max_gallery_size:I

    .line 80
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->num_threads:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->num_threads:I

    .line 81
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->min_height:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->min_height:I

    .line 82
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->min_width:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->min_width:I

    .line 83
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;

    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v1, v1, Lcom/android/facelockutil/LockScreenSettings;->black_screen_threshold:I

    iput v1, v0, Lcom/android/facelockutil/LockScreenSettings;->black_screen_threshold:I

    .line 119
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static declared-synchronized initialize(ZLandroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 3
    .parameter "enroll"
    .parameter "cr"
    .parameter "filesDir"

    .prologue
    .line 131
    const-class v1, Lcom/android/facelockutil/FaceLockUtil;

    monitor-enter v1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    monitor-exit v1

    return v0

    .line 132
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_1

    .line 134
    invoke-static {p1, p2}, Lcom/android/facelockutil/FaceLockUtil;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    .line 137
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-eqz p0, :cond_2

    :try_start_2
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    :goto_1
    invoke-static {v0, p0}, Lcom/android/facelockutil/FaceLockUtil;->initializeJni(Lcom/android/facelockutil/LockScreenSettings;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :cond_2
    :try_start_5
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sUnlockSettings:Lcom/android/facelockutil/LockScreenSettings;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private static native initializeJni(Lcom/android/facelockutil/LockScreenSettings;Z)Z
.end method

.method public static moveGalleryFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "filesDir"

    .prologue
    const/4 v2, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v2

    .line 144
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/facelockutil/FaceLockUtil;->TEMP_FILE_NAME:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v1, tempFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/facelockutil/FaceLockUtil;->GALLERY_FILE_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, destination:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setWriteFlagJni()V

    .line 150
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static native setWriteFlagJni()V
.end method

.method public static setupEnroll([BIII)Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    .locals 2
    .parameter "input"
    .parameter "width"
    .parameter "height"
    .parameter "angleDivNinety"

    .prologue
    .line 188
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->values()[Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/android/facelockutil/FaceLockUtil;->setupEnrollJni([BIII)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static native setupEnrollJni([BIII)I
.end method

.method public static setupFinalize()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/facelockutil/FaceLockUtil;->finalizeJni(Z)V

    .line 210
    return-void
.end method

.method public static setupGetMaxEnrollImages()I
    .locals 2

    .prologue
    .line 122
    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 124
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sSetupSettings:Lcom/android/facelockutil/LockScreenSettings;

    iget v0, v0, Lcom/android/facelockutil/LockScreenSettings;->max_enroll_images:I

    monitor-exit v1

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setupReadGallery()Z
    .locals 2

    .prologue
    .line 180
    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 182
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sGalleryFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/facelockutil/FaceLockUtil;->setupReadGalleryJni(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native setupReadGalleryJni(Ljava/lang/String;)Z
.end method

.method public static setupWriteGallery()Z
    .locals 2

    .prologue
    .line 192
    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 196
    :goto_0
    return v0

    .line 195
    :cond_0
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setWriteFlagJni()V

    .line 196
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sGalleryFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/facelockutil/FaceLockUtil;->setupWriteGalleryJni(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native setupWriteGalleryJni(Ljava/lang/String;)Z
.end method

.method public static setupWriteTempGallery()Z
    .locals 2

    .prologue
    .line 201
    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 204
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sTempGalleryFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/facelockutil/FaceLockUtil;->setupWriteGalleryJni(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unlockCompareFace([BII[II[F)Lcom/android/facelockutil/FaceLockUtil$CompareState;
    .locals 2
    .parameter "input"
    .parameter "width"
    .parameter "height"
    .parameter "tries"
    .parameter "angleDivNinety"
    .parameter "confidence"

    .prologue
    .line 228
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil$CompareState;->values()[Lcom/android/facelockutil/FaceLockUtil$CompareState;

    move-result-object v0

    invoke-static/range {p0 .. p5}, Lcom/android/facelockutil/FaceLockUtil;->unlockCompareFaceJni([BII[II[F)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static native unlockCompareFaceJni([BII[II[F)I
.end method

.method public static unlockIsBlackScreen([BII)Z
    .locals 1
    .parameter "input"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 233
    invoke-static {p0, p1, p2}, Lcom/android/facelockutil/FaceLockUtil;->unlockIsBlackScreenJni([BII)Z

    move-result v0

    return v0
.end method

.method private static native unlockIsBlackScreenJni([BII)Z
.end method

.method public static unlockLoadRecognitionModels()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->unlockLoadRecognitionModelsJni()Z

    move-result v0

    return v0
.end method

.method private static native unlockLoadRecognitionModelsJni()Z
.end method

.method public static unlockReadGallery()Z
    .locals 2

    .prologue
    .line 214
    sget-object v1, Lcom/android/facelockutil/FaceLockUtil;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    sget-boolean v0, Lcom/android/facelockutil/FaceLockUtil;->sHaveSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 216
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/facelockutil/FaceLockUtil;->sGalleryFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/facelockutil/FaceLockUtil;->unlockReadGalleryJni(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native unlockReadGalleryJni(Ljava/lang/String;)Z
.end method
