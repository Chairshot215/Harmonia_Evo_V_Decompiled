.class Lcom/google/android/talk/BuddyListCombo$10;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->setupSearchUI()V
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
    .line 1557
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$10;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$10;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$10;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->cancelSearch()V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$10;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$10;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mExpando:Lcom/google/android/talk/DrawerLayout;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$000(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->gotoDefaultExpandedState()V

    .line 1566
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
