.class Lcom/google/android/talk/fragments/BuddyListFragment$13;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2005
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$1100(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->launchSearchActivity(Ljava/lang/String;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 2008
    return-void
.end method
