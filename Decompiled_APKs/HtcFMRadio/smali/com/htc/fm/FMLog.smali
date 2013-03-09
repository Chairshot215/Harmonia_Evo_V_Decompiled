.class public Lcom/htc/fm/FMLog;
.super Ljava/lang/Object;
.source "FMLog.java"


# static fields
.field public static final ATS_LOG_SUFFIX_COMPLETE:Ljava/lang/String; = "complete"

.field public static final ATS_LOG_SUFFIX_LANUCH:Ljava/lang/String; = "launch"

.field public static final ATS_LOG_SUFFIX_START:Ljava/lang/String; = "start"

.field public static final ATS_LOG_SUFFIX_STOP:Ljava/lang/String; = "stop"

.field public static mIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atsLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "functionName"
    .parameter "suffix"

    .prologue
    .line 59
    const-string v0, "MASD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ATS][com.htc.fm]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 45
    sget-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static turnOffDebug()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    .line 18
    return-void
.end method

.method public static turnOnDebug()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    .line 14
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 39
    sget-boolean v0, Lcom/htc/fm/FMLog;->mIsDebug:Z

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
