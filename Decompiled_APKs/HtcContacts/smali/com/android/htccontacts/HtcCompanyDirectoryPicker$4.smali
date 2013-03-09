.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;
.super Landroid/os/Handler;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0a0223

    .line 396
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 398
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_500_SERVER_ERROR:I

    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->getDetailErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->showMessage(ILjava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;ILjava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    sget v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->ERROR_SYSTEM_SERVICE_ERROR:I

    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ErrorMessager;->getDetailErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->showMessage(ILjava/lang/String;)V
    invoke-static {v1, v3, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;ILjava/lang/String;)V

    goto :goto_0

    .line 411
    :pswitch_3
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 415
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->runNetworkQuery(Landroid/accounts/Account;)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V

    goto :goto_0

    .line 420
    .end local v0           #account:Landroid/accounts/Account;
    :pswitch_4
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->createAccountSelectionDialog()Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1202(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 422
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->manageDialog(Landroid/app/Dialog;)V

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$4;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoiceAccountDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1200(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
