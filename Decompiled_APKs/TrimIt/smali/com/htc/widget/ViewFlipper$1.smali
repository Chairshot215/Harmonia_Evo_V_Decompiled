.class Lcom/htc/widget/ViewFlipper$1;
.super Landroid/os/Handler;
.source "ViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/htc/widget/ViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/widget/ViewFlipper$1;->this$0:Lcom/htc/widget/ViewFlipper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/widget/ViewFlipper$1;->this$0:Lcom/htc/widget/ViewFlipper;

    #getter for: Lcom/htc/widget/ViewFlipper;->mKeepFlipping:Z
    invoke-static {v0}, Lcom/htc/widget/ViewFlipper;->access$000(Lcom/htc/widget/ViewFlipper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/widget/ViewFlipper$1;->this$0:Lcom/htc/widget/ViewFlipper;

    invoke-virtual {v0}, Lcom/htc/widget/ViewFlipper;->showNext()V

    .line 80
    invoke-virtual {p0, v1}, Lcom/htc/widget/ViewFlipper$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/htc/widget/ViewFlipper$1;->this$0:Lcom/htc/widget/ViewFlipper;

    #getter for: Lcom/htc/widget/ViewFlipper;->mFlipInterval:I
    invoke-static {v0}, Lcom/htc/widget/ViewFlipper;->access$100(Lcom/htc/widget/ViewFlipper;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/widget/ViewFlipper$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    :cond_0
    return-void
.end method
