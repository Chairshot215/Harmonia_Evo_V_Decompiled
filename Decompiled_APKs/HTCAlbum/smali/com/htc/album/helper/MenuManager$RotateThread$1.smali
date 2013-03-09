.class Lcom/htc/album/helper/MenuManager$RotateThread$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$RotateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$RotateThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V
    .locals 0
    .parameter

    .prologue
    .line 5312
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5314
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1700(Lcom/htc/album/helper/MenuManager$RotateThread;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1602(Lcom/htc/album/helper/MenuManager$RotateThread;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 5315
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1700(Lcom/htc/album/helper/MenuManager$RotateThread;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5316
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 5317
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 5318
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$1;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 5319
    return-void
.end method
