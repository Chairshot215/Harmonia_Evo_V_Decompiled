.class Lcom/htc/android/worldclock/Stopwatch$2;
.super Landroid/os/Handler;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Stopwatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 125
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/worldclock/Stopwatch;->updateImageSrc(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$100(Lcom/htc/android/worldclock/Stopwatch;I)V

    goto :goto_0

    .line 131
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/htc/android/worldclock/Stopwatch;->updateLapImageSrc(I)V
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Stopwatch;->access$200(Lcom/htc/android/worldclock/Stopwatch;I)V

    goto :goto_0

    .line 134
    :sswitch_2
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-static {v0}, Lcom/htc/android/worldclock/StopwatchUtils;->LoadStopwatchLapData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    .line 136
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    sget-object v1, Lcom/htc/android/worldclock/Stopwatch;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->changeList(Ljava/util/ArrayList;)V

    .line 137
    sget-object v0, Lcom/htc/android/worldclock/Stopwatch;->mStopwatchAdapter:Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Stopwatch$StopwatchAdapter;->notifyDataSetChanged()V

    .line 139
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v0, v0, Lcom/htc/android/worldclock/Stopwatch;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/android/worldclock/Stopwatch$2;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget-object v1, v1, Lcom/htc/android/worldclock/Stopwatch;->lapData:Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;

    iget v1, v1, Lcom/htc/android/worldclock/StopwatchUtils$StopwatchLapData;->lap_id:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x7c -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method
