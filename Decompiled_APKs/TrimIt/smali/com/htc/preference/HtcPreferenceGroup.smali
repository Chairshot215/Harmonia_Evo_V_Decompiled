.class public abstract Lcom/htc/preference/HtcPreferenceGroup;
.super Lcom/htc/preference/HtcPreference;
.source "HtcPreferenceGroup.java"

# interfaces
.implements Lcom/htc/preference/HtcGenericInflater$Parent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/preference/HtcPreference;",
        "Lcom/htc/preference/HtcGenericInflater$Parent",
        "<",
        "Lcom/htc/preference/HtcPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachedToActivity:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/preference/HtcPreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    .line 48
    iput v2, p0, Lcom/htc/preference/HtcPreferenceGroup;->mCurrentPreferenceOrder:I

    .line 50
    iput-boolean v2, p0, Lcom/htc/preference/HtcPreferenceGroup;->mAttachedToActivity:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 57
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method private removePreferenceInt(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->onPrepareForRemoval()V

    .line 181
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    return-void
.end method

.method public bridge synthetic addItemFromInflater(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->addItemFromInflater(Lcom/htc/preference/HtcPreference;)V

    return-void
.end method

.method public addPreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 163
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getOrder()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 132
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 133
    iget v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/htc/preference/HtcPreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 136
    :cond_1
    instance-of v1, p1, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 139
    check-cast v1, Lcom/htc/preference/HtcPreferenceGroup;

    iget-boolean v3, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceGroup;->setOrderingAsAdded(Z)V

    .line 143
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->onPrepareAddPreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 149
    .local v0, insertionIndex:I
    if-gez v0, :cond_4

    .line 150
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 157
    iget-boolean v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mAttachedToActivity:Z

    if-eqz v1, :cond_5

    .line 158
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->onAttachedToActivity()V

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->notifyHierarchyChanged()V

    move v1, v2

    .line 163
    goto :goto_0

    .line 153
    .end local v0           #insertionIndex:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 325
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 326
    .local v2, preferences:[Lcom/htc/preference/HtcPreference;
    array-length v1, v2

    .line 327
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 328
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lcom/htc/preference/HtcPreference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 314
    .local v2, preferences:[Lcom/htc/preference/HtcPreference;
    array-length v1, v2

    .line 315
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 316
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lcom/htc/preference/HtcPreference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;
    .locals 7
    .parameter "key"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    .end local p0
    :goto_0
    return-object p0

    .line 230
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v4

    .line 231
    .local v4, preferences:[Lcom/htc/preference/HtcPreference;
    array-length v3, v4

    .line 232
    .local v3, preferenceCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 233
    aget-object v2, v4, v1

    .line 234
    .local v2, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, curKey:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p0, v2

    .line 237
    goto :goto_0

    .line 240
    :cond_1
    instance-of v6, v2, Lcom/htc/preference/HtcPreferenceGroup;

    if-eqz v6, :cond_2

    .line 241
    check-cast v2, Lcom/htc/preference/HtcPreferenceGroup;

    .end local v2           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 243
    .local v5, returnedPreference:Lcom/htc/preference/HtcPreference;
    if-eqz v5, :cond_2

    move-object p0, v5

    .line 244
    goto :goto_0

    .line 232
    .end local v5           #returnedPreference:Lcom/htc/preference/HtcPreference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v0           #curKey:Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;
    .locals 3

    .prologue
    .line 351
    iget-object v2, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Lcom/htc/preference/HtcPreference;

    .line 353
    .local v0, array:[Lcom/htc/preference/HtcPreference;
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 354
    monitor-exit v2

    .line 355
    return-object v0

    .line 354
    .end local v0           #array:[Lcom/htc/preference/HtcPreference;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method protected onAttachedToActivity()V
    .locals 4

    .prologue
    .line 265
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onAttachedToActivity()V

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/preference/HtcPreferenceGroup;->mAttachedToActivity:Z

    .line 272
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 273
    .local v2, preferences:[Lcom/htc/preference/HtcPreference;
    array-length v1, v2

    .line 274
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 275
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreference;->onAttachedToActivity()V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 205
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 209
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onPrepareForRemoval()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mAttachedToActivity:Z

    .line 285
    return-void
.end method

.method public removeAll()V
    .locals 4

    .prologue
    .line 189
    iget-object v3, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 191
    .local v1, preferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 192
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreference;

    invoke-direct {p0, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreferenceInt(Lcom/htc/preference/HtcPreference;)Z

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->notifyHierarchyChanged()V

    .line 196
    return-void

    .line 194
    .end local v0           #i:I
    .end local v1           #preferenceList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreferenceInt(Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    .line 174
    .local v0, returnValue:Z
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->notifyHierarchyChanged()V

    .line 175
    return v0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceGroup;->getSyncPreferenceArray()[Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 293
    .local v2, preferences:[Lcom/htc/preference/HtcPreference;
    array-length v1, v2

    .line 294
    .local v1, preferenceCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 295
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .parameter "orderingAsAdded"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mOrderingAsAdded:Z

    .line 81
    return-void
.end method

.method sortPreferences()V
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 305
    monitor-exit v1

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
