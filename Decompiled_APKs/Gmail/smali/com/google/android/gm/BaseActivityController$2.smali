.class Lcom/google/android/gm/BaseActivityController$2;
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
    .line 179
    iput-object p1, p0, Lcom/google/android/gm/BaseActivityController$2;->this$0:Lcom/google/android/gm/BaseActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$2;->this$0:Lcom/google/android/gm/BaseActivityController;

    const-wide/16 v1, -0x1

    #setter for: Lcom/google/android/gm/BaseActivityController;->mProgressBarStartTime:J
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/BaseActivityController;->access$102(Lcom/google/android/gm/BaseActivityController;J)J

    .line 183
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$2;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/BaseActivityController$2;->this$0:Lcom/google/android/gm/BaseActivityController;

    #getter for: Lcom/google/android/gm/BaseActivityController;->mRefreshItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/google/android/gm/BaseActivityController;->access$200(Lcom/google/android/gm/BaseActivityController;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 186
    :cond_0
    return-void
.end method
