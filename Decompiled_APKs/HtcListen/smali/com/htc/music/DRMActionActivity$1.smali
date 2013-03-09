.class Lcom/htc/music/DRMActionActivity$1;
.super Landroid/os/Handler;
.source "DRMActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    const/4 v3, 0x1

    #setter for: Lcom/htc/music/DRMActionActivity;->mShowToast:Z
    invoke-static {v2, v3}, Lcom/htc/music/DRMActionActivity;->access$202(Lcom/htc/music/DRMActionActivity;Z)Z

    new-instance v0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;-><init>(Lcom/htc/music/DRMActionActivity;Lcom/htc/music/DRMActionActivity$1;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INIT message: Updated Thread start..."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpdateInfo message: called"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->actionArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$400(Lcom/htc/music/DRMActionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/htc/music/DRMActionActivity;->UpdateInfo(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cancel progress dialog."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$1;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/music/DRMActionActivity;->access$500(Lcom/htc/music/DRMActionActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
