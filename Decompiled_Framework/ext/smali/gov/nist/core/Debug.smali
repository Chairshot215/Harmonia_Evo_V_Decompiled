.class public Lgov/nist/core/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static debug:Z

.field public static parserDebug:Z

.field static stackLogger:Lgov/nist/core/StackLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/core/Debug;->debug:Z

    sput-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    invoke-interface {v0, p0, p1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .locals 2

    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    const-string v1, "Stack Trace"

    invoke-interface {v0, v1, p0}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lgov/nist/core/Debug;->parserDebug:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lgov/nist/core/Debug;->debug:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setStackLogger(Lgov/nist/core/StackLogger;)V
    .locals 0

    sput-object p0, Lgov/nist/core/Debug;->stackLogger:Lgov/nist/core/StackLogger;

    return-void
.end method
