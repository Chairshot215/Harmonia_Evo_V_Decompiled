.class public Lcom/android/smith/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/smith/Device$FsInfo;,
        Lcom/android/smith/Device$Log;
    }
.end annotation


# static fields
.field public static final APP_DIR:Ljava/lang/String; = "/data/data/com.android.smith/"

.field public static final BIN_DIR:Ljava/lang/String; = "/data/data/com.android.smith/bin/"

.field public static final DAT_DIR:Ljava/lang/String; = "/data/data/com.android.smith/data/"

.field public static final GHOST_DIR:Ljava/lang/String; = "/data/data/com.android.smith/smghost/"

.field public static final GHOST_FOLDER_NAME:Ljava/lang/String; = "smghost/"

.field public static final LIB_DIR:Ljava/lang/String; = "/data/data/com.android.smith/lib/"

.field public static final LOG_DIR:Ljava/lang/String; = "/data/data/com.android.smith/htclog/"

.field public static final LOG_FOLDER_NAME:Ljava/lang/String; = "htclog/"

.field public static final NOTIFICATION_FLAG_CANCEL_ON_CLICK:I = 0x10

.field public static final NOTIFICATION_FLAG_NEVER_CANCEL:I = 0x20

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field public static final SU_NOT_EXIST:I = 0x0

.field public static final SU_PROTECTED:I = 0x2

.field public static final SU_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SM:Device"

.field public static final TMP_DIR:Ljava/lang/String; = "/data/data/com.android.smith/tmp/"

.field public static mExternalStorage:Ljava/lang/String;

.field private static final mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

.field public static mPhoneStorage:Ljava/lang/String;

.field private static mSemLock:Ljava/util/concurrent/Semaphore;

.field public static mSuStatus:I

.field private static mUsbDebuggingContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/android/smith/Device;->mSuStatus:I

    .line 816
    sput-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    .line 852
    sput-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    .line 921
    sput-object v1, Lcom/android/smith/Device;->mUsbDebuggingContext:Landroid/content/Context;

    .line 923
    new-instance v0, Lcom/android/smith/Device$1;

    invoke-direct {v0}, Lcom/android/smith/Device$1;-><init>()V

    sput-object v0, Lcom/android/smith/Device;->mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

    .line 964
    sput-object v1, Lcom/android/smith/Device;->mSemLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/smith/Device;->mUsbDebuggingContext:Landroid/content/Context;

    return-object v0
.end method

