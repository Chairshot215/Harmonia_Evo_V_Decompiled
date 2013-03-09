.class public Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;
.super Landroid/app/Activity;
.source "OnlineAlbumsActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 22
    sget-object v6, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][OnlineAlbumsActivity][onCreate]: Begin"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 29
    .local v0, intent:Landroid/content/Intent;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v5, userIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "servicetype"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, szServiceName:Ljava/lang/String;
    const-string v6, "itemId"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, szUID:Ljava/lang/String;
    const-string v6, "itemName"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, szuserName:Ljava/lang/String;
    const-string v6, "URL_Thumb"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, szBuddyIcon:Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v6, "service_name"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 46
    :cond_0
    :goto_0
    const-string v6, "user_name"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v6, "user_buddyicon"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v6, "from_outside"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    const-string v6, "online_scene"

    const-class v7, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/htc/album/SocialNetwork/ActivityMainOnline;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->finish()V

    .line 58
    sget-object v6, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][OnlineAlbumsActivity][onCreate]: End"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 43
    :cond_1
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][OnlineAlbumsActivity][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    sget-object v0, Lcom/htc/album/onlineAlbum/OnlineAlbumsActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][OnlineAlbumsActivity][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
