.class public Lcom/htc/sunny2/common/Timer;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/Timer$Listener;
    }
.end annotation


# static fields
.field public static ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/common/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private byFrame:Z

.field private frameDuration:I

.field private listener:Lcom/htc/sunny2/common/Timer$Listener;

.field private timeMillisDuration:J

.field private timerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "Timer"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iput v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    iput v1, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/common/Timer;
    .locals 2

    sget-object v1, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/Timer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/common/Timer;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/common/Timer;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/htc/sunny2/common/Timer;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static Recycle(Lcom/htc/sunny2/common/Timer;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->free()V

    sget-object v0, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iput v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    iput v1, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    return-void
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v0, v1, p1}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerCancelledIRT(ILcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerIRT(I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    iget-wide v3, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerIRT(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemovedIRT()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->clear()V

    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->free()V

    invoke-static {p0}, Lcom/htc/sunny2/common/Timer;->Recycle(Lcom/htc/sunny2/common/Timer;)V

    return-void
.end method

.method public setupByFrame(Lcom/htc/sunny2/common/Timer$Listener;II)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iput p2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    iput p3, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    return-void
.end method

.method public setupByTimeMillis(Lcom/htc/sunny2/common/Timer$Listener;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iput p2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    iput-wide p3, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    return-void
.end method
