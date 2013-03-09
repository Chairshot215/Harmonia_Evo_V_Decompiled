.class public Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;
.super Ljava/lang/Object;
.source "CompListUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CompListUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FilterOutDisabledItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 275
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 276
    .local v1, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isUnsupportedPackage(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 278
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    add-int/lit8 v0, v0, -0x1

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1
    return-void
.end method

.method public static FilterOutDuplicateItems(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, releaseList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v3, candidateList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 199
    .local v9, release:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, key:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 201
    .local v1, candidate:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_5

    .line 203
    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v4

    .line 204
    .local v4, candidateSupport:I
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v11

    .line 206
    .local v11, releaseSupport:I
    if-eq v4, v11, :cond_0

    const v12, 0x20003

    if-eq v12, v4, :cond_0

    .line 213
    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, candidateIntentAction:Ljava/lang/String;
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, releaseIntentAction:Ljava/lang/String;
    or-int v6, v11, v4

    .line 217
    .local v6, finalSupport:I
    move-object v5, v2

    .line 219
    .local v5, finalIntentAction:Ljava/lang/String;
    const/high16 v12, 0x3

    and-int/2addr v12, v6

    const/high16 v13, 0x3

    if-ne v12, v13, :cond_1

    .line 222
    const v12, -0x10001

    and-int/2addr v6, v12

    .line 225
    :cond_1
    const/high16 v12, 0x2

    and-int/2addr v12, v6

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 227
    const/high16 v12, 0x2

    and-int/2addr v12, v11

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_4

    .line 229
    move-object v5, v10

    .line 237
    :cond_2
    :goto_1
    if-eq v4, v6, :cond_3

    .line 238
    invoke-interface {v1, v6}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 241
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 242
    invoke-interface {v1, v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_4
    move-object v5, v2

    goto :goto_1

    .line 248
    .end local v2           #candidateIntentAction:Ljava/lang/String;
    .end local v4           #candidateSupport:I
    .end local v5           #finalIntentAction:Ljava/lang/String;
    .end local v6           #finalSupport:I
    .end local v10           #releaseIntentAction:Ljava/lang/String;
    .end local v11           #releaseSupport:I
    :cond_5
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, aiName:Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string v12, "com.htc.android.mail"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 250
    const v12, 0x20003

    invoke-interface {v9, v12}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 256
    :cond_6
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    .end local v0           #aiName:Ljava/lang/String;
    .end local v1           #candidate:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #release:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 260
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {p0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    return-void
.end method

.method public static FilterOutItems(Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter "filterArray"
    .parameter "isExcluded"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 94
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 95
    .local v1, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 96
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 97
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, -0x1

    .line 95
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    .end local v1           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    return-void
.end method

.method public static FilterOutItemsByGroupMerge(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, iterator1:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v2, 0x0

    .line 107
    .local v2, iterator2:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v0, 0x0

    .line 119
    .local v0, bIsGrouped:Z
    const/4 v4, 0x0

    .line 120
    .local v4, potentialGroupHead:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const/4 v5, 0x0

    .line 121
    .local v5, potentialGroupItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 123
    const/4 v0, 0x0

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #potentialGroupHead:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v4, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 131
    .restart local v4       #potentialGroupHead:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: no more item to compare.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: last item on list.."

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    return-void

    .line 147
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #potentialGroupItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    check-cast v5, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 148
    .restart local v5       #potentialGroupItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 183
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 187
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_5
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 152
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    const/4 v6, 0x1

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    .line 157
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: group package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: group activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->isGroupItem()Z

    move-result v6

    if-nez v6, :cond_6

    .line 164
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->enableGroupItem()V

    .line 165
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setGroupItem(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V

    .line 169
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: header type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_6
    invoke-interface {v4, v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setGroupItem(Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;)V

    .line 173
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v4}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v6

    invoke-interface {v5}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v7

    or-int v3, v6, v7

    .line 176
    .local v3, nSupportType:I
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: new type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-interface {v4, v3}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 180
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public static FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 80
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 81
    .local v1, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    add-int/lit8 v0, v0, -0x1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1
    return-void
.end method

.method public static FilterOutMMSItems(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 264
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    .line 265
    .local v1, info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    add-int/lit8 v0, v0, -0x1

    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    .end local v1           #info:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_1
    return-void
.end method

.method public static addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    .local p1, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 49
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v2, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v3, "CompListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][CompListUtil][addComparableRIList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0           #comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public static addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter "resolveInfo"
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .parameter "nPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 68
    .local v0, comparable:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 69
    const/4 v1, -0x1

    if-ne v1, p5, :cond_2

    .line 70
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1
    const-string v1, "CompListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][CompListUtil][addSingleComparableRIList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p0, p5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "queriedAction"
    .parameter "context"
    .parameter "supportType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v0, criList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 28
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v2, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method
