.class Lcom/google/android/talk/fragments/BuddyListFragment$6;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->registerCallStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1005
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #setter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCallStateUpdateHack:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$802(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1006
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$6;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V

    .line 1007
    return-void
.end method
