.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;
.super Ljava/lang/Thread;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v3, v3, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$000(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Lcom/htc/android/pim/eas/IEASSvc;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/pim/eas/IEASSvc;->getAccountList()[Landroid/accounts/Account;

    move-result-object v3

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v2, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$302(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;[Landroid/accounts/Account;)[Landroid/accounts/Account;

    .line 132
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v3, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v3, v3, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v2, v3}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$402(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 134
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-le v2, v5, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x5007

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v5, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;)V

    .line 145
    .local v1, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v2, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$500(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v1           #r:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "HtcCompanyDirectoryPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
