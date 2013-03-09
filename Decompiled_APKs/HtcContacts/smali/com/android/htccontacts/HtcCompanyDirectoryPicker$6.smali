.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 742
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$6;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v1

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->startNetworkSearchProcedure(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V

    .line 747
    :cond_0
    return-void
.end method
