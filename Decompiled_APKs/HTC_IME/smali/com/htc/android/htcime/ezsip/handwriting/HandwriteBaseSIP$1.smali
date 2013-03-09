.class Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;
.super Landroid/os/Handler;
.source "HandwriteBaseSIP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)V
    .locals 0
    .parameter

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1521
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1532
    :goto_0
    return-void

    .line 1523
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    #getter for: Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->m_bIsSipVisible:Z
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->access$000(Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->hideHandwritePanel()V

    .line 1525
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->showHandwritePanel()V

    goto :goto_0

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP$1;->this$0:Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
