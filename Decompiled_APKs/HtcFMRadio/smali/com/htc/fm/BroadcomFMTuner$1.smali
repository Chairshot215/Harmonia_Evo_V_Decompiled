.class Lcom/htc/fm/BroadcomFMTuner$1;
.super Landroid/os/Handler;
.source "BroadcomFMTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/BroadcomFMTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/BroadcomFMTuner;


# direct methods
.method constructor <init>(Lcom/htc/fm/BroadcomFMTuner;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/htc/fm/BroadcomFMTuner$1;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 176
    :pswitch_0
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$1;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #getter for: Lcom/htc/fm/BroadcomFMTuner;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/fm/BroadcomFMTuner;->access$000(Lcom/htc/fm/BroadcomFMTuner;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retry turn-on because FmRecevier server is not ready yet "

    invoke-static {v0, v1}, Lcom/htc/fm/FMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/htc/fm/BroadcomFMTuner$1;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    iget-object v1, p0, Lcom/htc/fm/BroadcomFMTuner$1;->this$0:Lcom/htc/fm/BroadcomFMTuner;

    #getter for: Lcom/htc/fm/BroadcomFMTuner;->mFreq:I
    invoke-static {v1}, Lcom/htc/fm/BroadcomFMTuner;->access$100(Lcom/htc/fm/BroadcomFMTuner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fm/BroadcomFMTuner;->turnOn(I)Z

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
