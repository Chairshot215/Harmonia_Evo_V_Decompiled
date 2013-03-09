.class public Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
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
    accessFlags = 0x1
    name = "ImageListUber"
.end annotation


# instance fields
.field private mCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
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

.field private mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

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

.field private mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mVideoCount:I

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V
    .locals 22
    .parameter
    .parameter "sublist"
    .parameter "sort"

    .prologue
    .line 5136
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5107
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 5120
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    .line 5122
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSkipCounts:[I

    .line 5137
    const-wide/16 v9, 0x0

    .local v9, makeListTime:J
    const-wide/16 v12, 0x0

    .local v12, sortTime:J
    const-wide/16 v16, 0x0

    .line 5138
    .local v16, t1:J
    invoke-virtual/range {p2 .. p2}, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5139
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSort:I

    .line 5140
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 5141
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 5142
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 5143
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 5144
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 5145
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 5146
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    .line 5147
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 5148
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    .line 5149
    move-object/from16 v4, p2

    .local v4, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_7

    aget-object v8, v4, v6

    .line 5150
    .local v8, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5151
    instance-of v0, v8, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 5153
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .local v3, allCount:I
    move-object/from16 v19, v8

    .line 5154
    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSharableCount()I

    move-result v11

    .line 5155
    .local v11, shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    move/from16 v19, v0

    sub-int v20, v3, v11

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    .line 5156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 5157
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    move-object/from16 v19, v8

    .line 5158
    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;->getSetAsCount()I

    move-result v19

    sub-int v19, v3, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    .line 5176
    .end local v3           #allCount:I
    .end local v11           #shareCount:I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 5177
    new-instance v19, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$1;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;Lcom/htc/opensense2/album/util/ImageManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v8, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 5185
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v16

    add-long v9, v9, v19

    .line 5186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5187
    const/16 v18, 0x0

    .line 5188
    .local v18, tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_6

    .line 5190
    invoke-interface {v8, v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v18

    .line 5191
    if-eqz v18, :cond_2

    .line 5193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5188
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 5161
    .end local v5           #i:I
    .end local v18           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    instance-of v0, v8, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 5163
    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v3

    .restart local v3       #allCount:I
    move-object/from16 v19, v8

    .line 5164
    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSharableCount()I

    move-result v11

    .line 5165
    .restart local v11       #shareCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    move/from16 v19, v0

    sub-int v20, v3, v11

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    .line 5166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v19, v0

    add-int v19, v19, v3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 5167
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    move-object/from16 v19, v8

    .line 5168
    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;->getSetAsCount()I

    move-result v19

    sub-int v19, v3, v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    goto/16 :goto_1

    .line 5171
    .end local v3           #allCount:I
    .end local v11           #shareCount:I
    :cond_4
    instance-of v0, v8, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 5172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    move/from16 v19, v0

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto/16 :goto_1

    .line 5173
    :cond_5
    instance-of v0, v8, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 5174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    move/from16 v19, v0

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_1

    .line 5196
    .restart local v5       #i:I
    .restart local v18       #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v16

    add-long v12, v12, v19

    .line 5149
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 5198
    .end local v5           #i:I
    .end local v8           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v18           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 5199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v14, v19, v16

    .line 5201
    .local v14, sortTime2:J
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

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

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

    invoke-static/range {v19 .. v20}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    return-void
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 5257
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5258
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 5259
    .local v0, length:I
    const/4 v1, -0x1

    .line 5260
    .local v1, pos:I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 5261
    aget-object v2, v3, v1

    .line 5262
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->activate()V

    goto :goto_0

    .line 5264
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-void
.end method

.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 5486
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]cancelDeleting has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x1

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$702(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 5488
    return-void
.end method

.method public checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 5244
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5245
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 5246
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5247
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->checkThumbnails(Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;)V

    .line 5246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5248
    :cond_0
    return-void
.end method

.method public closeCursor()V
    .locals 4

    .prologue
    .line 5278
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5279
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 5280
    .local v0, length:I
    const/4 v1, -0x1

    .line 5281
    .local v1, pos:I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 5282
    aget-object v2, v3, v1

    .line 5283
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    goto :goto_0

    .line 5285
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-void
.end method

.method public commitChanges()V
    .locals 4

    .prologue
    .line 5251
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5252
    .local v2, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v1, v2

    .line 5253
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5254
    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->commitChanges()V

    .line 5253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5255
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    .line 5267
    iget-object v3, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5268
    .local v3, sublist:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v0, v3

    .line 5269
    .local v0, length:I
    const/4 v1, -0x1

    .line 5270
    .local v1, pos:I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 5271
    aget-object v2, v3, v1

    .line 5272
    .local v2, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->deactivate()V

    goto :goto_0

    .line 5274
    .end local v2           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
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

    .prologue
    .line 5129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5130
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 5131
    .local v4, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5133
    .end local v4           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-object v1
.end method

.method public getCanSetAsImageCount()I
    .locals 2

    .prologue
    .line 5224
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCanSetAsVideoCount()I
    .locals 2

    .prologue
    .line 5228
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonSetAsVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 5289
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v1

    .line 5290
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 5291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDrmContentCount()I
    .locals 2

    .prologue
    .line 5220
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 4
    .parameter "index"

    .prologue
    .line 5297
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v1

    .line 5300
    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 5302
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

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5303
    const/4 v0, 0x0

    monitor-exit v1

    .line 5308
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    monitor-exit v1

    goto :goto_0

    .line 5309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 5233
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    return v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 5429
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 5430
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 5431
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 5434
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 5429
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5434
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "uri"

    .prologue
    .line 5420
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 5421
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    .line 5422
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v1, :cond_0

    .line 5425
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_1
    return-object v1

    .line 5420
    .restart local v1       #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5425
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 5686
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5125
    const-string v0, "ImageListUber"

    return-object v0
.end method

.method public getNonDrmImageCount()I
    .locals 2

    .prologue
    .line 5205
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getNonDrmVideoCount()I
    .locals 2

    .prologue
    .line 5208
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableImageCount()I
    .locals 2

    .prologue
    .line 5212
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareImageCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSharableVideoCount()I
    .locals 2

    .prologue
    .line 5216
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    iget v1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmNonShareVideoCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 5236
    iget v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    return v0
.end method

.method public modifySkipCountForDeletedImage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 5459
    return-void
.end method

.method public removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 3
    .parameter "image"

    .prologue
    .line 5462
    const/4 v0, -0x1

    .line 5463
    .local v0, pos:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 5464
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    aget-object v1, v2, v0

    .line 5465
    .local v1, sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-interface {v1, p1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5466
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5467
    const/4 v2, 0x1

    .line 5470
    .end local v1           #sub:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 5474
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 5475
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    .line 5476
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    .line 5477
    .local v1, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v1, :cond_0

    .line 5478
    invoke-interface {v1, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImage(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 5479
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5480
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 5483
    .end local v1           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_0
    return-void
.end method

.method public removeImages([I[I[I[I)V
    .locals 11
    .parameter "imageIndex"
    .parameter "videoIndex"
    .parameter "drmImageIndex"
    .parameter "drmVideoIndex"

    .prologue
    .line 5506
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 5507
    const-string v8, "ImageManager"

    const-string v9, "[CANCEL_DELETE]cancelDeleting reset to false"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    const/4 v3, 0x0

    .line 5511
    .local v3, items:[Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v8, 0x2

    new-array v6, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 5512
    .local v6, lists:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v7, 0x0

    .line 5514
    .local v7, tmpList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    iget-object v9, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    monitor-enter v9

    .line 5515
    :try_start_0
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    monitor-exit v9

    .line 5590
    :cond_0
    :goto_0
    return-void

    .line 5516
    :cond_1
    if-eqz p1, :cond_5

    array-length v8, p1

    if-lez v8, :cond_5

    .line 5517
    array-length v8, p1

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5518
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p1, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 5520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, p1

    if-ge v1, v8, :cond_2

    .line 5521
    aget v8, p1, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 5522
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 5523
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

    .line 5525
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 5529
    :cond_2
    move-object v0, v6

    .local v0, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 5530
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_3

    .line 5531
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5529
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5520
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5533
    .end local v1           #i:I
    :cond_5
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_6

    monitor-exit v9

    goto :goto_0

    .line 5587
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 5534
    :cond_6
    if-eqz p2, :cond_a

    :try_start_1
    array-length v8, p2

    if-lez v8, :cond_a

    .line 5535
    array-length v8, p2

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5536
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p2, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 5538
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v8, p2

    if-ge v1, v8, :cond_7

    .line 5539
    aget v8, p2, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 5540
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 5541
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

    .line 5543
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 5547
    :cond_7
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_4
    if-ge v2, v4, :cond_a

    aget-object v5, v0, v2

    .line 5548
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_8

    .line 5549
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5547
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5538
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5551
    .end local v1           #i:I
    :cond_a
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_b

    monitor-exit v9

    goto/16 :goto_0

    .line 5552
    :cond_b
    if-eqz p3, :cond_f

    array-length v8, p3

    if-lez v8, :cond_f

    .line 5553
    array-length v8, p3

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5554
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p3, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 5556
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    array-length v8, p3

    if-ge v1, v8, :cond_c

    .line 5557
    aget v8, p3, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 5558
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 5559
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

    .line 5561
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 5565
    :cond_c
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_6
    if-ge v2, v4, :cond_f

    aget-object v5, v0, v2

    .line 5566
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_d

    .line 5567
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5565
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5556
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5569
    .end local v1           #i:I
    :cond_f
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-eqz v8, :cond_10

    monitor-exit v9

    goto/16 :goto_0

    .line 5570
    :cond_10
    if-eqz p4, :cond_14

    array-length v8, p4

    if-lez v8, :cond_14

    .line 5571
    array-length v8, p4

    new-array v3, v8, [Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 5572
    const/4 v8, 0x0

    const/4 v10, 0x0

    aget v10, p4, v10

    invoke-virtual {p0, v10}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v10

    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v10

    aput-object v10, v6, v8

    .line 5574
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_7
    array-length v8, p4

    if-ge v1, v8, :cond_11

    .line 5575
    aget v8, p4, v1

    invoke-virtual {p0, v8}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v8

    aput-object v8, v3, v1

    .line 5576
    aget-object v8, v3, v1

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getContainer()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v7

    .line 5577
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

    .line 5579
    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 5583
    :cond_11
    move-object v0, v6

    .restart local v0       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_8
    if-ge v2, v4, :cond_14

    aget-object v5, v0, v2

    .line 5584
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    if-eqz v5, :cond_12

    .line 5585
    invoke-interface {v5, v3}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 5583
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5574
    .end local v0           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5587
    .end local v1           #i:I
    :cond_14
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5588
    iget-object v8, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v8}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5589
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    goto/16 :goto_0
.end method

.method public removeImages([Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "items"

    .prologue
    .line 5592
    return-void
.end method

.method public removeOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;)V
    .locals 1
    .parameter "changeCallback"

    .prologue
    .line 5595
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    .line 5596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 5597
    :cond_0
    return-void
.end method

.method public resetCancelDelete()V
    .locals 2

    .prologue
    .line 5500
    const-string v0, "ImageManager"

    const-string v1, "[CANCEL_DELETE]resetCancelDelete has been called"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5501
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->access$702(Lcom/htc/opensense2/album/util/ImageManager;Z)Z

    .line 5502
    return-void
.end method

.method public setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 5600
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    .line 5601
    iput-object p2, p0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    .line 5602
    return-void
.end method

.method public startRequery()Z
    .locals 19

    .prologue
    .line 5605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 5606
    const-string v15, "ImageManager"

    const-string v16, "cancel_delete is true 1"

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5607
    const/4 v15, 0x0

    .line 5678
    :goto_0
    return v15

    .line 5609
    :cond_0
    const-wide/16 v6, 0x0

    .local v6, makeListTime:J
    const-wide/16 v8, 0x0

    .local v8, sortTime:J
    const-wide/16 v12, 0x0

    .line 5611
    .local v12, t1:J
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 5612
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 5613
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 5614
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 5617
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 5619
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mSubList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .local v1, arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_b

    aget-object v5, v1, v3

    .line 5620
    .local v5, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 5621
    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 2"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5622
    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_0

    .line 5674
    .end local v1           #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 5624
    .restart local v1       #arr$:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->startRequery()Z

    .line 5625
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 5626
    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 3"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5627
    const/4 v15, 0x0

    monitor-exit v16

    goto :goto_0

    .line 5629
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5630
    instance-of v15, v5, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    if-eqz v15, :cond_5

    .line 5631
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    .line 5632
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmImageCount:I

    .line 5642
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mListener:Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;

    if-eqz v15, :cond_4

    .line 5643
    new-instance v15, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v5, v15, v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->setOnChangeListener(Lcom/htc/opensense2/album/util/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    .line 5651
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    add-long v6, v6, v17

    .line 5652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 5654
    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 4"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5655
    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 5634
    :cond_5
    instance-of v15, v5, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    if-eqz v15, :cond_6

    .line 5635
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    .line 5636
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mDrmVideoCount:I

    goto :goto_2

    .line 5638
    :cond_6
    instance-of v15, v5, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-eqz v15, :cond_7

    .line 5639
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mImageCount:I

    goto :goto_2

    .line 5640
    :cond_7
    instance-of v15, v5, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    if-eqz v15, :cond_3

    .line 5641
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v17

    add-int v15, v15, v17

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mVideoCount:I

    goto/16 :goto_2

    .line 5657
    :cond_8
    const/4 v14, 0x0

    .line 5658
    .local v14, tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v15

    if-ge v2, v15, :cond_a

    .line 5660
    invoke-interface {v5, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v14

    .line 5661
    if-eqz v14, :cond_9

    .line 5663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5658
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5666
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v17, v17, v12

    add-long v8, v8, v17

    .line 5619
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 5668
    .end local v2           #i:I
    .end local v5           #list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v14           #tmp_image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 5669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    #getter for: Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/util/ImageManager;->access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 5670
    const-string v15, "ImageManager"

    const-string v17, "cancel_delete is true 5"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5671
    const/4 v15, 0x0

    monitor-exit v16

    goto/16 :goto_0

    .line 5673
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5674
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v10, v15, v12

    .line 5676
    .local v10, sortTime2:J
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

    iget-object v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->mCache:Ljava/util/ArrayList;

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

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5678
    const/4 v15, 0x1

    goto/16 :goto_0
.end method
