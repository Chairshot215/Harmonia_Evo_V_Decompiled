.class public Lcom/htc/album/Customizable/CustAlbumTabOrder;
.super Ljava/lang/Object;
.source "CustAlbumTabOrder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/htc/album/Customizable/CustAlbumTabOrder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/Customizable/CustAlbumTabOrder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPluginList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, listTabItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/TabPluginCtrl/TabPluginItem;>;"
    const/4 v0, 0x0

    .line 20
    .local v0, tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 21
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 25
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 26
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 29
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    .end local v0           #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    invoke-direct {v0}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;-><init>()V

    .line 33
    .restart local v0       #tabItem:Lcom/htc/album/TabPluginCtrl/TabPluginItem;
    const-string v1, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setTag(Ljava/lang/String;)V

    .line 34
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public static getTabState(Ljava/lang/String;)I
    .locals 1
    .parameter "szTabTag"

    .prologue
    .line 38
    const/16 v0, 0x63

    .line 39
    .local v0, carouselState:I
    return v0
.end method

.method public static removeUnsupportedPlugins(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v1, 0x0

    .line 44
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v0, 0x0

    .line 47
    .local v0, nIndex:I
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .line 49
    .restart local v1       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 76
    return-void

    .line 57
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->isExcludeSocialNetwork()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_4
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isInternalStorageStateError()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
