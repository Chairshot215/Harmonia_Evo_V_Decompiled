.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->rosterChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    .line 407
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onDisplayProgress(Z)V

    goto :goto_0
.end method
