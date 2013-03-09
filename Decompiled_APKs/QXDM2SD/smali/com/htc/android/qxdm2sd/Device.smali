.class public Lcom/htc/android/qxdm2sd/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/qxdm2sd/Device$Log;
    }
.end annotation


# static fields
.field public static final APP_DIR:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/"

.field public static final BIN_DIR:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/bin/"

.field public static final DAT_DIR:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/data/"

.field public static final LIB_DIR:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/lib/"

.field public static final NOTIFICATION_FLAG_CANCEL_ON_CLICK:I = 0x10

.field public static final NOTIFICATION_FLAG_NEVER_CANCEL:I = 0x20

.field public static final PHONE_CDMA:I = 0x2

.field public static final PHONE_DEFAULT:I = 0x0

.field public static final PHONE_GSM:I = 0x1

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field public static final SU_NOT_EXIST:I = 0x0

.field public static final SU_PROTECTED:I = 0x2

.field public static final SU_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QXDM2SD:Device"

.field public static final TMP_DIR:Ljava/lang/String; = "/data/data/com.htc.android.qxdm2sd/tmp/"

.field private static final mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

.field private static mPhone:Lcom/android/internal/telephony/Phone;

.field private static mPhoneCDMA:Lcom/android/internal/telephony/Phone;

.field private static mPhoneGSM:Lcom/android/internal/telephony/Phone;

.field public static mPhoneStorage:Ljava/lang/String;

.field public static mSuStatus:I

.field private static mUsbDebuggingContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/qxdm2sd/Device;->mSuStatus:I

    .line 502
    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 503
    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneGSM:Lcom/android/internal/telephony/Phone;

    .line 504
    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneCDMA:Lcom/android/internal/telephony/Phone;

    .line 914
    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mUsbDebuggingContext:Landroid/content/Context;

    .line 916
    new-instance v0, Lcom/htc/android/qxdm2sd/Device$1;

    invoke-direct {v0}, Lcom/htc/android/qxdm2sd/Device$1;-><init>()V

    sput-object v0, Lcom/htc/android/qxdm2sd/Device;->mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

    .line 957
    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneStorage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/htc/android/qxdm2sd/Device;->mUsbDebuggingContext:Landroid/content/Context;

    return-object v0
.end method

