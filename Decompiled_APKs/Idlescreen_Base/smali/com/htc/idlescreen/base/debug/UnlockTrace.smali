.class public Lcom/htc/idlescreen/base/debug/UnlockTrace;
.super Ljava/lang/Object;
.source "UnlockTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/debug/UnlockTrace$1;,
        Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;
    }
.end annotation


# static fields
.field private static final DEGUG:Z = false

.field private static final LOG_PATH:Ljava/lang/String; = "/data/misc/idlescreen.trace"

.field private static final mLock:Ljava/lang/Object;

.field private static final sStopRunnable:Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/base/debug/UnlockTrace;->mLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;-><init>(Lcom/htc/idlescreen/base/debug/UnlockTrace$1;)V

    sput-object v0, Lcom/htc/idlescreen/base/debug/UnlockTrace;->sStopRunnable:Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static start()V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public static start(JLandroid/os/Handler;)V
    .locals 0
    .parameter "ms"
    .parameter "handle"

    .prologue
    .line 20
    return-void
.end method

.method public static stop()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
