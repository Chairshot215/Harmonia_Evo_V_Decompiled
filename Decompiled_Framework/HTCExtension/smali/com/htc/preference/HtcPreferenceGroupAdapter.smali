.class Lcom/htc/preference/HtcPreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "HtcPreferenceGroupAdapter.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private volatile mIsSyncing:Z

.field private mPreferenceClassNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;-><init>(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreference;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->sortPreferences()V

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, v3, v1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v5, :cond_0

    invoke-direct {p0, v2}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V

    :cond_0
    instance-of v5, v2, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v5, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v4}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    :cond_1
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private syncMyPreferences()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/preference/HtcPreference;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5

    const/4 v3, -0x1

    iget-boolean v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    :cond_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
