.class Lcom/google/android/talk/BuddyListCombo$7;
.super Ljava/lang/Object;
.source "BuddyListCombo.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/BuddyListCombo;->initAccountSwitcher()V
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
    .line 1136
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 9
    .parameter "itemPosition"
    .parameter "itemId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1139
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mSwitchAccountAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v5}, Lcom/google/android/talk/BuddyListCombo;->access$1000(Lcom/google/android/talk/BuddyListCombo;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1140
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-nez v0, :cond_1

    .line 1141
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1142
    const-string v4, "account switcher setOnItemSelectedListener null account!!! "

    invoke-static {v4}, Lcom/google/android/talk/BuddyListCombo;->log(Ljava/lang/String;)V

    .line 1179
    :cond_0
    :goto_0
    return v3

    .line 1147
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v5}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v5}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1151
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v5, v5, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-eqz v5, :cond_2

    .line 1152
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v5, v5, Lcom/google/android/talk/BuddyListCombo;->mBuddyListFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v5, v4}, Lcom/google/android/talk/fragments/BuddyListFragment;->setEnabled(Z)V

    .line 1157
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->resetToBaseIntent()V
    invoke-static {v5}, Lcom/google/android/talk/BuddyListCombo;->access$1100(Lcom/google/android/talk/BuddyListCombo;)V

    .line 1159
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mApp:Lcom/google/android/talk/TalkApp;
    invoke-static {v5}, Lcom/google/android/talk/BuddyListCombo;->access$500(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/talk/TalkApp;->getGTalkService()Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 1160
    .local v2, service:Lcom/google/android/gtalkservice/IGTalkService;
    if-eqz v2, :cond_3

    iget-object v5, v0, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/talk/AccountLoginUtils;->isSignedIn(Ljava/lang/String;Lcom/google/android/gtalkservice/IGTalkService;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 1162
    .local v1, isSignedIn:Z
    :goto_1
    if-nez v1, :cond_4

    .line 1163
    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #calls: Lcom/google/android/talk/BuddyListCombo;->showLoadingView(Z)V
    invoke-static {v5, v4}, Lcom/google/android/talk/BuddyListCombo;->access$1200(Lcom/google/android/talk/BuddyListCombo;Z)V

    .line 1164
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v4, v0}, Lcom/google/android/talk/BuddyListCombo;->loginToAccount(Lcom/google/android/talk/TalkApp$AccountInfo;)V

    .line 1175
    :goto_2
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mFocus:Lcom/google/android/talk/BuddyListCombo$Focus;
    invoke-static {v4}, Lcom/google/android/talk/BuddyListCombo;->access$1300(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/BuddyListCombo$Focus;

    move-result-object v4

    sget-object v5, Lcom/google/android/talk/BuddyListCombo$Focus;->ChatScreen:Lcom/google/android/talk/BuddyListCombo$Focus;

    if-ne v4, v5, :cond_0

    .line 1176
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    sget-object v5, Lcom/google/android/talk/BuddyListCombo$Focus;->BuddyList:Lcom/google/android/talk/BuddyListCombo$Focus;

    #calls: Lcom/google/android/talk/BuddyListCombo;->setFocus(Lcom/google/android/talk/BuddyListCombo$Focus;)V
    invoke-static {v4, v5}, Lcom/google/android/talk/BuddyListCombo;->access$1400(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/BuddyListCombo$Focus;)V

    goto :goto_0

    .end local v1           #isSignedIn:Z
    :cond_3
    move v1, v4

    .line 1160
    goto :goto_1

    .line 1166
    .restart local v1       #isSignedIn:Z
    :cond_4
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #setter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v4, v0}, Lcom/google/android/talk/BuddyListCombo;->access$602(Lcom/google/android/talk/BuddyListCombo;Lcom/google/android/talk/TalkApp$AccountInfo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 1167
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v5}, Lcom/google/android/talk/BuddyListCombo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "accountId"

    iget-object v7, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v7}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/talk/BuddyListCombo;->setIntent(Landroid/content/Intent;)V

    .line 1170
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    #getter for: Lcom/google/android/talk/BuddyListCombo;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-static {v4}, Lcom/google/android/talk/BuddyListCombo;->access$600(Lcom/google/android/talk/BuddyListCombo;)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-static {v4, v5}, Lcom/google/android/talk/AccountLoginUtils;->setActiveAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 1172
    iget-object v4, p0, Lcom/google/android/talk/BuddyListCombo$7;->this$0:Lcom/google/android/talk/BuddyListCombo;

    invoke-virtual {v4}, Lcom/google/android/talk/BuddyListCombo;->switchAccounts()V

    goto :goto_2
.end method
