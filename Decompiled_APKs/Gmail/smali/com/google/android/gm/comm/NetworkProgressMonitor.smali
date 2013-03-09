.class public Lcom/google/android/gm/comm/NetworkProgressMonitor;
.super Ljava/lang/Object;
.source "NetworkProgressMonitor.java"

# interfaces
.implements Lcom/google/android/gm/IProgressMonitor;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDoneRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "activity"
    .parameter "doneRunnable"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    .line 22
    iput-object p2, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    .line 23
    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 28
    return-void
.end method

.method public done()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/comm/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 38
    return-void
.end method
