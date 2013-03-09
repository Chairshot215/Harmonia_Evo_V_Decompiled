.class public Ldalvik/system/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static systemInSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/Zygote;->systemInSafeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 7

    move-object v1, p1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ldalvik/system/Zygote;->nativeExecShell(Ljava/lang/String;)V

    return-void
.end method

.method public static fork()I
    .locals 1

    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    invoke-static {}, Ldalvik/system/Zygote;->nativeFork()I

    move-result v0

    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    return v0
.end method

.method public static forkAndSpecialize(II[II[[I)I
    .locals 1

    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    invoke-static {p0, p1, p2, p3, p4}, Ldalvik/system/Zygote;->nativeForkAndSpecialize(II[II[[I)I

    move-result v0

    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    return v0
.end method

.method public static forkAndSpecialize(II[IZ[[I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 1

    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    invoke-static/range {p0 .. p8}, Ldalvik/system/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    return v0
.end method

.method public static forkSystemServer(II[IZ[[I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeExecShell(Ljava/lang/String;)V
.end method

.method public static native nativeFork()I
.end method

.method public static native nativeForkAndSpecialize(II[II[[I)I
.end method

.method public static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static postFork()V
    .locals 0

    invoke-static {}, Ljava/lang/Daemons;->start()V

    return-void
.end method

.method private static preFork()V
    .locals 0

    invoke-static {}, Ljava/lang/Daemons;->stop()V

    invoke-static {}, Ldalvik/system/Zygote;->waitUntilAllThreadsStopped()V

    return-void
.end method

.method private static waitUntilAllThreadsStopped()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    return-void
.end method
