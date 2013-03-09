.class public abstract Lcom/google/android/talk/fragments/RosterListFragment;
.super Landroid/app/Fragment;
.source "RosterListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/google/android/talk/GtalkServiceActivity$OnImSessionCreatedListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field protected mApp:Lcom/google/android/talk/TalkApp;

.field protected mCreated:Z

.field protected mDontRestoreListViewState:Z

.field protected final mHandler:Landroid/os/Handler;

.field protected mImSession:Lcom/google/android/gtalkservice/IImSession;

.field protected mList:Landroid/widget/ListView;

.field private mListState:Landroid/os/Parcelable;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field protected mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

.field protected mTabletMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/RosterListFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/RosterListFragment;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/RosterListFragment;)Landroid/app/LoaderManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method private addRemoteListenersIfReady()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListeners()V

    .line 78
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 282
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListFragment] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 288
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListFragment] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addRemoteListeners()V
.end method

.method public forceLoad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-static {}, Lcom/google/android/talk/TalkApp;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "defer requery cursor"

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->log(Ljava/lang/String;)V

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter;->setNeedForceLoad(Z)V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->startLoading(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    return-object v0
.end method

.method protected getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x0

    .line 237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mRosterListAdapter:Lcom/google/android/talk/IRosterListAdapter;

    invoke-interface {v0}, Lcom/google/android/talk/IRosterListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected getLoader(I)Landroid/content/Loader;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    invoke-static {p1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedStates"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 96
    if-eqz p1, :cond_0

    .line 98
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mTabletMode:Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 111
    const v1, 0x7f04002d

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, root:Landroid/view/View;
    const v1, 0x7f100074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    .line 113
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/talk/fragments/RosterListFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/RosterListFragment$1;-><init>(Lcom/google/android/talk/fragments/RosterListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 121
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mTabletMode:Z

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 123
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/high16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_0
    return-void
.end method

.method protected abstract onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 150
    iget-boolean v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mDontRestoreListViewState:Z

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->restoreListViewState()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->forceLoad()V

    .line 155
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 194
    const-string v3, "liststate"

    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 197
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v3, :cond_0

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v3}, Lcom/google/android/gtalkservice/IImSession;->getAccountId()J

    move-result-wide v0

    .line 202
    .local v0, accountId:J
    const-string v3, "accountId"

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0           #accountId:J
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, ex:Landroid/os/RemoteException;
    const-string v3, "talk"

    const-string v4, "onSaveInstanceState: caught "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSessionCreated(Lcom/google/android/gtalkservice/IImSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 68
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListenersIfReady()V

    .line 69
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 141
    invoke-direct {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->addRemoteListenersIfReady()V

    .line 142
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 162
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 163
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    const/4 v0, 0x0

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->removeRemoteListeners()V

    .line 169
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mCreated:Z

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 172
    return-void
.end method

.method protected abstract removeRemoteListeners()V
.end method

.method protected restoreListViewState()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mListState:Landroid/os/Parcelable;

    .line 213
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreListViewState: pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/RosterListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/RosterListFragment;->log(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/google/android/talk/IRosterListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void
.end method

.method protected startLoading(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mApp:Lcom/google/android/talk/TalkApp;

    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/talk/fragments/RosterListFragment$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/talk/fragments/RosterListFragment$2;-><init>(Lcom/google/android/talk/fragments/RosterListFragment;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/TalkApp;->addServiceAvailableCallback(Landroid/os/Handler;Lcom/google/android/talk/ServiceAvailableRunnable;)V

    .line 275
    return-void
.end method
