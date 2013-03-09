.class public Lcom/android/camera/DCFRuler$StorageCardControl;
.super Ljava/lang/Object;
.source "DCFRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DCFRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageCardControl"
.end annotation


# static fields
.field public static final PHONE_STORAGE:I = 0x0

.field public static final STORAGE_CARD:I = 0x1

.field public static final bSupportPhoneStorage:Z

.field private static nStorageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    sput v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x89

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurStorageDirectory()Ljava/io/File;
    .locals 2

    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "DCFRuler"

    const-string v1, "Invalid storage directory"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurStorageState()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "mounted"

    goto :goto_0
.end method

.method public static getSDCardState()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStorageType()I
    .locals 1

    sget v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    return v0
.end method

.method public static initStorageType(Landroid/app/Activity;)V
    .locals 4

    const/4 v2, 0x1

    sput v2, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    sget-boolean v1, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-nez v1, :cond_0

    const-string v1, "DCFRuler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no phone storage - initStorageType(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_3

    const-string v1, "pref_camera_storage_location"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "main_memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    sput v1, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    :goto_1
    const-string v1, "DCFRuler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStorageType(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput v2, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    goto :goto_1

    :cond_2
    const-string v1, "DCFRuler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initStorageType() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "DCFRuler"

    const-string v2, "initStorageType() failed - activity == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setStorageType(Landroid/app/Activity;I)V
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    sput p1, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    const-string v1, "DCFRuler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorageType(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pref_camera_storage_location"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "main_memory"

    goto :goto_0

    :pswitch_1
    const-string v0, "sdcard"

    goto :goto_0

    :cond_0
    const-string v1, "DCFRuler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorageType() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "DCFRuler"

    const-string v2, "setStorageType() failed - activity == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setURIType(I)V
    .locals 1

    if-nez p0, :cond_0

    sget v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    invoke-static {v0}, Lcom/android/camera/ImageManager;->setImageURI(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    invoke-static {v0}, Lcom/android/camera/ImageManager;->setVideoURI(I)V

    goto :goto_0
.end method

.method public static toggleStorageType(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/camera/DCFRuler$StorageCardControl;->nStorageType:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v0}, Lcom/android/camera/DCFRuler$StorageCardControl;->setStorageType(Landroid/app/Activity;I)V

    return-void
.end method
