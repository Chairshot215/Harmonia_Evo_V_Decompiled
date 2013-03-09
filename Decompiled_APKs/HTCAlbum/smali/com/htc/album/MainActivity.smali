.class public Lcom/htc/album/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final ALBUM_ID_RECENT_UPLOAD:Ljava/lang/String; = "com.htc.album.recent_photos"

.field private static final LOG_TAG:Ljava/lang/String; = "MainActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 28
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Begin"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, intent:Landroid/content/Intent;
    const-string v10, "live_album"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    .local v0, bIsLiveAlbum:Z
    const/4 v10, 0x1

    if-ne v10, v0, :cond_3

    .line 39
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Live Album List: "

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v10, "service_name"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, szService:Ljava/lang/String;
    const-string v10, "user_id"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, szUserId:Ljava/lang/String;
    const-string v10, "user_name"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, szUserName:Ljava/lang/String;
    const-string v10, "user_buddyicon"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, szUserIcon:Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v9, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: user Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-nez v5, :cond_0

    .line 52
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: no service... "

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v5           #szService:Ljava/lang/String;
    .end local v6           #szUserIcon:Ljava/lang/String;
    .end local v7           #szUserId:Ljava/lang/String;
    .end local v8           #szUserName:Ljava/lang/String;
    .end local v9           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 55
    .restart local v5       #szService:Ljava/lang/String;
    .restart local v6       #szUserIcon:Ljava/lang/String;
    .restart local v7       #szUserId:Ljava/lang/String;
    .restart local v8       #szUserName:Ljava/lang/String;
    .restart local v9       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 57
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    :goto_1
    const-string v10, "service_name"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v10, "user_name"

    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v10, "user_buddyicon"

    invoke-virtual {v1, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v10, "from_outside"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    const-string v10, "flag_genuine"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const-string v10, "from_tabhost"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v10, "recent_list"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v10, "online_scene"

    const-string v11, "SceneOnlineFolder"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v10, "listviewPos"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v10, "fromMainActivity"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 134
    .end local v5           #szService:Ljava/lang/String;
    .end local v6           #szUserIcon:Ljava/lang/String;
    .end local v7           #szUserId:Ljava/lang/String;
    .end local v8           #szUserName:Ljava/lang/String;
    .end local v9           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    const/high16 v10, 0x400

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v1}, Lcom/htc/album/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->finish()V

    .line 138
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: End"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .restart local v5       #szService:Ljava/lang/String;
    .restart local v6       #szUserIcon:Ljava/lang/String;
    .restart local v7       #szUserId:Ljava/lang/String;
    .restart local v8       #szUserName:Ljava/lang/String;
    .restart local v9       #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 61
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 65
    :cond_2
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: not supported... "

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v5           #szService:Ljava/lang/String;
    .end local v6           #szUserIcon:Ljava/lang/String;
    .end local v7           #szUserId:Ljava/lang/String;
    .end local v8           #szUserName:Ljava/lang/String;
    .end local v9           #userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v10, "itemId"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 87
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Live Photo List: "

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v10, "servicetype"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5       #szService:Ljava/lang/String;
    const-string v10, "itemId"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .restart local v7       #szUserId:Ljava/lang/String;
    const-string v10, "albumName"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, szAlbumname:Ljava/lang/String;
    const-string v10, "albumId"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, szAlbumId:Ljava/lang/String;
    const-string v10, "mediumId"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, szMediumId:Ljava/lang/String;
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: Service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: Album Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: Album Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v10, "MainActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MainActivity][onCreate]: Medium Id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v10, "service_name"

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v10, "user_id"

    invoke-virtual {v1, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v10, "com.htc.album.recent_photos"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 104
    const-string v10, "album_name"

    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x20c01d9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 105
    const-string v10, "album_id"

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :goto_3
    const-string v10, "photo_id"

    invoke-virtual {v1, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v10, "from_outside"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v10, "flag_genuine"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_7

    .line 124
    :cond_4
    const-string v10, "online_scene"

    const-string v11, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    :goto_4
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 109
    :cond_5
    if-nez v3, :cond_6

    .line 110
    const-string v10, "album_name"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :goto_5
    const-string v10, "album_id"

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 112
    :cond_6
    const-string v10, "album_name"

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 126
    :cond_7
    const-string v10, "online_scene"

    const-string v11, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 131
    .end local v2           #szAlbumId:Ljava/lang/String;
    .end local v3           #szAlbumname:Ljava/lang/String;
    .end local v4           #szMediumId:Ljava/lang/String;
    .end local v5           #szService:Ljava/lang/String;
    .end local v7           #szUserId:Ljava/lang/String;
    :cond_8
    const-string v10, "MainActivity"

    const-string v11, "[HTCAlbum][MainActivity][onCreate]: Local: "

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/album/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    const-string v0, "MainActivity"

    const-string v1, "[HTCAlbum][MainActivity][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method
