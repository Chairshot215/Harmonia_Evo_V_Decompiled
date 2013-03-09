.class public Lcom/google/android/talk/NetworkProgressMonitor;
.super Ljava/lang/Object;
.source "NetworkProgressMonitor.java"

# interfaces
.implements Lcom/google/android/talk/IProgressMonitor;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDoneRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "activity"
    .parameter "doneRunnable"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method


# virtual methods
.method public beginTask(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "name"
    .parameter "totalWork"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 40
    return-void
.end method

.method public done()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mDoneRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/NetworkProgressMonitor;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 50
    return-void
.end method
