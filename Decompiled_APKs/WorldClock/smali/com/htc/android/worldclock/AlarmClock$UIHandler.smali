.class Lcom/htc/android/worldclock/AlarmClock$UIHandler;
.super Landroid/os/Handler;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmClock;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/AlarmClock;Lcom/htc/android/worldclock/AlarmClock$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/AlarmClock$UIHandler;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 233
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    #getter for: Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmClock;->access$300(Lcom/htc/android/worldclock/AlarmClock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v1, v1, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->changeList(Ljava/util/ArrayList;)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;->this$0:Lcom/htc/android/worldclock/AlarmClock;

    iget-object v0, v0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method
