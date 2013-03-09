.class Lcom/google/android/talk/fragments/BuddyListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "BuddyListFragment.java"


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
    .line 263
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, a:Ljava/lang/String;
    const-string v4, "android.intent.action.GTALK_AVATAR_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const-string v4, "from"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, contact:Ljava/lang/String;
    const-string v4, "accountId"

    const-wide/16 v5, 0x0

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 274
    .local v1, accountId:J
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->accountInfoAvailable()Z
    invoke-static {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$100(Lcom/google/android/talk/fragments/BuddyListFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    .end local v1           #accountId:J
    .end local v3           #contact:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v1       #accountId:J
    .restart local v3       #contact:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", update own avatar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$200(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 281
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/TalkApp;->clearSelfAvatarCache()V

    .line 282
    iget-object v4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #calls: Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V
    invoke-static {v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$300(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    goto :goto_0
.end method
