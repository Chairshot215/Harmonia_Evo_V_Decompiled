.class Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NonCursorImageList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9550
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    .line 9552
    return-void
.end method

.method private indexOfImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I
    .locals 2
    .parameter "image"

    .prologue
    .line 9627
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9628
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9631
    .end local v0           #i:I
    :goto_1
    return v0

    .line 9627
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9631
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 9616
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 9623
    return-void
.end method

.method public closeCursor()V
    .locals 0

    .prologue
    .line 9621
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 9624
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 9617
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9612
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 9555
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 9559
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 9563
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9564
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9567
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "uri"

    .prologue
    .line 9571
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9572
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9575
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 9640
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 9641
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunny2/IMediaData;

    if-eqz v1, :cond_0

    .line 9643
    check-cast v0, Lcom/htc/sunny2/IMediaData;

    .line 9647
    .end local v0           #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v0

    .restart local v0       #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9547
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 2
    .parameter "image"

    .prologue
    .line 9579
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->indexOfImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v0

    .line 9580
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9581
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->removeImageAt(I)V

    .line 9582
    const/4 v1, 0x1

    .line 9584
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 9588
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9589
    return-void
.end method

.method public removeImages([I[I[I[I)V
    .locals 0
    .parameter "images"
    .parameter "videos"
    .parameter "drmImages"
    .parameter "drmVideos"

    .prologue
    .line 9610
    return-void
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 2
    .parameter "images"

    .prologue
    .line 9592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 9593
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 9592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9594
    :cond_0
    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 0
    .parameter "changeCallback"

    .prologue
    .line 9614
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 9615
    return-void
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 9635
    const/4 v0, 0x0

    return v0
.end method
