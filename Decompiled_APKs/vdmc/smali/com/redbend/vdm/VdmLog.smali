.class public Lcom/redbend/vdm/VdmLog;
.super Ljava/lang/Object;
.source "VdmLog.java"


# static fields
.field public static isDefaultLogger:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 34
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->INFO:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 40
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->INFO:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 76
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->ERROR:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 82
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->ERROR:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->NOTICE:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 54
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->NOTICE:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 20
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->DEBUG:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 26
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->DEBUG:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static vdmTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tag"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 62
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 68
    sget-boolean v0, Lcom/redbend/vdm/VdmLog;->isDefaultLogger:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/redbend/vdm/VdmLog;->vdmTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/redbend/vdm/VdmLogLevel;->WARNING:Lcom/redbend/vdm/VdmLogLevel;

    invoke-static {v0, p1}, Lcom/redbend/vdm/PLLoggerProxy;->logMsg(Lcom/redbend/vdm/VdmLogLevel;Ljava/lang/String;)V

    goto :goto_0
.end method
