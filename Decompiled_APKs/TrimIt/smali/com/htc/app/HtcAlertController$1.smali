.class Lcom/htc/app/HtcAlertController$1;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/app/HtcAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$000(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$100(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$100(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$700(Lcom/htc/app/HtcAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/htc/app/HtcAlertController;->access$600(Lcom/htc/app/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$200(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$300(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$300(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$400(Lcom/htc/app/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$500(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/app/HtcAlertController$1;->this$0:Lcom/htc/app/HtcAlertController;

    #getter for: Lcom/htc/app/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/app/HtcAlertController;->access$500(Lcom/htc/app/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
