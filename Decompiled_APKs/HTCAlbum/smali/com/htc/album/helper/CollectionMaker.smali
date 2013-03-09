.class public Lcom/htc/album/helper/CollectionMaker;
.super Ljava/lang/Object;
.source "CollectionMaker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    .line 123
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/htc/album/TabPluginDevice/FavoritesCollection;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/FavoritesCollection;-><init>(Landroid/content/Context;)V

    .line 126
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static makeCollectionByIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 11
    .parameter "context"
    .parameter "caller"

    .prologue
    const/4 v3, 0x0

    .line 26
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v3

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.htc.album.action.VIEW_WEB_PHOTO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 33
    :cond_2
    new-instance v3, Lcom/htc/album/addons/SingleCollection;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, p0, v9, v10}, Lcom/htc/album/addons/SingleCollection;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_3
    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 38
    const-string v9, "com.htc.HTCAlbum.CAMERA_SHOTS"

    invoke-static {p0, v9}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    goto :goto_0

    .line 41
    :cond_4
    const-string v9, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 43
    const-string v9, "com.htc.HTCAlbum.BURST_SHOTS"

    invoke-static {p0, v9}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    goto :goto_0

    .line 46
    :cond_5
    const-string v9, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 48
    const-string v9, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    invoke-static {p0, v9}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    goto :goto_0

    .line 51
    :cond_6
    const-string v9, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 53
    const-string v9, "com.htc.HTCAlbum.SNAPBOOTH"

    invoke-static {p0, v9}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    goto :goto_0

    .line 56
    :cond_7
    const-string v9, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 58
    const-string v9, "com.htc.HTCAlbum.ALL_VIDEOS"

    invoke-static {p0, v9}, Lcom/htc/album/helper/CollectionMaker;->makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_8
    const-string v9, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 63
    const-string v9, "folder_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, folderInfo:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, folderType:Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, bucketId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 71
    .local v4, displayName:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 73
    .local v8, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 76
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 80
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_a
    :goto_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 82
    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-static {p0, v6, v1, v4}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    .line 89
    .local v3, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    goto/16 :goto_0

    .line 94
    .end local v1           #bucketId:Ljava/lang/String;
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v3           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #folderInfo:Ljava/lang/String;
    .end local v6           #folderType:Ljava/lang/String;
    .end local v8           #tokens:Ljava/util/StringTokenizer;
    :cond_c
    const-string v9, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    :cond_d
    const-string v9, "folder_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    .restart local v6       #folderType:Ljava/lang/String;
    const-string v9, "key_bucket_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .restart local v1       #bucketId:Ljava/lang/String;
    const-string v9, "key_folder_name"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .restart local v4       #displayName:Ljava/lang/String;
    const-string v9, "Render"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, selectDMR:Ljava/lang/String;
    invoke-static {p0, v7}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-static {p0, v6, v1, v4}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v3

    .line 107
    .restart local v3       #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->showLatest()Z

    goto/16 :goto_0
.end method

.method public static makeSmartCollection(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    .line 118
    invoke-static {p0, p1, p1, p1}, Lcom/htc/album/helper/CollectionMaker;->makeCollection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/album/TabPluginDevice/AlbumCollection;

    move-result-object v0

    return-object v0
.end method
