.class public Lcom/htc/android/mail/util/StorageControl;
.super Ljava/lang/Object;
.source "StorageControl.java"


# static fields
.field public static final ATTACHMENT_SAVE_TO_DEFAULT_ORDER:I = -0x1

.field public static final ATTACHMENT_SAVE_TO_EXTERNAL_STORAGE:I = 0x1

.field public static final ATTACHMENT_SAVE_TO_INTERNAL_STORAGE:I = 0x0

.field public static final ATTACHMENT_SAVE_TO_PHONE_STORAGE:I = 0x2

.field public static final ATTACH_THUMB_PATH:Ljava/lang/String; = "mail/attachthumb"

.field public static final INVISIBLE_FOLDER_PATH:Ljava/lang/String; = ".data"

.field public static final RELATED_ATTACHMENT_PATH:Ljava/lang/String; = "mail/related"

.field private static final TAG:Ljava/lang/String; = "StorageControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFolder(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 188
    if-nez p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, folder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static getAttachExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ct"

    .prologue
    .line 111
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isPhoneStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAttachPhoneStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "ct"

    .prologue
    .line 125
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isPhoneStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->getSDCardPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "storagePriority"
    .parameter "tokenFolder"
    .parameter "filename"
    .parameter "attachType"

    .prologue
    .line 96
    sget v0, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    if-ne p4, v0, :cond_1

    .line 97
    if-nez p2, :cond_0

    .line 98
    const-string p2, "mail/related"

    .line 103
    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/util/StorageControl;->getFileStoragePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_1
    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail/related"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/android/mail/util/StorageControl;->getFileStoragePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getFileStoragePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "ct"
    .parameter "storagePriority"
    .parameter "tokenFolder"
    .parameter "filename"
    .parameter "isUnderInvisibleFolder"

    .prologue
    .line 48
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "StorageControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttachmentFilePath, enableSDSave="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 51
    .local v0, path:Ljava/lang/String;
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    .line 52
    :cond_1
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getAttachPhoneStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_2

    .line 61
    const-string v1, "StorageControl"

    const-string v2, "getAttachmentFilePath, Path is empty!!"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_3
    if-eqz p4, :cond_8

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_1
    invoke-static {v0}, Lcom/htc/android/mail/util/StorageControl;->createFolder(Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_4

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_4
    invoke-static {v0}, Lcom/htc/android/mail/util/StorageControl;->createFolder(Ljava/lang/String;)V

    .line 80
    if-nez p3, :cond_9

    .line 82
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_5

    .line 83
    const-string v1, "StorageControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrun folder path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_2
    return-object v1

    .line 53
    :cond_6
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 54
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getAttachExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 56
    :cond_7
    invoke-static {p0}, Lcom/htc/android/mail/util/StorageControl;->getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_9
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_a

    .line 88
    const-string v1, "StorageControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrun folder path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static getInternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "ct"

    .prologue
    .line 147
    const-string v0, "mail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isDeviceSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isDeviceSupportPhoneStorage()Z
    .locals 2

    .prologue
    .line 151
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneStorageAvailable()Z
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isDeviceSupportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isDeviceSupportPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 182
    goto :goto_0
.end method
