.class public Lcom/google/android/talk/GroupChatInviteeList;
.super Lcom/google/android/talk/GtalkServiceActivity;
.source "GroupChatInviteeList.java"


# instance fields
.field private mAccountId:J

.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

.field mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/talk/GtalkServiceActivity;-><init>()V

    .line 129
    new-instance v0, Lcom/google/android/talk/GroupChatInviteeList$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/GroupChatInviteeList$2;-><init>(Lcom/google/android/talk/GroupChatInviteeList;)V

    iput-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    return-void
.end method

.method private getParticipants(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 97
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, participants:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParticipants.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/GroupChatInviteeList;->log(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParticipants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/GroupChatInviteeList;->log(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0           #i:I
    :cond_0
    return-object v1
.end method

.method private initAccount(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedStates"

    .prologue
    const-wide/16 v2, 0x0

    .line 82
    iget-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    .line 85
    iget-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 86
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mApp:Lcom/google/android/talk/TalkApp;

    iget-wide v1, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->getAccountInfo(J)Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 90
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 94
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 121
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GroupChatInviteeList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method

.method private registerOnSessionCreatedListeners()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/GroupChatInviteeList;->addOnSessionCreatedListener(Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getAccountId()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountId:J

    return-wide v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedState"

    .prologue
    const/4 v7, 0x4

    .line 35
    invoke-static {p0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    const v3, 0x1030119

    invoke-virtual {p0, v3}, Lcom/google/android/talk/GroupChatInviteeList;->setTheme(I)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/talk/GtalkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v3, 0x7f040020

    invoke-virtual {p0, v3}, Lcom/google/android/talk/GroupChatInviteeList;->setContentView(I)V

    .line 43
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/GroupChatInviteeList;->mApp:Lcom/google/android/talk/TalkApp;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/talk/GroupChatInviteeList;->initAccount(Landroid/os/Bundle;)V

    .line 47
    new-instance v3, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    iget-object v4, p0, Lcom/google/android/talk/GroupChatInviteeList;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v5, p0, Lcom/google/android/talk/GroupChatInviteeList;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/talk/GroupChatInviteeList;->getParticipants(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;-><init>(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    .line 50
    invoke-direct {p0}, Lcom/google/android/talk/GroupChatInviteeList;->registerOnSessionCreatedListeners()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 53
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const v3, 0x7f100027

    iget-object v4, p0, Lcom/google/android/talk/GroupChatInviteeList;->mList:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 54
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 56
    const v3, 0x7f100015

    invoke-virtual {p0, v3}, Lcom/google/android/talk/GroupChatInviteeList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, cancelButton:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 58
    new-instance v3, Lcom/google/android/talk/GroupChatInviteeList$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/GroupChatInviteeList$1;-><init>(Lcom/google/android/talk/GroupChatInviteeList;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 66
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 69
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->onBackPressed()V

    .line 145
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/google/android/talk/GroupChatInviteeList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 117
    :cond_0
    return v2
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/talk/GtalkServiceActivity;->onStop()V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/talk/GroupChatInviteeList;->finish()V

    .line 75
    return-void
.end method
