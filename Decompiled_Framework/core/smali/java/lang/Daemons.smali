.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$1;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;,
        Ljava/lang/Daemons$Daemon;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_MILLIS:J = 0x2710L

.field private static final NANOS_PER_MILLI:I = 0xf4240


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/Daemons$Daemon;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Daemons;->dumpNativeStack(Ljava/lang/Daemons$Daemon;)V

    return-void
.end method

.method private static dumpNativeStack(Ljava/lang/Daemons$Daemon;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump native stack from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2}, Llibcore/io/Os;->getpid()I

    move-result v1

    :try_start_0
    const-string v2, "inform debugger to attched"

    invoke-static {v2}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v3, 0x6

    invoke-interface {v2, v1, v3}, Llibcore/io/Os;->kill(II)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    const-string v2, "inform debugger to dump"

    invoke-static {v2}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v3, 0x6

    invoke-interface {v2, v1, v3}, Llibcore/io/Os;->kill(II)V
    :try_end_2
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v2, 0x7d0

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to dump nativ stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static start()V
    .locals 1

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->start()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->start()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->start()V

    return-void
.end method

.method public static stop()V
    .locals 1

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->stop()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->stop()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->stop()V

    return-void
.end method
