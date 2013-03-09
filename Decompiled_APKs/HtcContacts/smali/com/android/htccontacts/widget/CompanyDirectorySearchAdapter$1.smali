.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;
.super Landroid/os/Handler;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const v4, 0x7f0a0223

    .line 127
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$000(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 128
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const/4 v3, 0x7

    invoke-static {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$ErrorHandler;->getDetailErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->showMessage(ILjava/lang/String;)V
    invoke-static {v2, v4, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$ErrorHandler;->getDetailErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->showMessage(ILjava/lang/String;)V
    invoke-static {v2, v4, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 144
    .local v0, account:Landroid/accounts/Account;
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->runNetworkQuery(Landroid/accounts/Account;)V
    invoke-static {v2, v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$200(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V

    goto :goto_0

    .line 153
    .end local v0           #account:Landroid/accounts/Account;
    :pswitch_4
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const v3, 0x7f0a0320

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->showMessage(ILjava/lang/String;)V
    invoke-static {v2, v4, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_5
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const v3, 0x7f0a0321

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->showMessage(ILjava/lang/String;)V
    invoke-static {v2, v4, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_6
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const/4 v3, 0x1

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$302(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Z)Z

    .line 172
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 176
    :pswitch_7
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    const/4 v3, 0x0

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsNetworkSearching:Z
    invoke-static {v2, v3}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$302(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Z)Z

    .line 178
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchingProgressView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$400(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mSearchingProgressView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$400(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsDestroy:Z
    invoke-static {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$500(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$1;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
