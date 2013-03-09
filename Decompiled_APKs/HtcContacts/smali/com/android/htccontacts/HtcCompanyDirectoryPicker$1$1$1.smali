.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;->this$2:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;->this$2:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;

    iget-object v0, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v0, v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1$1;->this$2:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1$1;->this$1:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;

    iget-object v1, v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$1;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mChoosedAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$400(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Landroid/accounts/Account;

    move-result-object v1

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->startNetworkSearchProcedure(Landroid/accounts/Account;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$700(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V

    .line 143
    return-void
.end method
