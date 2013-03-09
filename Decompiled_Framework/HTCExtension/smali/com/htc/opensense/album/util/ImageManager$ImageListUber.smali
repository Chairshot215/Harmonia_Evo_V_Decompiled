.class public Lcom/htc/opensense/album/util/ImageManager$ImageListUber;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageListUber"
.end annotation


# instance fields
.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field private mDrmImageCount:I

.field private mDrmNonSetAsImageCount:I

.field private mDrmNonSetAsVideoCount:I

.field private mDrmNonShareImageCount:I

.field private mDrmNonShareVideoCount:I

.field private mDrmVideoCount:I

.field mHandler:Landroid/os/Handler;

.field private mImageCount:I

.field private mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

.field mSkipCounts:[I

.field mSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSort:I

.field private mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

.field private mVideoCount:I

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;[Lcom/htc/opensense/album/util/ImageManager$IImageList;I)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSkipCounts:[I

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, [Lcom/htc/opensense/album/util/ImageManager$IImageList;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSort:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v4, p2

    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_7

    aget-object v8, v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    instance-of v0, v8, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    move-object/from16 v19, v8

    check-cast v19, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getSharableCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move/from16 v19, v0

    sub-int v20, v3, v11

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    move-object/from16 v19, v8

    check-cast v19, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;->getSetAsCount()I

    move-result v19

    sub-int v19, v3, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    new-instance v19, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$1;-><init>(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;Lcom/htc/opensense/album/util/ImageManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v16

    add-long v9, v9, v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v18, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_6

    invoke-interface {v8, v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    instance-of v0, v8, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    move-object/from16 v19, v8

    check-cast v19, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->getSharableCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move/from16 v19, v0

    sub-int v20, v3, v11

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v19, v8

    check-cast v19, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;->getSetAsCount()I

    move-result v19

    sub-int v19, v3, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    goto/16 :goto_1

    :cond_4
    instance-of v0, v8, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v19, v0

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto/16 :goto_1

    :cond_5
    instance-of v0, v8, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v19, v0

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v16

    add-long v12, v12, v19

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v14, v19, v16

    const-string v19, "ImageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "makeListTime = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms, traversal time = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms, sortTime = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "p)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 4

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v0, v3

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->activate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelDeleting()V
    .locals 2

    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]cancelDeleting has been called"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->access$602(Lcom/htc/opensense/album/util/ImageManager;Z)Z

    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->checkThumbnails(Lcom/htc/opensense/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closeCursor()V
    .locals 4

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v0, v3

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commitChanges()V
    .locals 4

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->commitChanges()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 4

    iget-object v3, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v0, v3

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->deactivate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .locals 6
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

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCanSetAsImageCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCanSetAsVideoCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmContentCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v1

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/util/ImageManager$IImage;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    return v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImageListUber"

    return-object v0
.end method

.method public getNonDrmImageCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNonDrmVideoCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableImageCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableVideoCount()I
    .locals 2

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    return v0
.end method

.method public modifySkipCountForDeletedImage(I)V
    .locals 0

    return-void
.end method

.method public removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z
    .locals 3

    const/4 v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense/album/util/ImageManager$IImage;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    :cond_0
    return-void
.end method

.method public removeImages([I[I[I[I)V
    .locals 11

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    const-string v8, "ImageManager"

    const-string v9, "[CANCEL_DELETE]cancelDeleting reset to false"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v8, 0x2

    new-array v6, v8, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    monitor-exit v9

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    array-length v8, p1

    if-lez v8, :cond_5

    array-length v8, p1

    new-array v3, v8, [Lcom/htc/opensense/album/util/ImageManager$IImage;

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v1, 0x0

    :goto_1
    array-length v8, p1

    if-ge v1, v8, :cond_2

    aget v8, p1, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    aput-object v7, v6, v8

    :cond_2
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    if-eqz v5, :cond_3

    invoke-interface {v5, v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_6
    if-eqz p2, :cond_a

    :try_start_1
    array-length v8, p2

    if-lez v8, :cond_a

    array-length v8, p2

    new-array v3, v8, [Lcom/htc/opensense/album/util/ImageManager$IImage;

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p2, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v1, 0x0

    :goto_3
    array-length v8, p2

    if-ge v1, v8, :cond_7

    aget v8, p2, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_9

    const/4 v8, 0x1

    aput-object v7, v6, v8

    :cond_7
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    if-eqz v5, :cond_8

    invoke-interface {v5, v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_b

    monitor-exit v9

    goto/16 :goto_0

    :cond_b
    if-eqz p3, :cond_f

    array-length v8, p3

    if-lez v8, :cond_f

    array-length v8, p3

    new-array v3, v8, [Lcom/htc/opensense/album/util/ImageManager$IImage;

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p3, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v1, 0x0

    :goto_5
    array-length v8, p3

    if-ge v1, v8, :cond_c

    aget v8, p3, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_e

    const/4 v8, 0x1

    aput-object v7, v6, v8

    :cond_c
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_f

    aget-object v5, v0, v2

    if-eqz v5, :cond_d

    invoke-interface {v5, v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v8, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_10

    monitor-exit v9

    goto/16 :goto_0

    :cond_10
    if-eqz p4, :cond_14

    array-length v8, p4

    if-lez v8, :cond_14

    array-length v8, p4

    new-array v3, v8, [Lcom/htc/opensense/album/util/ImageManager$IImage;

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p4, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v1, 0x0

    :goto_7
    array-length v8, p4

    if-ge v1, v8, :cond_11

    aget v8, p4, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v6, v8

    if-eqz v8, :cond_13

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    aget-object v8, v6, v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    aput-object v7, v6, v8

    :cond_11
    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v4, :cond_14

    aget-object v5, v0, v2

    if-eqz v5, :cond_12

    invoke-interface {v5, v3}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImages([Lcom/htc/opensense/album/util/ImageManager$IImage;)V
    .locals 0

    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    :cond_0
    return-void
.end method

.method public resetCancelDelete()V
    .locals 2

    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]resetCancelDelete has been called"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->access$602(Lcom/htc/opensense/album/util/ImageManager;Z)Z

    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    iput-object p2, p0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public startRequery()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "ImageManager"

    const-string v16, "cancel_delete is true 1"

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_b

    aget-object v5, v1, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 2"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :cond_1
    :try_start_1
    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->startRequery()Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 3"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    instance-of v15, v5, Lcom/htc/opensense/album/util/ImageManager$DrmImageList;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;

    if-eqz v15, :cond_4

    new-instance v15, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber$2;-><init>(Lcom/htc/opensense/album/util/ImageManager$ImageListUber;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v15, v0}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    add-long v6, v6, v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 4"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    :cond_5
    instance-of v15, v5, Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    goto :goto_2

    :cond_6
    instance-of v15, v5, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto :goto_2

    :cond_7
    instance-of v15, v5, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_2

    :cond_8
    const/4 v14, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v5}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_a

    invoke-interface {v5, v2}, Lcom/htc/opensense/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense/album/util/ImageManager$IImage;

    move-result-object v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    add-long v8, v8, v17

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    #getter for: Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense/album/util/ImageManager;->access$600(Lcom/htc/opensense/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 5"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v10, v15, v12

    const-string v15, "ImageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[requery]makeListTime= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms, traversal time= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms, sortTime= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "ms ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "p)"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    goto/16 :goto_0
.end method
