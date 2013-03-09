.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final ANDROID_SHARED_MEDIA:Ljava/lang/String; = "com.android.process.media"

.field public static final BLUETOOTH_GID:I = 0x7d0

.field public static final COM_OPHONE_READER_UID:I = 0x2707

.field public static final FIRST_APPLICATION_UID:I = 0x2710

.field public static final GOOGLE_SHARED_APP_CONTENT:Ljava/lang/String; = "com.google.process.content"

.field public static final GRAPHICS_UID:I = 0x3eb

.field public static final HTC_ALBUM_UID:I = 0x270e

.field public static final HTC_EREADER_UID:I = 0x270b

.field public static final HTC_GALLERY_UID:I = 0x2708

.field public static final HTC_GREADER_UID:I = 0x270a

.field public static final HTC_MAIL_UID:I = 0x270d

.field public static final HTC_NOTES_UID:I = 0x270c

.field public static final HTC_ROSIE_LAUNCHER_UID:I = 0x270f

.field public static final HTC_SKETCHBOOK_UID:I = 0x2709

.field public static final IOSCHEDCLASS_BE:I = 0x2

.field public static final IOSCHEDCLASS_IDLE:I = 0x3

.field public static final IOSCHEDCLASS_NONE:I = 0x0

.field public static final IOSCHEDCLASS_RT:I = 0x1

.field public static final LAST_APPLICATION_UID:I = 0x1869f

.field private static final LOG_TAG:Ljava/lang/String; = "Process"

.field public static final LOG_UID:I = 0x3ef

.field public static final MEDIA_RW_GID:I = 0x3ff

.field public static final MEDIA_UID:I = 0x3f5

.field public static final NFC_UID:I = 0x403

.field public static final PHONE_UID:I = 0x3e9

.field public static final PROC_COMBINE:I = 0x100

.field public static final PROC_OUT_FLOAT:I = 0x4000

.field public static final PROC_OUT_LONG:I = 0x2000

.field public static final PROC_OUT_STRING:I = 0x1000

.field public static final PROC_PARENS:I = 0x200

.field public static final PROC_SPACE_TERM:I = 0x20

.field public static final PROC_TAB_TERM:I = 0x9

.field public static final PROC_TERM_MASK:I = 0xff

.field public static final PROC_ZERO_TERM:I = 0x0

.field public static final SDCARD_RW_GID:I = 0x3f7

.field public static final SHELL_UID:I = 0x7d0

.field public static final SIGNAL_KILL:I = 0x9

.field public static final SIGNAL_QUIT:I = 0x3

.field public static final SIGNAL_USR1:I = 0xa

.field public static final SMARTCARD_UID:I = 0x2703

.field public static final SYSTEM_UID:I = 0x3e8

.field public static final THREAD_GROUP_BG_NONINTERACTIVE:I = 0x1

.field public static final THREAD_GROUP_DEFAULT:I = 0x0

.field public static final THREAD_GROUP_FG_BOOST:I = 0x2

.field public static final THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final WIFI_UID:I = 0x3f2

.field static final ZYGOTE_RETRY_MILLIS:I = 0x1f4

.field private static final ZYGOTE_SOCKET:Ljava/lang/String; = "zygote"

.field static sPreviousZygoteOpenFailed:Z

.field static sZygoteInputStream:Ljava/io/DataInputStream;

.field static sZygoteSocket:Landroid/net/LocalSocket;

.field static sZygoteWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native dumpProcessStats(I)V
.end method

.method public static final native getElapsedCpuTime()J
.end method

.method public static final native getFreeMemory()J
.end method

.method public static final native getGidForName(Ljava/lang/String;)I
.end method

.method public static final getParentPid(I)I
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "PPid:"

    aput-object v2, v0, v4

    new-array v1, v3, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native getPid(Ljava/lang/String;)I
.end method

.method public static final native getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native getPpid(I)I
.end method

.method public static final native getPss(I)J
.end method

.method public static final native getRegionMemory(ILjava/lang/String;)J
.end method

.method public static final native getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native getUidForName(Ljava/lang/String;)I
.end method

