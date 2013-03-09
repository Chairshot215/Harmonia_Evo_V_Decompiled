.class public abstract Lcom/htc/opensense/album/plugin/TabPluginBase;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract getAccountType()Ljava/lang/String;
.end method

.method protected getActionByEntryPlugin()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.htc.album.actions.opensense.friends"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.htc.album.actions.opensense.albums"

    goto :goto_0
.end method

.method public getActivityIntent()Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getActionByEntryPlugin()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "service_name"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "service_display"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getTabName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "service_url"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "opensense_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "login_btn_text"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLoginButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "login_btn_description"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getLoginDescriptionText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "friendplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateFriendListPlugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "albumplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "photothumbplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoThumbListPlugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoFullListPlugin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "photofullplugin"

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->onCreatePhotoFullListPlugin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    return-object v1
.end method

.method public abstract getDrawableResSet()[I
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getDrawableResSet()[I

    move-result-object v2

    array-length v4, v2

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    array-length v4, v2

    new-array v3, v4, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract getIndicatorLabelRes()I
.end method

.method public abstract getLoginButtonText()Ljava/lang/String;
.end method

.method public abstract getLoginDescriptionText()Ljava/lang/String;
.end method

.method public abstract getLogoRes()Landroid/graphics/Bitmap;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/album/plugin/TabPluginBase;->getIndicatorLabelRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateAlbumListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreateFriendListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreatePhotoFullListPlugin()Ljava/lang/String;
.end method

.method public abstract onCreatePhotoThumbListPlugin()Ljava/lang/String;
.end method
