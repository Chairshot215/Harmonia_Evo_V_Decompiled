.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompanySearchOnAccountsUpdateListener"
.end annotation


# instance fields
.field outAdapterRef:Ljava/lang/ref/WeakReference;
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
    .line 1241
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1242
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;->outAdapterRef:Ljava/lang/ref/WeakReference;

    .line 1244
    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2
    .parameter "accounts"

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$CompanySearchOnAccountsUpdateListener;->outAdapterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    .line 1249
    .local v0, adapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
    if-eqz v0, :cond_0

    .line 1250
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->checkAccountsUpdated([Landroid/accounts/Account;)V

    .line 1252
    :cond_0
    return-void
.end method