.method public static final getUidForPid(I)I
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "Uid:"

    aput-object v2, v0, v4

    new-array v1, v3, [J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    aget-wide v2, v1, v4

    long-to-int v2, v2

    return v2
.end method

.method public static final native isDumpStateExist()Z
.end method

.method public static final killProcess(I)V
    .locals 7

    const-string v4, "Process"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killProcess, pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v4, "Process"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    invoke-static {p0, v4}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public static final killProcessQuiet(I)V
    .locals 7

    const-string v4, "Process"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "killProcessQuiet, pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const-string v4, "Process"

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    invoke-static {p0, v4}, Landroid/os/Process;->sendSignalQuiet(II)V

    return-void
.end method

.method public static final native myPid()I
.end method

.method public static final native myPpid()I
.end method

.method public static final native myTid()I
.end method

.method public static final native myUid()I
.end method

.method private static openZygoteSocketIfNeeded()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    sget-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    if-lez v2, :cond_0

    :try_start_0
    const-string v4, "Zygote"

    const-string v5, "Zygote not up yet, sleeping..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_2
    :try_start_1
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string/jumbo v6, "zygote"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    new-instance v4, Ljava/io/DataInputStream;

    sget-object v5, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v4, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x100

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    sput-object v4, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    const-string v4, "Zygote"

    const-string v5, "Process: zygote socket opened"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_4

    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/Process;->sPreviousZygoteOpenFailed:Z

    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "connect failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/16 v3, 0xa

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v4, :cond_3

    :try_start_2
    sget-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    const/4 v4, 0x0

    sput-object v4, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "Process"

    const-string v5, "I/O exception on close after exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    return-void

    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public static final native parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native sendSignal(II)V
.end method

.method public static final native sendSignalQuiet(II)V
.end method

.method public static final native setArgV0(Ljava/lang/String;)V
.end method

.method public static final native setCanSelfBackground(Z)V
.end method

.method public static final native setGid(I)I
.end method

.method public static final native setIoPriority(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setOomAdj(II)Z
.end method

.method public static final native setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setProcessGroup(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setThreadPriority(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native setUid(I)I
.end method

.method public static final start(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 3

    :try_start_0
    invoke-static/range {p0 .. p7}, Landroid/os/Process;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Process"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Starting VM process through Zygote failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static startViaZygote(Ljava/lang/String;Ljava/lang/String;II[III[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    const-class v10, Landroid/os/Process;

    monitor-enter v10

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "--runtime-init"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setuid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--setgid="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v9, p5, 0x10

    if-eqz v9, :cond_0

    const-string v9, "--enable-jni-logging"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v9, p5, 0x8

    if-eqz v9, :cond_1

    const-string v9, "--enable-safemode"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v9, p5, 0x1

    if-eqz v9, :cond_2

    const-string v9, "--enable-debugger"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v9, p5, 0x2

    if-eqz v9, :cond_3

    const-string v9, "--enable-checkjni"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v9, p5, 0x4

    if-eqz v9, :cond_4

    const-string v9, "--enable-assert"

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--target-sdk-version="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    array-length v9, v0

    if-lez v9, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--setgroups="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p4

    array-length v8, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_6

    if-eqz v4, :cond_5

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    aget v9, p4, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p1, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--nice-name="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p7, :cond_9

    move-object/from16 v3, p7

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_9

    aget-object v1, v3, v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v2}, Landroid/os/Process;->zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v9

    monitor-exit v10

    return-object v9

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public static final supportsProcesses()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method private static violatePolicy(Ljava/lang/String;II)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/StrictMode;->vmIllegalSetOomAdjEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set OOM adj, violation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "setOomAdj policy violation."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onVmPolicyViolated(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/os/StrictMode;->vmIllegalSetThreadPriorityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set thread priority too high, violation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set thread nice to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", violation!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onVmPolicyViolated(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static zygoteSendArgsAndGetResult(Ljava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->openZygoteSocketIfNeeded()V

    :try_start_0
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "embedded newlines not allowed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :try_start_1
    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    if-eqz v6, :cond_0

    sget-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    const/4 v6, 0x0

    sput-object v6, Landroid/os/Process;->sZygoteSocket:Landroid/net/LocalSocket;

    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v6, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    :try_start_2
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/os/Process;->sZygoteWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->flush()V

    new-instance v4, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v4}, Landroid/os/Process$ProcessStartResult;-><init>()V

    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    iget v6, v4, Landroid/os/Process$ProcessStartResult;->pid:I

    if-gez v6, :cond_3

    new-instance v6, Landroid/os/ZygoteStartFailedEx;

    const-string v7, "fork() failed"

    invoke-direct {v6, v7}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    sget-object v6, Landroid/os/Process;->sZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v4, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :catch_1
    move-exception v2

    const-string v6, "Process"

    const-string v7, "I/O exception on routine close"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
