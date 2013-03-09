.class Lcom/android/camera/rotate/RotateHtcAlertController$1;
.super Ljava/lang/Object;
.source "RotateHtcAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/rotate/RotateHtcAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/rotate/RotateHtcAlertController;


# direct methods
.method constructor <init>(Lcom/android/camera/rotate/RotateHtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$000(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$100(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$100(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$700(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$600(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$200(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$300(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$300(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$400(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$500(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/rotate/RotateHtcAlertController$1;->this$0:Lcom/android/camera/rotate/RotateHtcAlertController;

    #getter for: Lcom/android/camera/rotate/RotateHtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/camera/rotate/RotateHtcAlertController;->access$500(Lcom/android/camera/rotate/RotateHtcAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
