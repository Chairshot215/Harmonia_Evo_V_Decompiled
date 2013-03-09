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
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    sput-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogd:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLoge:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogi:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogv:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/htc/painting/util/PaintingLog;->enableLogw:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
