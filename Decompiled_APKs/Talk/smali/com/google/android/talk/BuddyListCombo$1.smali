.class Lcom/google/android/talk/BuddyListCombo$1;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    .line 420
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$1;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/BuddyListCombo$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/BuddyListCombo$1$1;-><init>(Lcom/google/android/talk/BuddyListCombo$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
