.class public Lcom/htc/photowidget3d/grid/util/HtcLog;
.super Ljava/lang/Object;
.source "HtcLog.java"


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/grid/util/HtcLog;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log_d(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 34
    return-void
.end method

.method public static log_e(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 50
    return-void
.end method

.method public static log_i(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 26
    return-void
.end method

.method public static log_v(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 42
    return-void
.end method

.method public static log_w(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 18
    return-void
.end method
