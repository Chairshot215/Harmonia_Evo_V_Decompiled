.class Lcom/htc/android/worldclock/Stopwatch$1;
.super Landroid/os/Handler;
.source "Stopwatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/Stopwatch;->initNonUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Stopwatch;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Stopwatch;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/htc/android/worldclock/Stopwatch$1;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/worldclock/Stopwatch$1;->this$0:Lcom/htc/android/worldclock/Stopwatch;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, v3

    #calls: Lcom/htc/android/worldclock/Stopwatch;->addLapData(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/worldclock/Stopwatch;->access$000(Lcom/htc/android/worldclock/Stopwatch;JJ)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
    .end packed-switch
.end method
