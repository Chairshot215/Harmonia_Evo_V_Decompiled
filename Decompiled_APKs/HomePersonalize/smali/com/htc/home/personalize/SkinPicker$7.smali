.class Lcom/htc/home/personalize/SkinPicker$7;
.super Landroid/os/Handler;
.source "SkinPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/SkinPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/SkinPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/SkinPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 890
    const-string v0, "SkinPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 893
    :sswitch_0
    const-string v0, "SkinPicker"

    const-string v1, "ONLINESKIN_EVENT_DOWNLOADSTATUSCHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->updateSkinList()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1200(Lcom/htc/home/personalize/SkinPicker;)V

    .line 895
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1100(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0

    .line 898
    :sswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->updateSkinList()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1200(Lcom/htc/home/personalize/SkinPicker;)V

    .line 899
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->dismissDeletingCursor()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1300(Lcom/htc/home/personalize/SkinPicker;)V

    .line 900
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->UpdateFocusInfo()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1100(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0

    .line 903
    :sswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1400(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1400(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 905
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->skinChangeUserLog()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1500(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0

    .line 909
    :sswitch_3
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1400(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #getter for: Lcom/htc/home/personalize/SkinPicker;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1400(Lcom/htc/home/personalize/SkinPicker;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/SkinPicker$7;->this$0:Lcom/htc/home/personalize/SkinPicker;

    #calls: Lcom/htc/home/personalize/SkinPicker;->alertNoEnoughStorage()V
    invoke-static {v0}, Lcom/htc/home/personalize/SkinPicker;->access$1600(Lcom/htc/home/personalize/SkinPicker;)V

    goto :goto_0

    .line 891
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x8c -> :sswitch_1
        0x8d -> :sswitch_2
        0x8f -> :sswitch_3
    .end sparse-switch
.end method
