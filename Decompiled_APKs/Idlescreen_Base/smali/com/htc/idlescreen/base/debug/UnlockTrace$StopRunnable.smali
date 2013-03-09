.class Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;
.super Ljava/lang/Object;
.source "UnlockTrace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/debug/UnlockTrace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopRunnable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/debug/UnlockTrace$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/idlescreen/base/debug/UnlockTrace$StopRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/idlescreen/base/debug/UnlockTrace;->stop()V

    .line 34
    return-void
.end method
