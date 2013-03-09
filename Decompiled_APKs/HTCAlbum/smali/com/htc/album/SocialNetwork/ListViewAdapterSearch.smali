.class public Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;
.super Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
.source "ListViewAdapterSearch.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final REQUEST_FRIENDSLIST_BY_FILTER:I = 0x9c42


# instance fields
.field private bIsSinaWeibo:Z

.field private bSkipCombineMainUserList:Z

.field private mServiceName:Ljava/lang/String;

.field public final strTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 4
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 30
    const-string v0, "ListViewAdapterSearch"

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->strTag:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->mServiceName:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bIsSinaWeibo:Z

    .line 43
    iput-object p2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->mServiceName:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    .line 49
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bIsSinaWeibo:Z

    .line 53
    :cond_2
    return-void
.end method

.method private CustomSearchListForSinaWeibo(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, friendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const-string v1, "0"

    .line 251
    .local v1, PROFILE_TYPE_SELF:Ljava/lang/String;
    const-string v0, "3"

    .line 253
    .local v0, PROFILE_TYPE_FOLLOW_EACHOTHER:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v4, searchList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 256
    .local v5, wp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfileType()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, profile_type:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 260
    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 262
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v3           #profile_type:Ljava/lang/String;
    .end local v5           #wp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, AccountOwner:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .local p2, FriendList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v6, 0x1

    .line 200
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 246
    :cond_1
    :goto_0
    return-object v3

    .line 202
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v3, listFinal:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bSkipCombineMainUserList:Z

    if-eqz v5, :cond_4

    .line 210
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->bIsSinaWeibo:Z

    if-ne v6, v5, :cond_3

    .line 212
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->CustomSearchListForSinaWeibo(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 221
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v6, v5, :cond_5

    .line 223
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 228
    :cond_5
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 233
    .local v2, indexList:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 234
    .local v4, nSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_6

    .line 236
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7

    .line 238
    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 234
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v9, 0x0

    .line 269
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v9

    .line 354
    :goto_0
    return-object v5

    .line 271
    :cond_1
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ListViewAdapterSearch][filterList]: +"

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v6, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v6

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, bAddTop5:Z
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v0, 0x1

    .line 282
    :cond_2
    if-eqz p1, :cond_7

    .line 285
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][ListViewAdapterSearch][filterList] List size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 296
    .local v4, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    .line 298
    const/4 v1, 0x0

    .line 301
    .local v1, bInTop5:Z
    if-eqz v0, :cond_5

    .line 303
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 305
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 307
    .local v8, top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, strTop5Name:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 310
    const/4 v1, 0x1

    .line 317
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #strTop5Name:Ljava/lang/String;
    .end local v8           #top5_index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_5
    if-nez v1, :cond_3

    .line 319
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 320
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 321
    sget-object v10, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 322
    :cond_6
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    .end local v1           #bInTop5:Z
    .end local v4           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 347
    sget-object v10, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v11, "[HTCAlbum][ListViewAdapterSearch]: KA>>> 2 list size is Zero."

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .line 348
    goto/16 :goto_0

    .line 352
    :cond_8
    sget-object v9, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][ListViewAdapterSearch][filterList]: -"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onErrorNoList()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete()V

    .line 61
    return-void
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 127
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onMessageHandler(Landroid/os/Message;)V

    .line 130
    :goto_0
    return-void

    .line 88
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdateByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendsByFilter(Landroid/os/Message;)V

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestAccountManager()V

    goto :goto_0

    .line 97
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 100
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 103
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncConnection()V

    goto :goto_0

    .line 109
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 112
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncListComplete()V

    goto :goto_0

    .line 115
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorConnection()V

    goto :goto_0

    .line 121
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoActiveUser()V

    goto :goto_0

    .line 124
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onErrorNoList()V

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_a
        0x2760 -> :sswitch_b
        0x2761 -> :sswitch_c
        0x4e20 -> :sswitch_3
        0x4e23 -> :sswitch_4
        0x4e28 -> :sswitch_5
        0x4e2d -> :sswitch_2
        0x4e84 -> :sswitch_6
        0x4e85 -> :sswitch_7
        0x4e88 -> :sswitch_8
        0x4e89 -> :sswitch_9
        0x9c41 -> :sswitch_0
        0x9c42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRequestDataUpdateByFilter(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 134
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 166
    const v0, 0x9c42

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 167
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 138
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 152
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterSearch][ERROR_NO_ACTIVEUSER]: msg.obj == null. set to false."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1
    const/16 v0, 0x4e20

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 156
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 161
    :sswitch_2
    const/16 v0, 0x4e23

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 162
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFriendsByFilter(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 174
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 185
    const-string v1, ""

    .line 186
    .local v1, strFilter:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #strFilter:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 188
    .restart local v1       #strFilter:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 190
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 191
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 192
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 196
    return-void
.end method

.method protected onSyncListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 67
    sget-object v2, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterSearch][onSyncListComplete]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, listCombine:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->combineList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 74
    const-string v1, ""

    .line 75
    .local v1, strFilter:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->filterList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->syncListItem(Ljava/util/List;Ljava/lang/String;)V

    .line 77
    const/16 v2, 0x4e8d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 78
    const/16 v2, 0x2728

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 79
    const/16 v2, 0x272d

    invoke-virtual {p0, v2, v5, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 80
    return-void
.end method

.method public syncListItem(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "strFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v7, 0x1

    .line 359
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_0

    .line 360
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 363
    :cond_0
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 371
    const/4 v3, 0x0

    .line 373
    .local v3, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v0, 0x1

    .line 374
    .local v0, bAddTop5:Z
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 377
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v1, listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getTop5FriendList()Ljava/util/ArrayList;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    .line 382
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 383
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 384
    const v4, 0x7f0b005c

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 385
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    .line 390
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 392
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_3

    .line 394
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 395
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 408
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_2
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 399
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 401
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 405
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_1

    .line 413
    .end local v2           #nIndex:I
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 415
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 416
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 417
    const v4, 0x20c01d8

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 418
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #nIndex:I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_b

    .line 423
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 425
    .restart local v3       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-nez v2, :cond_9

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 428
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 441
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v4, :cond_7

    .line 445
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    .line 421
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 430
    :cond_8
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 432
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_a

    .line 434
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BOTTOM:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 438
    :cond_a
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_3

    .line 449
    .end local v0           #bAddTop5:Z
    .end local v1           #listTop5:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v2           #nIndex:I
    .end local v3           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_b
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 450
    return-void
.end method
