.class public Lcom/htc/android/worldclock/HtcStorageChecker;
.super Ljava/lang/Object;
.source "HtcStorageChecker.java"


# static fields
.field public static final INTERNAL_MEMORY_THRESOLD:J = 0x100000L

.field private static final PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/HtcStorageChecker;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized checkIternalMemory()J
    .locals 9

    .prologue
    .line 18
    const-class v8, Lcom/htc/android/worldclock/HtcStorageChecker;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/android/worldclock/HtcStorageChecker;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 19
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 20
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    int-to-long v2, v7

    .line 21
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 22
    .local v5, size:J
    monitor-exit v8

    return-wide v5

    .line 18
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static checkStorageFull(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 31
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->isInternalStorageEnough()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const v3, 0x7f08008e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, desc:Ljava/lang/String;
    new-instance v0, Lcom/htc/android/worldclock/HtcStorageChecker$1;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/HtcStorageChecker$1;-><init>(Landroid/app/Activity;)V

    .line 40
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f08008d

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08008f

    new-instance v5, Lcom/htc/android/worldclock/HtcStorageChecker$3;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/HtcStorageChecker$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080018

    new-instance v5, Lcom/htc/android/worldclock/HtcStorageChecker$2;

    invoke-direct {v5, p0}, Lcom/htc/android/worldclock/HtcStorageChecker$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 63
    .local v2, mDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 65
    .end local v0           #cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #mDialog:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method public static declared-synchronized isInternalStorageEnough()Z
    .locals 6

    .prologue
    .line 26
    const-class v3, Lcom/htc/android/worldclock/HtcStorageChecker;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkIternalMemory()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 27
    .local v0, size:J
    const-wide/32 v4, 0x100000

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 26
    .end local v0           #size:J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