.method public static changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->execAndWait([Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static changeFileModeWildcard(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "files"
    .parameter "mode"

    .prologue
    .line 141
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

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->execAndWait([Ljava/lang/String;)I

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
    .line 781
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 782
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 783
    .local v4, size:I
    new-array v0, v4, [B

    .line 784
    .local v0, buffer:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 785
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 786
    const/4 v2, 0x0

    .line 788
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

    .line 789
    .local v3, os:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 790
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 791
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 792
    const/4 v3, 0x0

    .line 793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/htc/android/qxdm2sd/Device;->changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    const/4 v5, 0x1

    .line 801
    .end local v0           #buffer:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/FileOutputStream;
    .end local v4           #size:I
    :goto_0
    return v5

    .line 797
    :catch_0
    move-exception v1

    .line 799
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "QXDM2SD:Device"

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

    invoke-static {v5, v6, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 801
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static createOptionMenu(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 11
    .parameter "activityMenu"

    .prologue
    const/4 v2, 0x0

    .line 276
    const/4 v5, 0x1

    .line 277
    .local v5, useSubMenu:Z
    const/4 v0, 0x0

    .line 279
    .local v0, actionFlag:I
    if-nez p0, :cond_0

    .line 300
    :goto_0
    return-object v2

    .line 283
    :cond_0
    :try_start_0
    const-string v6, "Menu"

    invoke-interface {p0, v6}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 284
    .local v4, sbMenu:Landroid/view/SubMenu;
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 287
    .local v3, optionMenu:Landroid/view/MenuItem;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 289
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "SHOW_AS_ACTION_ALWAYS"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setShowAsAction"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    move-object v2, v4

    .local v2, menu:Landroid/view/Menu;
    goto :goto_0

    .line 294
    .end local v2           #menu:Landroid/view/Menu;
    .end local v3           #optionMenu:Landroid/view/MenuItem;
    .end local v4           #sbMenu:Landroid/view/SubMenu;
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/lang/Exception;
    invoke-interface {p0}, Landroid/view/Menu;->clear()V

    .line 297
    move-object v2, p0

    .restart local v2       #menu:Landroid/view/Menu;
    goto :goto_0
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4
    .parameter "strCmd"

    .prologue
    .line 148
    const-string v1, "QXDM2SD:Device"

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

    invoke-static {v1, v2}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static exec([Ljava/lang/String;)Ljava/lang/Process;
    .locals 9
    .parameter "strCmd"

    .prologue
    .line 163
    const-string v4, ""

    .line 165
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

    .line 167
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    const-string v6, "QXDM2SD:Device"

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

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    :goto_1
    return-object v6

    .line 173
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static execAndWait(Ljava/lang/String;)I
    .locals 6
    .parameter "strCmd"

    .prologue
    .line 182
    const/4 v0, -0x1

    .line 186
    .local v0, code:I
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 188
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 190
    const-string v3, "QXDM2SD:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tExit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2           #process:Ljava/lang/Process;
    :goto_0
    return v0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static execAndWait([Ljava/lang/String;)I
    .locals 6
    .parameter "strCmd"

    .prologue
    .line 204
    const/4 v0, -0x1

    .line 208
    .local v0, code:I
    :try_start_0
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 210
    .local v2, process:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 212
    const-string v3, "QXDM2SD:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tExit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v2           #process:Ljava/lang/Process;
    :goto_0
    return v0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static findMountPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v10, 0x2f

    .line 662
    const/4 v4, 0x0

    .line 663
    .local v4, reader:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 665
    .local v2, found:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 667
    :cond_0
    const-string v7, "QXDM2SD:Device"

    const-string v8, "findMountPoint: invalid given path, return \"/\"!"

    invoke-static {v7, v8}, Lcom/htc/android/qxdm2sd/Device$Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v7, "/"

    .line 737
    :goto_0
    return-object v7

    .line 671
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_2

    .line 673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 680
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

    .line 682
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 684
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 686
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

    .line 689
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

    .line 691
    const/4 v7, 0x1

    aget-object v3, v1, v7

    .line 700
    .local v3, mp:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 704
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 706
    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 695
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

    .line 718
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #s:Ljava/lang/String;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v4, :cond_7

    .line 719
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 725
    :cond_7
    :goto_4
    if-nez v2, :cond_8

    .line 727
    move-object v2, p0

    .line 730
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_9

    .line 732
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_9
    move-object v7, v2

    .line 737
    goto/16 :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/io/IOException;
    :goto_5
    const-string v7, "QXDM2SD:Device"

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

    invoke-static {v7, v8}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 721
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    goto :goto_4

    .line 711
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
    .line 372
    const-string v0, "ro.hardware"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 1037
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/android/qxdm2sd/Device;->getCommandOutput(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandOutput(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter "cmd"
    .parameter "showOutput"

    .prologue
    .line 977
    const-string v5, ""

    .line 979
    .local v5, ret:Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 981
    const/4 v3, 0x0

    .line 985
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    const-string v6, "QXDM2SD:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 989
    .local v2, process:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x400

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 993
    .local v0, code:I
    const-string v6, "QXDM2SD:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 999
    if-nez p0, :cond_3

    .line 1005
    if-eqz p1, :cond_0

    .line 1007
    const-string v6, "QXDM2SD:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "out: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v3, v4

    .line 1017
    .end local v0           #code:I
    .end local v2           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v3, :cond_1

    .line 1019
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1026
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    .line 1028
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1032
    .end local v3           #reader:Ljava/io/BufferedReader;
    :cond_2
    return-object v5

    .line 1002
    .restart local v0       #code:I
    .restart local v2       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    goto :goto_0

    .line 1010
    .end local v0           #code:I
    .end local v2           #process:Ljava/lang/Process;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 1012
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    const-string v6, "QXDM2SD:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCommandOutput(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1022
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1010
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #process:Ljava/lang/Process;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 809
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, ext:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 812
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 826
    const-string v0, "removed"

    :goto_0
    return-object v0

    .line 824
    :pswitch_0
    const-string v0, "mounted"

    goto :goto_0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFsAvailableSpace(Ljava/lang/String;J)J
    .locals 9
    .parameter "path"
    .parameter "base"

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 743
    .local v1, fs:Landroid/os/StatFs;
    const/4 v3, 0x0

    .line 745
    .local v3, mountpoint:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 747
    .local v4, ret:J
    invoke-static {p0}, Lcom/htc/android/qxdm2sd/Device;->findMountPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 751
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    .end local v1           #fs:Landroid/os/StatFs;
    .local v2, fs:Landroid/os/StatFs;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    move-object v1, v2

    .line 764
    .end local v2           #fs:Landroid/os/StatFs;
    .restart local v1       #fs:Landroid/os/StatFs;
    :goto_0
    return-wide v4

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "QXDM2SD:Device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to calculate free space from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 758
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fs:Landroid/os/StatFs;
    .restart local v2       #fs:Landroid/os/StatFs;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #fs:Landroid/os/StatFs;
    .restart local v1       #fs:Landroid/os/StatFs;
    goto :goto_1
.end method

.method public static getFsAvailableSpaceKB(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 769
    const-wide/16 v0, 0x400

    invoke-static {p0, v0, v1}, Lcom/htc/android/qxdm2sd/Device;->getFsAvailableSpace(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFsAvailableSpaceMB(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 774
    const-wide/32 v0, 0x100000

    invoke-static {p0, v0, v1}, Lcom/htc/android/qxdm2sd/Device;->getFsAvailableSpace(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPhoneInstance(I)Lcom/android/internal/telephony/Phone;
    .locals 4
    .parameter "phoneType"

    .prologue
    .line 525
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v2

    .line 527
    .local v2, phones:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Phone;>;"
    packed-switch p0, :pswitch_data_0

    .line 540
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    .line 531
    :pswitch_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 533
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, p0, :cond_0

    goto :goto_0

    .line 538
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhoneStorageDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 964
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getPhoneStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, ext:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 967
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/emmc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1042
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getPhoneStorageState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1046
    const-string v0, "removed"

    :goto_0
    return-object v0

    .line 1044
    :pswitch_0
    const-string v0, "mounted"

    goto :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPhoneTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 512
    packed-switch p0, :pswitch_data_0

    .line 519
    const-string v0, "DEFAULT"

    :goto_0
    return-object v0

    .line 515
    :pswitch_0
    const-string v0, "GSM"

    goto :goto_0

    .line 517
    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRotation()I
    .locals 3

    .prologue
    .line 248
    :try_start_0
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 252
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "QXDM2SD:Device"

    const-string v2, "Failed to get screen rotation!"

    invoke-static {v1, v2, v0}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSwitchState()I
    .locals 2

    .prologue
    .line 263
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

    .line 267
    :goto_0
    return v0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static initEnvironment(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const v8, 0x7f040001

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 865
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.qxdm2sd/bin/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 867
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "sh"

    aput-object v5, v4, v2

    const-string v5, "-c"

    aput-object v5, v4, v3

    const-string v5, "/system/bin/mkdir /data/data/com.htc.android.qxdm2sd/bin/ && /system/bin/chmod 770 /data/data/com.htc.android.qxdm2sd/bin/"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/Device;->execAndWait([Ljava/lang/String;)I

    .line 869
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.qxdm2sd/data/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 871
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "sh"

    aput-object v5, v4, v2

    const-string v5, "-c"

    aput-object v5, v4, v3

    const-string v5, "/system/bin/mkdir /data/data/com.htc.android.qxdm2sd/data/ && /system/bin/chmod 770 /data/data/com.htc.android.qxdm2sd/data/"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/Device;->execAndWait([Ljava/lang/String;)I

    .line 873
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.qxdm2sd/tmp/"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 875
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "sh"

    aput-object v5, v4, v2

    const-string v5, "-c"

    aput-object v5, v4, v3

    const-string v5, "/system/bin/mkdir /data/data/com.htc.android.qxdm2sd/tmp/ && /system/bin/chmod 770 /data/data/com.htc.android.qxdm2sd/tmp/"

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/Device;->execAndWait([Ljava/lang/String;)I

    .line 879
    :cond_2
    const-string v0, "/data/data/com.htc.android.qxdm2sd/data/.version"

    .line 881
    .local v0, vFile:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 883
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/qxdm2sd/Device;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_3
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 899
    const-string v4, "/data/data/com.htc.android.qxdm2sd/bin/"

    const-string v5, "htcqxdm2sd"

    const-string v6, "750"

    invoke-static {p0, v4, v5, v6}, Lcom/htc/android/qxdm2sd/Device;->createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 911
    :cond_4
    :goto_1
    return v2

    .line 887
    :cond_5
    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, ver:Ljava/lang/String;
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 891
    const-string v4, "/system/bin/rm /data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/Device;->execAndWait(Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/htc/android/qxdm2sd/Device;->writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    .end local v1           #ver:Ljava/lang/String;
    :cond_6
    const-string v4, ""

    invoke-static {}, Lcom/htc/android/qxdm2sd/QXDM2SD;->getDaemonVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 905
    const-string v4, "/system/bin/rm /data/data/com.htc.android.qxdm2sd/bin/htcqxdm2sd"

    invoke-static {v4}, Lcom/htc/android/qxdm2sd/Device;->execAndWait(Ljava/lang/String;)I

    .line 907
    const-string v4, "/data/data/com.htc.android.qxdm2sd/bin/"

    const-string v5, "htcqxdm2sd"

    const-string v6, "750"

    invoke-static {p0, v4, v5, v6}, Lcom/htc/android/qxdm2sd/Device;->createFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_7
    move v2, v3

    .line 911
    goto :goto_1
.end method

.method public static isBootMFG()Z
    .locals 2

    .prologue
    .line 386
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
    .line 858
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
    .line 852
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

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 229
    return-void
.end method

.method public static listServices()V
    .locals 8

    .prologue
    .line 316
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, slist:[Ljava/lang/String;
    const-string v5, "QXDM2SD:Device"

    const-string v6, "/////////////////////////////////////"

    invoke-static {v5, v6}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
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
    const-string v5, "QXDM2SD:Device"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    const-string v5, "QXDM2SD:Device"

    const-string v6, "/////////////////////////////////////"

    invoke-static {v5, v6}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :goto_1
    return-void

    .line 324
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static parseATCommandResult(Landroid/os/Message;)Ljava/lang/String;
    .locals 7
    .parameter "resultMessage"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 616
    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 618
    .local v0, ar:Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 620
    const-string v3, "QXDM2SD:Device"

    const-string v4, "parseATCommandResult: no result!"

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_0
    return-object v2

    .line 624
    :cond_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 626
    const-string v3, "QXDM2SD:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseATCommandResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 632
    const-string v3, "QXDM2SD:Device"

    const-string v4, "parseATCommandResult: no result strings!"

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 638
    .local v1, results:[Ljava/lang/String;
    const/4 v3, 0x2

    array-length v4, v1

    if-eq v3, v4, :cond_3

    .line 640
    const-string v3, "QXDM2SD:Device"

    const-string v4, "parseATCommandResult: unmatched result number!"

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 646
    .local v2, ret:Ljava/lang/String;
    aget-object v3, v1, v5

    if-eqz v3, :cond_4

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    aget-object v3, v1, v6

    if-eqz v3, :cond_4

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 652
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 656
    :cond_4
    const-string v3, "QXDM2SD:Device"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseATCommandResult: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static probeAttribute([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "attrs"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, i:I
    :goto_0
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 499
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 494
    :cond_0
    new-instance v1, Ljava/io/File;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    aget-object v1, p0, v0

    goto :goto_1

    .line 489
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readAttrFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "filename"

    .prologue
    .line 461
    const/4 v0, 0x0

    const/16 v1, 0x100

    invoke-static {p0, v0, v1}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "max_buf_length"

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "bReadAll"

    .prologue
    .line 451
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAttrFile(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "bReadAll"
    .parameter "max_buf_length"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;ZIZ)Ljava/lang/String;

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
    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 396
    .local v3, ret:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    if-eqz p1, :cond_1

    .line 400
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 402
    .local v4, s:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 404
    if-nez v3, :cond_0

    .line 405
    move-object v3, v4

    goto :goto_0

    .line 407
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

    .line 412
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_2
    move-object v1, v2

    .line 422
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v1, :cond_3

    .line 423
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 429
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 431
    new-instance v3, Ljava/lang/String;

    .end local v3           #ret:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 434
    .restart local v3       #ret:Ljava/lang/String;
    :cond_4
    if-nez p3, :cond_5

    const-string v5, "QXDM2SD:Device"

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

    invoke-static {v5, v6}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_5
    return-object v3

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, e:Ljava/io/IOException;
    :goto_3
    const-string v5, "QXDM2SD:Device"

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

    invoke-static {v5, v6}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 425
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 415
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
    .line 446
    const/16 v0, 0x1000

    invoke-static {p0, p1, v0, p2}, Lcom/htc/android/qxdm2sd/Device;->readAttrFile(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "reason"

    .prologue
    .line 1051
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1053
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1058
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static sendATCommand(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .parameter "cmd"
    .parameter "resultMessage"

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/android/qxdm2sd/Device;->sendATCommand(Ljava/lang/String;Landroid/os/Message;I)Z

    move-result v0

    return v0
.end method

.method public static sendATCommand(Ljava/lang/String;Landroid/os/Message;I)Z
    .locals 7
    .parameter "cmd"
    .parameter "resultMessage"
    .parameter "phoneType"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    if-nez p0, :cond_0

    move v1, v2

    .line 606
    :goto_0
    return v1

    .line 550
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 552
    .local v0, commands:[Ljava/lang/String;
    const-string v1, "UNIAT"

    aput-object v1, v0, v2

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 555
    const-string v4, "QXDM2SD:Device"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendATCommand ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v3, :cond_1

    const-string v1, "GSM"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    packed-switch p2, :pswitch_data_0

    .line 591
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_5

    .line 594
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/Device;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 596
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_5

    .line 598
    const-string v1, "QXDM2SD:Device"

    const-string v3, "cannot get default phone object!"

    invoke-static {v1, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 599
    goto :goto_0

    .line 555
    :cond_1
    if-ne p2, v6, :cond_2

    const-string v1, "CDMA"

    goto :goto_1

    :cond_2
    const-string v1, "DEFAULT"

    goto :goto_1

    .line 560
    :pswitch_0
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneGSM:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_3

    .line 563
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/Device;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneGSM:Lcom/android/internal/telephony/Phone;

    .line 565
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneGSM:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_3

    .line 567
    const-string v1, "QXDM2SD:Device"

    const-string v3, "cannot get gsm phone object!"

    invoke-static {v1, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 568
    goto/16 :goto_0

    .line 571
    :cond_3
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneGSM:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    :goto_2
    move v1, v3

    .line 606
    goto/16 :goto_0

    .line 575
    :pswitch_1
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneCDMA:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_4

    .line 578
    invoke-static {v6}, Lcom/htc/android/qxdm2sd/Device;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneCDMA:Lcom/android/internal/telephony/Phone;

    .line 580
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneCDMA:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_4

    .line 582
    const-string v1, "QXDM2SD:Device"

    const-string v3, "cannot get cdma phone object!"

    invoke-static {v1, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 583
    goto/16 :goto_0

    .line 586
    :cond_4
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhoneCDMA:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 602
    :cond_5
    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_2

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "context"
    .parameter "icon"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    .line 847
    const/16 v5, 0x10

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/android/qxdm2sd/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 848
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

    .line 834
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x800

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 836
    .local v2, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p1, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 837
    .local v1, barMsg:Landroid/app/Notification;
    invoke-virtual {v1, p0, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 838
    const/4 v3, -0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 839
    iput p5, v1, Landroid/app/Notification;->flags:I

    .line 841
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 842
    .local v0, barManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 843
    return-void
.end method

.method public static setFullScreen(Landroid/app/Activity;)V
    .locals 2
    .parameter "act"

    .prologue
    const/16 v1, 0x400

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 236
    return-void
.end method

.method public static showUsbDebuggingWarning(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 945
    sput-object p0, Lcom/htc/android/qxdm2sd/Device;->mUsbDebuggingContext:Landroid/content/Context;

    .line 947
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/htc/android/qxdm2sd/Device;->mUsbDebuggingContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "USB debugging is disabled!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Tool may not work properly when the USB debugging setting is disabled.\n\nAfter clicking Ok, the Development settings page will pop up. Please enable the USB debugging option on it and then press BACK key to return to this tool."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000b

    sget-object v2, Lcom/htc/android/qxdm2sd/Device;->mOnClickDevSettings:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 955
    return-void
.end method

.method public static updateOptionMenu(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 306
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "invalidateOptionsMenu"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 466
    const-string v2, "QXDM2SD:Device"

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

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 485
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 478
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 481
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Ljava/io/IOException;
    const-string v2, "QXDM2SD:Device"

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

    invoke-static {v2, v3}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