.method public static canWrite(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 246
    const-string v2, "logctl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":canwrite:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 249
    const/4 v1, 0x1

    .line 251
    :cond_0
    return v1
.end method

.method public static changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static changeFileModeWildcard(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "files"
    .parameter "mode"

    .prologue
    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for f in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; do /system/bin/chmod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " $f ; done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "path"
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 793
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 794
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 795
    .local v4, size:I
    new-array v0, v4, [B

    .line 796
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 797
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 798
    const/4 v2, 0x0

    .line 800
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 801
    .local v3, os:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 802
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 803
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 804
    const/4 v3, 0x0

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/android/smith/Device;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    const/4 v5, 0x1

    .line 813
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .end local v4           #size:I
    :goto_0
    return v5

    .line 809
    :catch_0
    move-exception v1

    .line 811
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "SM:Device"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] from assets failed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 813
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4
    .parameter "strCmd"

    .prologue
    .line 142
    const-string v1, "SM:Device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 9
    .parameter "strCmd"

    .prologue
    .line 157
    const-string v4, ""

    .line 159
    .local v4, log:Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .local v5, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    const-string v6, "SM:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 171
    :goto_1
    return-object v6

    .line 167
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static execAndWait(Ljava/lang/String;)I
    .locals 6
    .parameter "strCmd"

    .prologue
    .line 176
    const/4 v0, -0x1

    .line 180
    .local v0, code:I
    :try_start_0
    invoke-static {p0}, Lcom/android/smith/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 182
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 184
    const-string v3, "SM:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tExit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v2           #process:Ljava/lang/Process;
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static execAndWait([Ljava/lang/String;)I
    .locals 6
    .parameter "strCmd"

    .prologue
    .line 198
    const/4 v0, -0x1

    .line 202
    .local v0, code:I
    :try_start_0
    invoke-static {p0}, Lcom/android/smith/Device;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 204
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 206
    const-string v3, "SM:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tExit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v2           #process:Ljava/lang/Process;
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static findMountPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v10, 0x2f

    .line 495
    const/4 v4, 0x0

    .line 496
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 498
    .local v2, found:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 500
    :cond_0
    const-string v7, "SM:Device"

    const-string v8, "findMountPoint: invalid given path, return \"/\"!"

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v7, "/"

    .line 570
    :goto_0
    return-object v7

    .line 504
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_2

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/mounts"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 517
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, fields:[Ljava/lang/String;
    array-length v7, v1

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    const-string v7, "/"

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 522
    const/4 v7, 0x1

    aget-object v7, v1, v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 524
    const/4 v7, 0x1

    aget-object v3, v1, v7

    .line 531
    .local v3, mp:Ljava/lang/String;
    :goto_2
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findMountPoint: find mount point of ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]<->["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 535
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findMountPoint: matched mount point ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 539
    :cond_4
    move-object v2, v3

    goto/16 :goto_1

    .line 528
    .end local v3           #mp:Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .restart local v3       #mp:Ljava/lang/String;
    goto :goto_2

    .end local v1           #fields:[Ljava/lang/String;
    .end local v3           #mp:Ljava/lang/String;
    :cond_6
    move-object v4, v5

    .line 551
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #s:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v4, :cond_7

    .line 552
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 558
    :cond_7
    :goto_4
    if-nez v2, :cond_8

    .line 560
    move-object v2, p0

    .line 563
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_9

    .line 565
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 568
    :cond_9
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findMountPoint: use mount point = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 570
    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/io/IOException;
    :goto_5
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to read /proc/mounts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 554
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    goto :goto_4

    .line 544
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_5
.end method

.method public static getBoardName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    const-string v0, "ro.hardware"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 823
    sget-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 824
    :cond_0
    const-string v1, "logctl"

    const-string v2, ":getextstorage:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    .line 826
    :cond_1
    sget-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 827
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/smith/Device;->mExternalStorage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 840
    .local v0, ext:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 832
    .end local v0           #ext:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 834
    .restart local v0       #ext:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 835
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 849
    const-string v0, "removed"

    :goto_0
    return-object v0

    .line 847
    :pswitch_0
    const-string v0, "mounted"

    goto :goto_0

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFsAvailableSpace(Ljava/lang/String;J)J
    .locals 10
    .parameter "path"
    .parameter "base"

    .prologue
    .line 726
    const/4 v2, 0x0

    .line 727
    .local v2, fs:Landroid/os/StatFs;
    const/4 v1, 0x0

    .line 728
    .local v1, fi:Lcom/android/smith/Device$FsInfo;
    const/4 v4, 0x0

    .line 729
    .local v4, mountpoint:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 731
    .local v5, ret:J
    invoke-static {p0}, Lcom/android/smith/Device;->findMountPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fs:Landroid/os/StatFs;
    .local v3, fs:Landroid/os/StatFs;
    move-object v2, v3

    .line 747
    .end local v3           #fs:Landroid/os/StatFs;
    .restart local v2       #fs:Landroid/os/StatFs;
    :goto_0
    if-eqz v2, :cond_1

    .line 749
    :try_start_1
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    .line 776
    :cond_0
    :goto_1
    return-wide v5

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/android/smith/Device$FsInfo;

    .end local v1           #fi:Lcom/android/smith/Device$FsInfo;
    invoke-direct {v1, v4}, Lcom/android/smith/Device$FsInfo;-><init>(Ljava/lang/String;)V

    .restart local v1       #fi:Lcom/android/smith/Device$FsInfo;
    goto :goto_0

    .line 754
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v1, :cond_0

    .line 756
    :try_start_2
    invoke-virtual {v1}, Lcom/android/smith/Device$FsInfo;->get()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 758
    invoke-virtual {v1}, Lcom/android/smith/Device$FsInfo;->getBlockSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/smith/Device$FsInfo;->getAvailableBlocks()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    goto :goto_1

    .line 765
    :cond_2
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to get free space from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 766
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 770
    :catch_1
    move-exception v0

    .line 772
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "SM:Device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to calculate free space from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method public static getFsAvailableSpaceKB(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 781
    const-wide/16 v0, 0x400

    invoke-static {p0, v0, v1}, Lcom/android/smith/Device;->getFsAvailableSpace(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFsAvailableSpaceMB(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 786
    const-wide/32 v0, 0x100000

    invoke-static {p0, v0, v1}, Lcom/android/smith/Device;->getFsAvailableSpace(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 859
    sget-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 860
    :cond_0
    const-string v1, "logctl"

    const-string v2, ":getphonestorage:"

    invoke-static {v1, v2}, Lcom/android/smith/Device;->sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    .line 862
    :cond_1
    sget-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 863
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/smith/Device;->mPhoneStorage:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v0, ext:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 868
    .end local v0           #ext:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 870
    .restart local v0       #ext:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 871
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 876
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/emmc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 885
    const-string v0, "removed"

    :goto_0
    return-object v0

    .line 883
    :pswitch_0
    const-string v0, "mounted"

    goto :goto_0

    .line 881
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRotation()I
    .locals 1

    .prologue
    .line 283
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSwitchState()I
    .locals 2

    .prologue
    .line 295
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getSwitchState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initEnvironment(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f040001

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 984
    sget-object v5, Lcom/android/smith/Device;->mSemLock:Ljava/util/concurrent/Semaphore;

    if-nez v5, :cond_0

    .line 986
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v5, Lcom/android/smith/Device;->mSemLock:Ljava/util/concurrent/Semaphore;

    .line 990
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/bin/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 992
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "sh"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v4

    const-string v6, "/system/bin/mkdir /data/data/com.android.smith/bin/ && /system/bin/chmod 770 /data/data/com.android.smith/bin/"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 994
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/data/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 996
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "sh"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v4

    const-string v6, "/system/bin/mkdir /data/data/com.android.smith/data/ && /system/bin/chmod 770 /data/data/com.android.smith/data/"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 998
    :cond_2
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/htclog/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1000
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "sh"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v4

    const-string v6, "/system/bin/mkdir /data/data/com.android.smith/htclog/ && /system/bin/chmod 770 /data/data/com.android.smith/htclog/"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 1002
    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/tmp/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1004
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "sh"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v4

    const-string v6, "/system/bin/mkdir /data/data/com.android.smith/tmp/ && /system/bin/chmod 770 /data/data/com.android.smith/tmp/"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 1006
    :cond_4
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/smghost/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1008
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "sh"

    aput-object v6, v5, v3

    const-string v6, "-c"

    aput-object v6, v5, v4

    const-string v6, "/system/bin/mkdir /data/data/com.android.smith/smghost/ && /system/bin/chmod 770 /data/data/com.android.smith/smghost/"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait([Ljava/lang/String;)I

    .line 1012
    :cond_5
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/data/.patched"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1015
    const-string v5, "SM:Device"

    const-string v6, "Checking server version ..."

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    const v5, 0xffe7

    invoke-direct {v0, v5}, Lcom/android/smith/ClientLocalSocket;-><init>(I)V

    .line 1019
    .local v0, socket:Lcom/android/smith/ClientLocalSocket;
    if-eqz v0, :cond_7

    .line 1021
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f040003

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":getver:"

    invoke-virtual {v0, v6}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1023
    const-string v5, ":endserver:"

    invoke-virtual {v0, v5}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    :cond_6
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    .line 1029
    :cond_7
    const-string v1, "/data/data/com.android.smith/data/.version"

    .line 1031
    .local v1, vFile:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1033
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/smith/Device;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_8
    :goto_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/data/com.android.smith/bin/smithd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1051
    const-string v5, "/data/data/com.android.smith/bin/"

    const-string v6, "smith"

    const-string v7, "750"

    invoke-static {p0, v5, v6, v7}, Lcom/android/smith/Device;->createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1067
    :cond_9
    :goto_1
    return v3

    .line 1037
    :cond_a
    invoke-static {v1}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1039
    .local v2, ver:Ljava/lang/String;
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1041
    const-string v5, "/system/bin/rm /data/data/com.android.smith/bin/smith"

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait(Ljava/lang/String;)I

    .line 1042
    const-string v5, "/system/bin/rm /data/data/com.android.smith/bin/smithd"

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait(Ljava/lang/String;)I

    .line 1043
    const-string v5, "/system/bin/rm /data/data/com.android.smith/bin/smzip"

    invoke-static {v5}, Lcom/android/smith/Device;->execAndWait(Ljava/lang/String;)I

    .line 1044
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/smith/Device;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1054
    .end local v2           #ver:Ljava/lang/String;
    :cond_b
    const-string v5, "/data/data/com.android.smith/bin/"

    const-string v6, "smithd"

    const-string v7, "750"

    invoke-static {p0, v5, v6, v7}, Lcom/android/smith/Device;->createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1057
    const-string v5, "/data/data/com.android.smith/bin/"

    const-string v6, "smzip"

    const-string v7, "750"

    invoke-static {p0, v5, v6, v7}, Lcom/android/smith/Device;->createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1062
    :cond_c
    const-string v5, "SM:Device"

    const-string v6, "Start server if stopped ..."

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v5, "logctl"

    invoke-static {v5}, Lcom/android/smith/ClientLocalSocket;->getServicePort(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_9

    move v3, v4

    .line 1067
    goto :goto_1
.end method

.method public static isBootMFG()Z
    .locals 2

    .prologue
    .line 377
    const-string v0, "ro.bootmode"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUsbDebuggingEnabled()Z
    .locals 2

    .prologue
    .line 917
    const-string v0, "persist.service.adb.enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "persist.sys.usb.config"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserBuild()Z
    .locals 3

    .prologue
    .line 911
    const-string v0, "user"

    const-string v1, "ro.build.type"

    const-string v2, "eng"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user"

    const-string v1, "persist.sss.build.type"

    const-string v2, "eng"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    const/16 v1, 0x80

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 264
    return-void
.end method

.method public static listServices()V
    .locals 8

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, slist:[Ljava/lang/String;
    const-string v5, "SM:Device"

    const-string v6, "/////////////////////////////////////"

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, s:Ljava/lang/String;
    const-string v5, "SM:Device"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    const-string v5, "SM:Device"

    const-string v6, "/////////////////////////////////////"

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static lock()V
    .locals 1

    .prologue
    .line 970
    :try_start_0
    sget-object v0, Lcom/android/smith/Device;->mSemLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    return-void

    .line 972
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static probeAttribute([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "attrs"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, i:I
    :goto_0
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 490
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 485
    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    aget-object v1, p0, v0

    goto :goto_1

    .line 480
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readAttrFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 452
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {p0, v0, v1}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "max_buf_length"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "bReadAll"

    .prologue
    .line 442
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "bReadAll"
    .parameter "max_buf_length"

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "bReadAll"
    .parameter "max_buf_length"
    .parameter "bQuiet"

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 387
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    if-eqz p1, :cond_1

    .line 391
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 393
    .local v4, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 395
    if-nez v3, :cond_0

    .line 396
    move-object v3, v4

    goto :goto_0

    .line 398
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 403
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_2
    move-object v1, v2

    .line 413
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_3

    .line 414
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 420
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 422
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 425
    .restart local v3       #ret:Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    const-string v5, "SM:Device"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAttrFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_5
    return-object v3

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "SM:Device"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 416
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 406
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static readAttrFile(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "bReadAll"
    .parameter "bQuiet"

    .prologue
    .line 437
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Lcom/android/smith/Device;->readAttrFile(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    .line 906
    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/smith/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 907
    return-void
.end method

.method public static sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "flag"

    .prologue
    const/4 v5, 0x0

    .line 893
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/smith/SystemLoggers;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x800

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 895
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 896
    .local v1, barMsg:Landroid/app/Notification;
    invoke-virtual {v1, p0, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 898
    iput p5, v1, Landroid/app/Notification;->flags:I

    .line 900
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 901
    .local v0, barManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 902
    return-void
.end method

.method public static sendToService(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "service"
    .parameter "command"

    .prologue
    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, ret:Ljava/lang/String;
    new-instance v0, Lcom/android/smith/ClientLocalSocket;

    invoke-direct {v0, p0}, Lcom/android/smith/ClientLocalSocket;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, mSocket:Lcom/android/smith/ClientLocalSocket;
    if-nez v0, :cond_0

    .line 226
    const-string v3, "SM:Device"

    const-string v4, "Failed to new a socket!"

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 241
    .end local v1           #ret:Ljava/lang/String;
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 230
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->getLastException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "SM:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    move-object v2, v1

    .line 234
    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/smith/ClientLocalSocket;->issueServiceCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v0}, Lcom/android/smith/ClientLocalSocket;->close()V

    move-object v2, v1

    .line 241
    .end local v1           #ret:Ljava/lang/String;
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setFullScreen(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    const/16 v1, 0x400

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 271
    return-void
.end method

.method public static showUsbDebuggingWarning(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 952
    sput-object p0, Lcom/android/smith/Device;->mUsbDebuggingContext:Landroid/content/Context;

    .line 954
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/smith/Device;->mUsbDebuggingContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "USB debugging is disabled!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Tool may not work properly when the USB debugging setting is disabled.\n\nAfter clicking Ok, the Development settings page will pop up. Please enable the USB debugging option on it and then press BACK key to return to this tool."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f040036

    sget-object v2, Lcom/android/smith/Device;->mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 962
    return-void
.end method

.method public static unLock()V
    .locals 1

    .prologue
    .line 979
    sget-object v0, Lcom/android/smith/Device;->mSemLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 980
    return-void
.end method

.method public static waitForGhost()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 457
    const-string v2, "SM:Device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeAttrFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 476
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 469
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SM:Device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
