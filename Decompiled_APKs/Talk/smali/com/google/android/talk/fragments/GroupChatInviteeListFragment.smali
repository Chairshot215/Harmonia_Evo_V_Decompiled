.class public Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;
.super Lcom/google/android/talk/fragments/RosterListFragment;
.source "GroupChatInviteeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;,
        Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;
    }
.end annotation


# instance fields
.field private mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

.field private mParticipants:[Ljava/lang/String;

.field private final mRosterListener:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;

.field private mUsernameColumn:I


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;[Ljava/lang/String;)V
    .locals 1
    .parameter "accountInfo"
    .parameter "controller"
    .parameter "participants"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;-><init>(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListener:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;

    .line 67
    iput-object p1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 68
    iput-object p3, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mParticipants:[Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->setController(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method private initializeLoader()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "participants"

    iget-object v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mParticipants:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->startLoading(ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 183
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

    .line 184
    return-void
.end method


# virtual methods
.method protected addRemoteListeners()V
    .locals 3

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListener:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "addRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedStates"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Lcom/google/android/talk/RosterListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/talk/RosterListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    .line 119
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->suppressIndent()V

    .line 120
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->suppressVideoButton(Z)V

    .line 121
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$1;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$1;-><init>(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/talk/IRosterListAdapter;->init(JLandroid/app/Activity;Ljava/lang/Runnable;)V

    .line 129
    invoke-direct {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->initializeLoader()V

    .line 130
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 84
    const-string v1, "participants"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, participants:[Ljava/lang/String;
    new-instance v1, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/talk/loaders/GroupChatInviteeListLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;J)V

    .line 89
    .end local v0           #participants:[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 135
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/talk/fragments/RosterListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 142
    iget-object v1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V

    .line 144
    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 168
    .local v0, c:Landroid/database/Cursor;
    iget v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mUsernameColumn:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, contact:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    invoke-interface {v2, v1}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;->onInviteePicked(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "onLoadFinished"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->log(Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/talk/IRosterListAdapter;->changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 99
    const-string v0, "username"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mUsernameColumn:I

    .line 102
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->restoreListViewState()V

    .line 105
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 106
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected removeRemoteListeners()V
    .locals 3

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    iget-object v2, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mRosterListener:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$RosterListener;

    invoke-interface {v1, v2}, Lcom/google/android/gtalkservice/IImSession;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "removeRemoteListeners caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setController(Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/talk/fragments/GroupChatInviteeListFragment;->mController:Lcom/google/android/talk/fragments/GroupChatInviteeListFragment$Controller;

    .line 74
    return-void
.end method
