.class public Lcom/google/android/gm/LabelListFragment;
.super Landroid/app/ListFragment;
.source "LabelListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/gm/LabelSettingsObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelListFragment$1;,
        Lcom/google/android/gm/LabelListFragment$ViewHolder;,
        Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;,
        Lcom/google/android/gm/LabelListFragment$LabelsAdapter;,
        Lcom/google/android/gm/LabelListFragment$LabelListItem;,
        Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/gm/provider/LabelList;",
        ">;",
        "Lcom/google/android/gm/LabelSettingsObserver;"
    }
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

.field private mCallbacks:Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLabel:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMode:I

.field private mOptions:I

.field private mPersistence:Lcom/google/android/gm/persistence/Persistence;

.field private final mRecentsCallbacks:Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedListState:Landroid/os/Parcelable;

.field private mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

.field private mUiHandler:Lcom/google/android/gm/UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;-><init>(Lcom/google/android/gm/LabelListFragment;Lcom/google/android/gm/LabelListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mRecentsCallbacks:Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;

    .line 598
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/UiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelListFragment$LabelsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/LabelListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/LabelListFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/LabelListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/LabelListFragment;)Lcom/google/android/gm/LabelItemView$DropHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gm/LabelListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gm/LabelListFragment;->getLabelDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLabelDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "label"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/android/gm/persistence/Persistence;->shouldNotifyForLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 248
    .local v1, shouldNotify:Z
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSettingsObservable;->getIncludedLabels()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c010c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, syncSummary:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 260
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c0160

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    invoke-static {v7, v8, p1}, Lcom/google/android/gm/Utils;->getLabelNotificationSummary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, description:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 250
    .end local v0           #description:Ljava/lang/String;
    .end local v2           #syncSummary:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSettingsObservable;->getPartialLabels()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f100017

    iget-object v5, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v5}, Lcom/google/android/gm/LabelSettingsObservable;->getNumberOfSyncDays()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #syncSummary:Ljava/lang/String;
    goto :goto_0

    .line 254
    .end local v2           #syncSummary:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/LabelListFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c015f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2       #syncSummary:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0

    .line 263
    :cond_2
    move-object v0, v2

    .restart local v0       #description:Ljava/lang/String;
    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gm/LabelListFragment;
    .locals 1
    .parameter "account"
    .parameter "defaultLabel"
    .parameter "mode"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gm/LabelListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/LabelListFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/gm/LabelListFragment;
    .locals 3
    .parameter "account"
    .parameter "defaultLabel"
    .parameter "mode"
    .parameter "options"

    .prologue
    .line 116
    new-instance v1, Lcom/google/android/gm/LabelListFragment;

    invoke-direct {v1}, Lcom/google/android/gm/LabelListFragment;-><init>()V

    .line 118
    .local v1, fragment:Lcom/google/android/gm/LabelListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v2, "options"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-virtual {v1, v0}, Lcom/google/android/gm/LabelListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v1
.end method


