.class public Lcom/htc/Weather/util/LOG;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/Weather/util/LOG;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/Weather/util/LOG;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/Weather/util/LOG;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 11
    sget-boolean v0, Lcom/htc/Weather/util/LOG;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 12
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "Info"

    .prologue
    .line 16
    sget-boolean v0, Lcom/htc/Weather/util/LOG;->DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method
