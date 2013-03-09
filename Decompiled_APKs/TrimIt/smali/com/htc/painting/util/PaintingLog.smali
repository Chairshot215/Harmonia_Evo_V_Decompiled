.class public Lcom/htc/painting/util/PaintingLog;
.super Ljava/lang/Object;
.source "PaintingLog.java"


# static fields
.field private static enableLogd:Z

.field private static enableLoge:Z

.field private static enableLogi:Z

.field private static enableLogv:Z

.field private static enableLogw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 12
    sput-boolean v1, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    .line 13
    sput-boolean v1, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    .line 14
    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    .line 15
    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    .line 16
    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 23
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"
    .parameter "e"

    .prologue
    .line 41
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 27
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "comment"

    .prologue
    .line 32
    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method
