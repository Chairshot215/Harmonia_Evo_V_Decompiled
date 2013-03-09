.class Lcom/android/mms/ui/MessageTabSwitchActivity$4;
.super Landroid/database/ContentObserver;
.source "MessageTabSwitchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTabSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTabSwitchActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfUpdate"

    .prologue
    .line 518
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->getCurrentTab()I

    move-result v0

    .line 520
    .local v0, tab:I
    const-string v1, "MessageTabSwitchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentObserver:onChange foreground> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-boolean v3, v3, Lcom/android/mms/ui/MessageTabSwitchActivity;->mIsForeground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v1, "MessageTabSwitchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tab> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 533
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->mIsForeground:Z

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageTabSwitchActivity;->mCountDirty:Z

    goto :goto_0

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageTabSwitchActivity$4;->this$0:Lcom/android/mms/ui/MessageTabSwitchActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTabSwitchActivity;->postQueryRefreshUnreadCounts()V

    goto :goto_0
.end method
