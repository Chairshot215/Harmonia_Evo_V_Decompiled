.class Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;
.super Landroid/os/Handler;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProviderHandler"
.end annotation


# instance fields
.field private countdowntimer:Landroid/os/CountDownTimer;

.field private lastEventChanged:J

.field private syncObject:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    .line 496
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->lastEventChanged:J

    .line 500
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->syncObject:Ljava/lang/Object;

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->countdowntimer:Landroid/os/CountDownTimer;

    .line 497
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->sendEventChanged()V

    return-void
.end method

.method private sendEventChanged()V
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v0, v1, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 504
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.calendar.event_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    const-string v1, "CalendarProvider2"

    const-string v2, "ACTION_EVENT_CHANGED"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x1f4

    .line 513
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v6, v0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    .line 514
    .local v6, context:Landroid/content/Context;
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 516
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->doSendUpdateNotification()V
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 524
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->countdowntimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler$1;

    const-wide/16 v2, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;JJ)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->countdowntimer:Landroid/os/CountDownTimer;

    .line 536
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 538
    .local v7, currentEventChanged:J
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-wide v2, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->lastEventChanged:J

    sub-long v2, v7, v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 540
    iput-wide v7, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->lastEventChanged:J

    .line 541
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->sendEventChanged()V

    .line 548
    :goto_0
    monitor-exit v1

    .line 550
    .end local v7           #currentEventChanged:J
    :cond_1
    return-void

    .line 544
    .restart local v7       #currentEventChanged:J
    :cond_2
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->countdowntimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 545
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$ProviderHandler;->countdowntimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
