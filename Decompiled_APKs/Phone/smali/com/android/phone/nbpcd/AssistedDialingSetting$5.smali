.class Lcom/android/phone/nbpcd/AssistedDialingSetting$5;
.super Landroid/os/Handler;
.source "AssistedDialingSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/AssistedDialingSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 601
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 603
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->resetDatabase()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$500(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    goto :goto_0

    .line 607
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->updateAreaCodeByMdn()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$600(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    .line 609
    const-string v0, "AssistedDialingSetting"

    const-string v1, "updata Area cod BY mdn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->initList()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$700(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    .line 612
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->getListArray()Ljava/util/List;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$800(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mList:Ljava/util/List;

    .line 613
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->prepareUI()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$900(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    goto :goto_0

    .line 616
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->initSpinner()V
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1000(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V

    goto :goto_0

    .line 619
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1100(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mResetDatabaseDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1100(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto :goto_0

    .line 624
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 625
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 629
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V
    invoke-static {v0, v3}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Z)V

    goto/16 :goto_0

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$5;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->change2EditMode(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Z)V

    goto/16 :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
