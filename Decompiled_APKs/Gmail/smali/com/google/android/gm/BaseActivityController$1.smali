.class Lcom/google/android/gm/BaseActivityController$1;
.super Ljava/lang/Object;
.source "BaseActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/BaseActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BaseActivityController;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BaseActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mPendingSyncInProgressState:Z
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$000(Lcom/google/android/gm/BaseActivityController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/BaseActivityController;->access$102(Lcom/google/android/gm/BaseActivityController;J)J

    .line 167
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshActionView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$300(Lcom/google/android/gm/BaseActivityController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f040004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 170
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    #setter for: Lcom/google/android/gm/BaseActivityController;->mRefreshActionView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/google/android/gm/BaseActivityController;->access$302(Lcom/google/android/gm/BaseActivityController;Landroid/view/View;)Landroid/view/View;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/BaseActivityController$1;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshActionView:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/gm/BaseActivityController;->access$300(Lcom/google/android/gm/BaseActivityController;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method
