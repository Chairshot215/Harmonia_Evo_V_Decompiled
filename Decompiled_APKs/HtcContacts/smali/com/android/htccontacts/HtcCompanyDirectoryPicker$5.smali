.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->query(Landroid/accounts/Account;)V
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
    .line 637
    iput-object p1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$5;->this$0:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    const/4 v1, 0x1

    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->refreshCompanyDirectoryList(Z)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1900(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Z)V

    goto :goto_0
.end method
