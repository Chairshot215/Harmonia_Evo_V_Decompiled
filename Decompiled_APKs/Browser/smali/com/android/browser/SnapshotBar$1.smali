.class Lcom/android/browser/SnapshotBar$1;
.super Landroid/os/Handler;
.source "SnapshotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SnapshotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SnapshotBar;


# direct methods
.method constructor <init>(Lcom/android/browser/SnapshotBar;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/browser/SnapshotBar$1;->this$0:Lcom/android/browser/SnapshotBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/browser/SnapshotBar$1;->this$0:Lcom/android/browser/SnapshotBar;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/SnapshotBar;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/browser/SnapshotBar;->access$002(Lcom/android/browser/SnapshotBar;Z)Z

    .line 78
    iget-object v0, p0, Lcom/android/browser/SnapshotBar$1;->this$0:Lcom/android/browser/SnapshotBar;

    #calls: Lcom/android/browser/SnapshotBar;->showTitle()V
    invoke-static {v0}, Lcom/android/browser/SnapshotBar;->access$100(Lcom/android/browser/SnapshotBar;)V

    .line 79
    iget-object v0, p0, Lcom/android/browser/SnapshotBar$1;->this$0:Lcom/android/browser/SnapshotBar;

    #getter for: Lcom/android/browser/SnapshotBar;->mTitleBar:Lcom/android/browser/TitleBar;
    invoke-static {v0}, Lcom/android/browser/SnapshotBar;->access$200(Lcom/android/browser/SnapshotBar;)Lcom/android/browser/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getUi()Lcom/android/browser/BaseUi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->showTitleBarForDuration()V

    .line 81
    :cond_0
    return-void
.end method
