.class Lcom/htc/dialog/HtcAlertController$1;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dialog/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$000(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$700(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/htc/dialog/HtcAlertController;->access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$200(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$400(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$1;->this$0:Lcom/htc/dialog/HtcAlertController;

    #getter for: Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
