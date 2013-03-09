.class public abstract Lcom/google/android/finsky/fragments/PageFragment;
.super Landroid/support/v4/app/Fragment;
.source "PageFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field protected mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mContext:Landroid/content/Context;

.field protected mDataView:Landroid/view/ViewGroup;

.field protected mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

.field protected mRefreshRequired:Z

.field protected mSaveInstanceStateCalled:Z

.field private mTheme:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    const v0, 0x7f0e003a

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method


# virtual methods
.method public canChangeFragmentManagerState()Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 221
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/finsky/activities/AuthenticatedActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isStateSaved()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getLayoutRes()I
.end method

.method public getToc()Lcom/google/android/finsky/api/model/DfeToc;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/fragments/PageFragmentHost;

    .line 133
    .local v0, host:Lcom/google/android/finsky/fragments/PageFragmentHost;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/fragments/PageFragmentHost;

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    .line 135
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    .line 136
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getNavigationManager()Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 137
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 138
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->onInitViewBinders()V

    .line 141
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 142
    const-string v1, "Views bound"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "finsky.PageFragment.toc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/DfeToc;

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f080145

    const/4 v8, 0x0

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    .line 93
    if-eqz p3, :cond_0

    .line 94
    const-string v0, "finsky.PageFragment.theme"

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p3, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 96
    :cond_0
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-direct {v7, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 97
    .local v7, wrapper:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 100
    .end local v7           #wrapper:Landroid/content/Context;
    :cond_1
    const v0, 0x7f040087

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ContentFrame;

    .line 102
    .local v1, frame:Lcom/google/android/finsky/layout/ContentFrame;
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getLayoutRes()I

    move-result v0

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/finsky/layout/ContentFrame;->setDataLayout(Landroid/view/LayoutInflater;II)V

    .line 103
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ContentFrame;->getDataLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    .line 104
    iput-boolean v8, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 107
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    const v3, 0x7f0801a3

    const v4, 0x7f080058

    const/4 v6, 0x2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;IIILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;I)V

    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 111
    const-string v0, "Views inflated"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-object v1
.end method

.method public onDataChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 241
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToData()V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->rebindViews()V

    .line 243
    const-string v0, "Views rebound"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 118
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mDataView:Landroid/view/ViewGroup;

    .line 119
    iput-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 120
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->canChangeFragmentManagerState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, errorMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/PageFragment;->switchToError(Ljava/lang/String;)V

    .line 289
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract onInitViewBinders()V
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 195
    iget-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 198
    :cond_0
    return-void
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->refresh()V

    .line 203
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 154
    const-string v0, "finsky.PageFragment.theme"

    iget v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mSaveInstanceStateCalled:Z

    .line 156
    return-void
.end method

.method public rebindActionBar()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected abstract rebindViews()V
.end method

.method public refresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 178
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->requestData()V

    .line 179
    const-string v0, "requestData called"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public refreshOnResume()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mRefreshRequired:Z

    .line 189
    return-void
.end method

.method protected abstract requestData()V
.end method

.method protected setArgument(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method protected setArgument(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/PageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    return-void
.end method

.method protected setDfeToc(Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 1
    .parameter "toc"

    .prologue
    .line 292
    const-string v0, "finsky.PageFragment.toc"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/fragments/PageFragment;->setArgument(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 293
    return-void
.end method

.method protected setTheme(I)V
    .locals 0
    .parameter "themeResId"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/finsky/fragments/PageFragment;->mTheme:I

    .line 78
    return-void
.end method

.method protected switchToBlank()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToBlankMode()V

    .line 263
    return-void
.end method

.method protected switchToData()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 281
    return-void
.end method

.method protected switchToError(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToErrorMode(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected switchToLoading()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 269
    return-void
.end method

.method protected switchToLoadingImmediately()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PageFragment;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingMode()V

    .line 273
    return-void
.end method
