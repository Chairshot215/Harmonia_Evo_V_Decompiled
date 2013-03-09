.class Lcom/htc/widget/HtcAlertController$1;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/widget/HtcAlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$000(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$100(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$100(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 152
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$700(Lcom/htc/widget/HtcAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/htc/widget/HtcAlertController;->access$600(Lcom/htc/widget/HtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$200(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$300(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$300(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$400(Lcom/htc/widget/HtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$500(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/htc/widget/HtcAlertController$1;->this$0:Lcom/htc/widget/HtcAlertController;

    #getter for: Lcom/htc/widget/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/htc/widget/HtcAlertController;->access$500(Lcom/htc/widget/HtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
