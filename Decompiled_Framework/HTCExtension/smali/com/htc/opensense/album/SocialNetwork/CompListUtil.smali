.class public Lcom/htc/opensense/album/SocialNetwork/CompListUtil;
.super Ljava/lang/Object;
.source "CompListUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompListUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FilterOutDisabledItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/opensense/album/AlbumCommon/Constants;->isUnsupportedPackage(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static FilterOutDuplicateItems(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-interface {v9}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v4

    invoke-interface {v9}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v11

    if-eq v4, v11, :cond_0

    const v12, 0x20003

    if-eq v12, v4, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v10

    or-int v6, v11, v4

    move-object v5, v2

    const/high16 v12, 0x3

    and-int/2addr v12, v6

    const/high16 v13, 0x3

    if-ne v12, v13, :cond_1

    const v12, -0x10001

    and-int/2addr v6, v12

    :cond_1
    const/high16 v12, 0x2

    and-int/2addr v12, v6

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_2

    const/high16 v12, 0x2

    and-int/2addr v12, v11

    const/high16 v13, 0x2

    if-ne v12, v13, :cond_4

    move-object v5, v10

    :cond_2
    :goto_1
    if-eq v4, v6, :cond_3

    invoke-interface {v1, v6}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v1, v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v5, v2

    goto :goto_1

    :cond_5
    invoke-interface {v9}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v12, "com.htc.android.mail"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x20003

    invoke-interface {v9, v12}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    :cond_6
    invoke-interface {v9}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {p0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static FilterOutItems(Ljava/util/List;[Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static FilterOutItemsByGroupMerge(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "CompListUtil"

    const-string v7, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: no more item to compare.."

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v6, "CompListUtil"

    const-string v7, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: last item on list.."

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0

    :cond_5
    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_4

    const-string v6, "CompListUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: group package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CompListUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: group activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->isGroupItem()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->enableGroupItem()V

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getQueriedActionName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setGroupItem(Lcom/htc/opensense/album/SocialNetwork/IComparableRI;)V

    const-string v6, "CompListUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: header type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v4, v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setGroupItem(Lcom/htc/opensense/album/SocialNetwork/IComparableRI;)V

    const-string v6, "CompListUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v6

    invoke-interface {v5}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v7

    or-int v3, v6, v7

    const-string v6, "CompListUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ShareMenuManager][FilterOutItemsByGroupMerge]: new type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public static FilterOutItemsExceptMailAndMMSAndBT(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.android.mail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.bluetooth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static FilterOutMMSItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
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

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v2, p2, p3, p4}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "CompListUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][CompListUtil][addComparableRIList]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

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

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addSingleComparableRIList(Ljava/util/List;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    move-result-object v0

    const/4 v1, -0x1

    if-ne v1, p5, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const-string v1, "CompListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][CompListUtil][addSingleComparableRIList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/htc/opensense/album/SocialNetwork/IComparableRI;->getPackageName()Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p0, p5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public static makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;
    .locals 4
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
            "Lcom/htc/opensense/album/SocialNetwork/IComparableRI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-static {v2, p1, p2, p3}, Lcom/htc/opensense/album/SocialNetwork/ComparableRI;->getInstance(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/content/Context;I)Lcom/htc/opensense/album/SocialNetwork/IComparableRI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
