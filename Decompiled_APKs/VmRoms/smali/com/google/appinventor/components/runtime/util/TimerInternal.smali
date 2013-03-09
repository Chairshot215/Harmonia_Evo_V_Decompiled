.class public final Lcom/google/appinventor/components/runtime/util/TimerInternal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private component:Lcom/google/appinventor/components/runtime/AlarmHandler;

.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private interval:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    iput p3, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    if-eqz p2, :cond_0

    int-to-long v0, p3

    invoke-virtual {p4, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Enabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public Enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    return v0
.end method

.method public Interval()I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    return v0
.end method

.method public Interval(I)V
    .locals 3

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->component:Lcom/google/appinventor/components/runtime/AlarmHandler;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/AlarmHandler;->alarm()V

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/TimerInternal;->interval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
