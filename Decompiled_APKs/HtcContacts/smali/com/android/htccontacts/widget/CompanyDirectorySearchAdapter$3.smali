.class Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->createAccountSelectionDialog(Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

.field final synthetic val$exchangeAccounts:[Landroid/accounts/Account;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    iput-object p2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->val$exchangeAccounts:[Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->val$searchString:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 668
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->val$exchangeAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->this$0:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->val$exchangeAccounts:[Landroid/accounts/Account;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$3;->val$searchString:Ljava/lang/String;

    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->startNetworkSearchProcedure(Landroid/accounts/Account;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$1000(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 672
    :cond_0
    return-void
.end method
