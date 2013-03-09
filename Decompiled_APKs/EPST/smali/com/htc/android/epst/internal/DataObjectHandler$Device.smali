.class Lcom/htc/android/epst/internal/DataObjectHandler$Device;
.super Ljava/lang/Object;
.source "DataObjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/internal/DataObjectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Device"
.end annotation


# static fields
.field public static final BIN_DIR:Ljava/lang/String; = "/data/bin/"

.field public static final DAT_DIR:Ljava/lang/String; = "/data/"

.field public static final LIB_DIR:Ljava/lang/String; = "/data/lib/"

.field public static final REBOOT_COMMAND:Ljava/lang/String; = "/system/bin/reboot"

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field public static final TMP_DIR:Ljava/lang/String; = "/sqlite_stmt_journals/"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reboot()V
    .locals 3

    .prologue
    .line 764
    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/DataObjectHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    const-string v1, "DataObjectHandler"

    const-string v2, "reboot-cmd:/system/xbin/su 0 /system/bin/reboot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "/system/xbin/su 0 /system/bin/reboot"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 775
    .local v0, ex:Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void

    .line 768
    .end local v0           #ex:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 769
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/android/epst/internal/DataObjectHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const-string v1, "DataObjectHandler"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 772
    .local v0, ex:Ljava/lang/SecurityException;
    invoke-static {}, Lcom/htc/android/epst/internal/DataObjectHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    const-string v1, "DataObjectHandler"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
