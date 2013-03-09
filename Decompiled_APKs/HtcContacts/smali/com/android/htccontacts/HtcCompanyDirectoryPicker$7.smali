.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->createAccountSelectionDialog()Landroid/app/Dialog;
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
    .line 1076
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1078
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mExchangeAccounts:[Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$300(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, p2

    #setter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$402(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 1080
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsResultMode:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$600(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$7;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v1

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->startNetworkSearchProcedure(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V

    .line 1084
    :cond_0
    return-void
.end method
