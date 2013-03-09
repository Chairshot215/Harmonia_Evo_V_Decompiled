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
    .parameter "preferenceGroup"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 79
    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;-><init>(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 90
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 92
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/htc/preference/HtcPreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 152
    .local v0, insertPos:I
    if-gez v0, :cond_0

    .line 154
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 155
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    :cond_0
    return-void
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 6
    .parameter
    .parameter "group"
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

    .prologue
    .line 123
    .local p1, preferences:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->sortPreferences()V

    .line 125
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v3

    .line 126
    .local v3, preferenceArray:[Lcom/htc/preference/HtcPreference;
    array-length v0, v3

    .line 127
    .local v0, groupSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 128
    aget-object v2, v3, v1

    .line 130
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-boolean v5, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v5, :cond_0

    .line 133
    invoke-direct {p0, v2}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->addPreferenceClassName(Lcom/htc/preference/HtcPreference;)V

    .line 136
    :cond_0
    instance-of v5, v2, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v5, :cond_1

    move-object v4, v2

    .line 137
    check-cast v4, Lcom/htc/preference/HtcPreferenceGroup;

    .line 138
    .local v4, preferenceAsGroup:Lcom/htc/preference/HtcPreferenceGroup;
    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    invoke-direct {p0, p1, v4}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 143
    .end local v4           #preferenceAsGroup:Lcom/htc/preference/HtcPreferenceGroup;
    :cond_1
    invoke-virtual {v2, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceChangeInternalListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeInternalListener;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    return-void
.end method

.method private syncMyPreferences()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v1, :cond_0

    .line 103
    monitor-exit p0

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 111
    iput-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 113
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 115
    monitor-enter p0

    .line 116
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mIsSyncing:Z

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 107
    .end local v0           #newPreferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
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

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 165
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
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    .line 170
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
    .parameter "position"

    .prologue
    const/4 v3, -0x1

    .line 220
    iget-boolean v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v4, :cond_0

    .line 221
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 225
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 236
    :cond_1
    :goto_0
    return v2

    .line 229
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 231
    .local v2, viewType:I
    if-gez v2, :cond_1

    move v2, v3

    .line 234
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getItem(I)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    .line 176
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->hasSpecifiedLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const/4 p2, 0x0

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {v1, p2, p3}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 182
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mPreferenceClassNames:Ljava/util/List;

    invoke-static {v2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 184
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 246
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

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 193
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 194
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
    .parameter "preference"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 206
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcom/htc/preference/HtcPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method