# virtual methods
.method hideRecentLabels()Z
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/gm/LabelListFragment;->mOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageLabelMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 242
    iget v1, p0, Lcom/google/android/gm/LabelListFragment;->mMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 164
    .local v0, activity:Landroid/app/Activity;
    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 166
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mResources:Landroid/content/res/Resources;

    .line 167
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mPersistence:Lcom/google/android/gm/persistence/Persistence;

    move-object v1, v0

    .line 168
    check-cast v1, Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mCallbacks:Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;

    .line 169
    instance-of v1, v0, Lcom/google/android/gm/LabelItemView$DropHandler;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 170
    check-cast v1, Lcom/google/android/gm/LabelItemView$DropHandler;

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mDropHandler:Lcom/google/android/gm/LabelItemView$DropHandler;

    .line 172
    :cond_0
    instance-of v1, v0, Lcom/google/android/gm/LabelSettingsObservable;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 173
    check-cast v1, Lcom/google/android/gm/LabelSettingsObservable;

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    .line 174
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v1, p0}, Lcom/google/android/gm/LabelSettingsObservable;->registerObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 176
    :cond_1
    check-cast v0, Lcom/google/android/gm/RestrictedActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/google/android/gm/RestrictedActivity;->getUiHandler()Lcom/google/android/gm/UiHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    .line 177
    new-instance v1, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;-><init>(Lcom/google/android/gm/LabelListFragment;Lcom/google/android/gm/LabelListFragment$1;)V

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    .line 178
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {p0, v1}, Lcom/google/android/gm/LabelListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->hideRecentLabels()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gm/LabelListFragment;->mRecentsCallbacks:Lcom/google/android/gm/LabelListFragment$RecentLabelsLoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 184
    :cond_2
    return-void
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->notifyDataSetChanged()V

    .line 596
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    .line 133
    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    .line 134
    if-eqz p1, :cond_0

    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    .line 137
    :cond_0
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelListFragment;->mMode:I

    .line 138
    const-string v1, "options"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/LabelListFragment;->mOptions:I

    .line 140
    if-eqz p1, :cond_1

    .line 141
    const-string v1, "list-state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 143
    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Lcom/google/android/gm/provider/LabelLoader;

    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment;->mAccount:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/LabelLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 148
    const v1, 0x7f040038

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, root:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    .line 153
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 154
    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 156
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gm/LabelSettingsObservable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mSettingsObservable:Lcom/google/android/gm/LabelSettingsObservable;

    invoke-interface {v0, p0}, Lcom/google/android/gm/LabelSettingsObservable;->unregisterObserver(Lcom/google/android/gm/LabelSettingsObserver;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->stopListening()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    .line 221
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 222
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "listView"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 226
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    .line 227
    .local v0, item:Lcom/google/android/gm/LabelListFragment$LabelListItem;
    invoke-virtual {v0}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->isHeader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v2, v0, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mLabel:Lcom/google/android/gm/provider/Label;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment;->mCallbacks:Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;

    invoke-interface {v2, v1}, Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;->onLabelSelected(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 233
    iput-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/LabelList;)V
    .locals 3
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/gm/provider/LabelList;",
            ">;",
            "Lcom/google/android/gm/provider/LabelList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/LabelList;>;"
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mAdapter:Lcom/google/android/gm/LabelListFragment$LabelsAdapter;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/LabelListFragment$LabelsAdapter;->setData(Lcom/google/android/gm/provider/LabelList;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mSavedListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mSavedListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelListFragment;->setSelectedLabel(Ljava/lang/String;)V

    .line 564
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Lcom/google/android/gm/provider/LabelList;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/LabelListFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/gm/provider/LabelList;)V

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
            "Lcom/google/android/gm/provider/LabelList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/gm/provider/LabelList;>;"
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 199
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mCallbacks:Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;

    invoke-interface {v0, p0}, Lcom/google/android/gm/LabelListFragment$LabelListCallbacks;->onLabelListResumed(Lcom/google/android/gm/LabelListFragment;)V

    .line 190
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "list-state"

    iget-object v1, p0, Lcom/google/android/gm/LabelListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    :cond_1
    return-void
.end method

.method public setSelectedLabel(Ljava/lang/String;)V
    .locals 7
    .parameter "labelName"

    .prologue
    .line 572
    const/4 v3, -0x1

    .line 574
    .local v3, pos:I
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 575
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 576
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/LabelListFragment$LabelListItem;

    .line 577
    .local v2, item:Lcom/google/android/gm/LabelListFragment$LabelListItem;
    invoke-virtual {v2}, Lcom/google/android/gm/LabelListFragment$LabelListItem;->isHeader()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 575
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    iget-object v4, v2, Lcom/google/android/gm/LabelListFragment$LabelListItem;->mLabel:Lcom/google/android/gm/provider/Label;

    .line 582
    .local v4, toMatch:Lcom/google/android/gm/provider/Label;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 583
    move v3, v1

    .line 587
    .end local v2           #item:Lcom/google/android/gm/LabelListFragment$LabelListItem;
    .end local v4           #toMatch:Lcom/google/android/gm/provider/Label;
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gm/LabelListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 591
    :cond_3
    return-void
.end method
