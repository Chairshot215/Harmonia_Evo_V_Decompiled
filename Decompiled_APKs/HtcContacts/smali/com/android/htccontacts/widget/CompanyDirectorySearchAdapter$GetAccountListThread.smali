.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;
.super Ljava/lang/Thread;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetAccountListThread"
.end annotation


# instance fields
.field adapterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;->adapterRef:Ljava/lang/ref/WeakReference;

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$GetAccountListThread;->adapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    .line 197
    .local v0, adapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$600(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Lcom/htc/android/pim/eas/IEASSvc;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    :try_start_0
    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mEASSvc:Lcom/htc/android/pim/eas/IEASSvc;
    invoke-static {v0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$600(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Lcom/htc/android/pim/eas/IEASSvc;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/pim/eas/IEASSvc;->getAccountList()[Landroid/accounts/Account;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v0, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$702(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;[Landroid/accounts/Account;)[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "CompanyDirectorySearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
