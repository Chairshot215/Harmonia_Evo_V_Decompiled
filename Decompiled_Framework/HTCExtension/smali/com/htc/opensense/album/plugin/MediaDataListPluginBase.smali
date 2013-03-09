.class public abstract Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.super Lcom/htc/opensense/album/plugin/BaseListPlugin;
.source "MediaDataListPluginBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    return-void
.end method


# virtual methods
.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/plugin/MediumData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Attachment;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnableCaptionPlugin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnableCommentsPlugin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onEnableTagsPlugin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
