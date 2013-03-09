.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->query(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;->val$account:Landroid/accounts/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 998
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mRefActivity:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$000(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 999
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$4;->val$account:Landroid/accounts/Account;

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->buildCompanyDirectoryCursor(Landroid/accounts/Account;)V
    invoke-static {v1, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$1100(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V

    .line 1002
    :cond_0
    return-void
.end method
