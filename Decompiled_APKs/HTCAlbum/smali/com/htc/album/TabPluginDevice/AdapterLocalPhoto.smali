.class public Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalPhoto.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalPhoto"


# instance fields
.field private mCollection:Lcom/htc/album/modules/collection/Collection;

.field private mSectionNum:I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "collection"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getSupportedMediaTypes()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 25
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 173
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    .line 31
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/collection/Collection;->enableDataCache(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method public enableBroadcastNotify()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public getCollectionInfo()Lcom/htc/album/modules/collection/Collection;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    return-object v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 80
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "AdapterLocalPhoto"

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public getImageListUber()Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    .locals 2

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 109
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    instance-of v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 110
    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 112
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return-object v0

    .restart local v0       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "idx"

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/IMediaData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 212
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 217
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v0, p1, v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 184
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-nez v5, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    .line 186
    .local v0, count:I
    if-lez v0, :cond_2

    .line 187
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    div-int v4, v0, v5

    .line 188
    .local v4, sec:I
    iget v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    rem-int v5, v0, v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 190
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iput-object v10, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 191
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 196
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 197
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getPositionForSection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 198
    .local v1, current:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v1           #current:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AdapterLocalPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSections]Unexpected Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    iput-object v10, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 207
    .end local v0           #count:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #sec:I
    :cond_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    check-cast v5, [Ljava/lang/Object;

    return-object v5
.end method

.method protected varargs onLoadDataInBackground(Landroid/os/AsyncTask;[Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3
    .parameter
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const-string v0, "AdapterLocalPhoto"

    const-string v1, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: begin..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mDataBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/modules/collection/Collection;->doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 162
    const-string v0, "AdapterLocalPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "AdapterLocalPhoto"

    const-string v1, "[HTCAlbum][AdapterLocalPhoto][onLoadDataInBackground]: end..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "AdapterLocalPhoto"

    const-string v1, "[HTCAlbum][AdapterLocalPhoto][onUnloadData]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onUnloadData()V

    .line 53
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->release()V

    .line 55
    :cond_0
    return-void
.end method

.method public queryPosByUri(Landroid/net/Uri;)I
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v7, -0x1

    .line 117
    const-string v8, "AdapterLocalPhoto"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query uri "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez p1, :cond_1

    move v6, v7

    .line 146
    :cond_0
    :goto_0
    return v6

    .line 121
    :cond_1
    const/4 v6, -0x1

    .line 122
    .local v6, position:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v4

    .line 123
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-nez v4, :cond_2

    move v6, v7

    .line 124
    goto :goto_0

    .line 126
    :cond_2
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v5

    .line 127
    .local v5, listCount:I
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    .local v0, absFileType:Z
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, comparePath:Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_0

    .line 131
    invoke-interface {v4, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v3

    .line 132
    .local v3, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 133
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 134
    move v6, v2

    .line 136
    goto :goto_0

    .line 128
    .end local v1           #comparePath:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 139
    .restart local v1       #comparePath:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    move v6, v2

    .line 142
    goto :goto_0

    .line 130
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final releaseListDataCache()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 151
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mCollection:Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->reloadData()V

    .line 61
    :cond_0
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 42
    return-void
.end method

.method public setSectionCollumnNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    if-eq v0, p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSections:[Ljava/lang/String;

    .line 179
    :cond_0
    iput p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->mSectionNum:I

    .line 180
    return-void
.end method
