.class Lcom/google/android/talk/BuddyListCombo$4;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Lcom/google/android/talk/fragments/SetStatusFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
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
    .line 591
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public updateRoster()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$4;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->reload()V

    .line 601
    :cond_0
    return-void
.end method
