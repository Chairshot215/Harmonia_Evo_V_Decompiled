.class Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkSearchProcessor"
.end annotation


# instance fields
.field counts:I

.field final dismissDialog:Ljava/lang/Runnable;

.field isCancel:Z

.field volatile isProcessing:Z

.field mPickerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/HtcCompanyDirectoryPicker;",
            ">;"
        }
    .end annotation
.end field

.field final reeabletimeout:I

.field uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "h"

    .prologue
    .line 659
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->reeabletimeout:I

    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->counts:I

    .line 698
    new-instance v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor$1;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->dismissDialog:Ljava/lang/Runnable;

    .line 660
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->mPickerActivity:Ljava/lang/ref/WeakReference;

    .line 661
    iput-object p2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->uiHandler:Landroid/os/Handler;

    .line 662
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isCancel:Z

    .line 670
    iget-object v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->dismissDialog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    return-void
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isCancel:Z

    return v0
.end method

.method public isProcess()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcessing:Z

    return v0
.end method

.method public process(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 710
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->mPickerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    .line 711
    .local v0, activity:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isCancel:Z

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcessing:Z

    .line 718
    #calls: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->query(Landroid/accounts/Account;)V
    invoke-static {v0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$2100(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;Landroid/accounts/Account;)V

    .line 719
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->uiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->dismissDialog:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcessing:Z

    goto :goto_0
.end method

.method public declared-synchronized requestSearch(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->mPickerActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;

    .line 680
    .local v0, activity:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isCancel:Z

    if-nez v1, :cond_0

    #getter for: Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->mIsDestroy:Z
    invoke-static {v0}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker;->access$1800(Lcom/android/htccontacts/HtcCompanyDirectoryPicker;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 684
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcessing:Z

    if-nez v1, :cond_2

    .line 689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;->isProcessing:Z

    .line 690
    new-instance v1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;

    invoke-direct {v1, p0, p1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;-><init>(Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchProcessor;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$NetworkSearchThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 679
    .end local v0           #activity:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 693
    .restart local v0       #activity:Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
    :cond_2
    :try_start_2
    const-string v1, "HtcCompanyDirectoryPicker"

    const-string v2, "it is network quering, and ignore this request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
