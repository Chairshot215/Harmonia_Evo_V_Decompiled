.class Lcom/google/android/talk/BuddyListCombo$6;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;

.field final synthetic val$changedAccounts:Z

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/talk/BuddyListCombo;ZLandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iput-boolean p2, p0, Lcom/google/android/talk/BuddyListCombo$6;->val$changedAccounts:Z

    iput-object p3, p0, Lcom/google/android/talk/BuddyListCombo$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->val$changedAccounts:Z

    if-eqz v0, :cond_3

    .line 941
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v0}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->isAccountIdValid(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->startAccountSelectionActivity(Landroid/app/Activity;)V

    .line 953
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$6;->val$intent:Landroid/content/Intent;

    #calls: Lcom/google/android/talk/BuddyListCombo;->showFragmentBasedOnIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->access$800(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Intent;)V

    .line 955
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mChatScreenFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 958
    :cond_1
    return-void

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BuddyListCombo;->loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 945
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v1, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v1}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    #calls: Lcom/google/android/talk/BuddyListCombo;->selectAccountInSpinnerByAccountId(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/talk/BuddyListCombo;->access$700(Lcom/google/android/talk/BuddyListCombo;J)V

    goto :goto_0

    .line 948
    :cond_3
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/google/android/talk/BuddyListCombo$6;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v0, v0, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->softUiReset()V

    goto :goto_0
.end method
