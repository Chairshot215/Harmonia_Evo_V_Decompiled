.class public Lcom/htc/album/TabPluginCtrl/TabOrderManager;
.super Ljava/lang/Object;
.source "TabOrderManager.java"


# static fields
.field private static final LAST_VIEWED_TAB:Ljava/lang/String; = "last_viewed_tab"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final TABTAG_ALBUM_ALBUM:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

.field public static final TABTAG_ALBUM_DLNA:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

.field public static final TABTAG_ALBUM_FACEBOOK:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginFacebook.TabPluginFacebook"

.field public static final TABTAG_ALBUM_FLICKR:Ljava/lang/String; = "com.htc.album-com.htc.album.TabPluginFlickr.TabPluginFlickr"


# instance fields
.field private mIsSynced:Z

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mlistPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mlistSupportedTabPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    new-instance v0, Lcom/htc/album/TabPluginDevice/TabPluginDevice;

    .end local v0           #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;-><init>(Landroid/content/Context;)V

    .line 47
    .restart local v0       #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;

    .end local v0           #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginFacebook/TabPluginFacebook;-><init>(Landroid/content/Context;)V

    .line 50
    .restart local v0       #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;

    .end local v0           #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginFlickr/TabPluginFlickr;-><init>(Landroid/content/Context;)V

    .line 53
    .restart local v0       #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;

    .end local v0           #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-direct {v0, p1}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;-><init>(Landroid/content/Context;)V

    .line 56
    .restart local v0       #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->getDefaultPluginList(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method private getNextMatchingPlugin(Landroid/content/Context;Ljava/util/List;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "pluginRequest"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;",
            "Lcom/htc/album/TabPluginCtrl/TabPluginItem;",
            ")",
            "Lcom/htc/opensense/plugin/TabPlugin;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, pluginsAvailable:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 204
    const/4 v1, 0x0

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :cond_1
    const/4 v1, 0x0

    .line 208
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setState(I)V

    .line 209
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 211
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v1       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v1, :cond_2

    .line 209
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 216
    const/4 v1, 0x0

    .line 217
    goto :goto_2

    .line 220
    :cond_3
    sget-object v2, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][TabOrderManager][getNextMatchingPlugin]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/htc/album/TabPluginCtrl/TabPluginItem;->setState(I)V

    .line 222
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getTabState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "szTabTag"

    .prologue
    .line 185
    const/16 v0, 0x63

    .line 187
    .local v0, carouselState:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 195
    .end local v0           #carouselState:I
    .local v1, carouselState:I
    :goto_0
    return v1

    .line 190
    .end local v1           #carouselState:I
    .restart local v0       #carouselState:I
    :cond_1
    const-string v2, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    const/16 v0, 0x65

    :goto_1
    move v1, v0

    .line 195
    .end local v0           #carouselState:I
    .restart local v1       #carouselState:I
    goto :goto_0

    .line 193
    .end local v1           #carouselState:I
    .restart local v0       #carouselState:I
    :cond_2
    invoke-static {p1}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->getTabState(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private nextOrderedPlugin(Landroid/content/Context;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1
    .parameter "context"
    .parameter "pluginItem"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->getNextMatchingPlugin(Landroid/content/Context;Ljava/util/List;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastTabTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, szTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 176
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "last_viewed_tab"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public getOrderedPluginList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getPlugin(I)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 1
    .parameter "nIndex"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/TabPlugin;

    return-object v0
.end method

.method public getPluginSize()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isSynced()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    return v0
.end method

.method public removeDisabledPlugins(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 141
    sget-object v0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][TabOrderManager][removeDisabledPlugins]: removing..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-static {v0}, Lcom/htc/album/Customizable/CustAlbumTabOrder;->removeUnsupportedPlugins(Ljava/util/List;)V

    .line 147
    sget-object v0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][TabOrderManager][removeDisabledPlugins]: remove done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reorderPlugins(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 97
    sget-object v4, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TabOrderManager][reorderPlugins]: reordering: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, listNew:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 106
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistSupportedTabPlugins:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginCtrl/TabPluginItem;

    invoke-direct {p0, p1, v4}, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->nextOrderedPlugin(Landroid/content/Context;Lcom/htc/album/TabPluginCtrl/TabPluginItem;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v4, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TabOrderManager][reorderPlugins]: tab: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v3, 0x0

    .line 117
    .local v3, vmmPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 119
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v2, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v2       #tabPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v2, :cond_2

    .line 117
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.vmm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 125
    move-object v3, v2

    .line 126
    goto :goto_2

    .line 129
    :cond_3
    sget-object v4, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TabOrderManager][reorderPlugins]: misc tab: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPlugin;->getTabName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_4
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 134
    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    sget-object v4, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][TabOrderManager][reorderPlugins]: reordering done: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setLastTabTag(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "szTag"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 164
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_viewed_tab"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    return-void
.end method

.method public setPreorderedPluginList(Ljava/util/List;)V
    .locals 8
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
    .line 70
    .local p1, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    const/4 v4, 0x0

    .line 71
    .local v4, tabExistingPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    const/4 v5, 0x0

    .line 72
    .local v5, tabNewPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    .local v0, nCountExisting:I
    const/4 v1, 0x0

    .line 74
    .local v1, nCountNew:I
    const/4 v2, 0x0

    .local v2, nIndexExisting:I
    :goto_0
    if-le v0, v2, :cond_4

    .line 76
    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tabExistingPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v4, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v4       #tabExistingPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v4, :cond_1

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    const/4 v3, 0x0

    .local v3, nIndexNew:I
    :goto_2
    if-le v1, v3, :cond_0

    .line 82
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #tabNewPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    check-cast v5, Lcom/htc/opensense/plugin/TabPlugin;

    .restart local v5       #tabNewPlugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-nez v5, :cond_3

    .line 80
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v6

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPlugin;->getIndicatorLabelRes()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 87
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 92
    .end local v3           #nIndexNew:I
    :cond_4
    iget-object v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mlistPlugins:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/album/TabPluginCtrl/TabOrderManager;->mIsSynced:Z

    .line 94
    return-void
.end method
