.class Lcom/htc/android/htcime/ezsip/trace/Trace$H;
.super Landroid/os/Handler;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/trace/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/trace/Trace;)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 862
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 864
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    #getter for: Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->access$100(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    #getter for: Lcom/htc/android/htcime/ezsip/trace/Trace;->mTraceMode:Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->access$100(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Lcom/htc/android/htcime/ezsip/trace/Trace$TraceMode;->state:I

    goto :goto_0

    .line 862
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method setAutoCommitTimer()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 855
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->removeMessages(I)V

    .line 856
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->this$0:Lcom/htc/android/htcime/ezsip/trace/Trace;

    #getter for: Lcom/htc/android/htcime/ezsip/trace/Trace;->mConfig:Lcom/htc/android/htcime/ezsip/trace/TraceConfig;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/trace/Trace;->access$200(Lcom/htc/android/htcime/ezsip/trace/Trace;)Lcom/htc/android/htcime/ezsip/trace/TraceConfig;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/ezsip/trace/TraceConfig;->mAutoCommitWaitTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/android/htcime/ezsip/trace/Trace$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 858
    return-void
.end method
