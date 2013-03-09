.class final Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;
.super Ljava/lang/Object;
.source "CompanyDirectorySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkSearchProcessor"
.end annotation


# instance fields
.field private final RE_ENABLE_TIMEOUT:I

.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsProcessing:Z

.field private mRefAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;

.field private timeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "adapter"
    .parameter "h"

    .prologue
    .line 1059
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->RE_ENABLE_TIMEOUT:I

    .line 1052
    new-instance v0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor$1;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->timeout:Ljava/lang/Runnable;

    .line 1060
    iput-object p3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    .line 1061
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1062
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mRefAdapter:Ljava/lang/ref/WeakReference;

    .line 1064
    return-void
.end method

.method static synthetic access$1202(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z

    return p1
.end method


# virtual methods
.method public isProcess()Z
    .locals 1

    .prologue
    .line 1067
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z

    return v0
.end method

.method public declared-synchronized process(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mRefAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    .line 1092
    .local v1, adapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1093
    .local v0, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    #getter for: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->mIsDestroy:Z
    invoke-static {v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$500(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1099
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z

    .line 1101
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0x5008

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    #calls: Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->query(Landroid/accounts/Account;)V
    invoke-static {v1, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->access$1300(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;Landroid/accounts/Account;)V

    .line 1109
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z

    .line 1112
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0x5008

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1113
    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    const/16 v3, 0x5009

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1091
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public requestSearch(Landroid/accounts/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1075
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mIsProcessing:Z

    if-nez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->mUiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;->timeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1081
    new-instance v1, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;

    invoke-direct {v1, p0, p1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;-><init>(Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchProcessor;Landroid/accounts/Account;)V

    invoke-virtual {v1}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter$NetworkSearchThread;->start()V

    goto :goto_0
.end method
