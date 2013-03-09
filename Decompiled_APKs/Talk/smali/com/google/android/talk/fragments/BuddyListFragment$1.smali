.class Lcom/google/android/talk/fragments/BuddyListFragment$1;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
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
    .line 132
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 136
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$1;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->updateStatus()V
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$000(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    .line 139
    :cond_0
    return-void
.end method
