.class Lcom/android/camera/ImageManager$ImageListUber;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageListUber"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

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

.field private mSubList:[Lcom/android/camera/ImageManager$IImageList;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;[Lcom/android/camera/ImageManager$IImageList;I)V
    .locals 6

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageListUber;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    invoke-virtual {p2}, [Lcom/android/camera/ImageManager$IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/camera/ImageManager$IImageList;

    iput-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    iput p3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    iget-object v4, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-eqz v4, :cond_0

    move-object v0, p2

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lcom/android/camera/ImageManager$ImageListUber$1;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/ImageManager$ImageListUber$1;-><init>(Lcom/android/camera/ImageManager$ImageListUber;Lcom/android/camera/ImageManager;)V

    iget-object v5, p0, Lcom/android/camera/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    invoke-interface {v3, v4, v5}, Lcom/android/camera/ImageManager$IImageList;->setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/ImageManager$ImageListUber;)Lcom/android/camera/ImageManager$IImageList$OnChange;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 4

    iget-object v3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v0, v3

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->activate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lcom/android/camera/ImageManager$IImageList;->checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commitChanges()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->commitChanges()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 4

    iget-object v3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v0, v3

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    aget-object v2, v3, v1

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

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

    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 5

    iget-object v3, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v2, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v3, v1

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public declared-synchronized getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .locals 30

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$ImageListUber;->getCount()I

    move-result v26

    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "index "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " out of range max is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$ImageListUber;->getCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    if-nez v26, :cond_4

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    :cond_4
    const/4 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput v27, v26, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/16 v18, 0x0

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v6, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const-wide/32 v26, 0xffff

    and-long v26, v26, v23

    move-wide/from16 v0, v26

    long-to-int v14, v0

    const/16 v26, 0x20

    shr-long v26, v23, v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    add-int v26, v18, v14

    move/from16 v0, v26

    move/from16 v1, p1

    if-le v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v26, v26, v25

    sub-int v27, p1, v18

    add-int v20, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v26, v26, v25

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :goto_2
    monitor-exit p0

    return-object v8

    :cond_6
    add-int v18, v18, v14

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v25

    add-int v27, v27, v14

    aput v27, v26, v25

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const-wide/16 v3, 0x0

    move/from16 v19, v18

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const-wide v10, 0x7fffffffffffffffL

    :goto_4
    const/16 v25, -0x1

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v17, v26, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v9, v26, v6

    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v26

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    move/from16 v0, v17

    invoke-interface {v9, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSort:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    cmp-long v26, v21, v10

    if-gez v26, :cond_8

    :goto_6
    move-wide/from16 v10, v21

    move/from16 v25, v6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const-wide/high16 v10, -0x8000

    goto :goto_4

    :cond_a
    cmp-long v26, v21, v10

    if-lez v26, :cond_8

    goto :goto_6

    :cond_b
    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const-string v26, "ImageManager"

    const-string v27, "which is -1, returning null"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    move/from16 v18, v19

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x0

    const-wide/16 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v17, v26, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/16 v26, 0x20

    shr-long v26, v15, v26

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_d

    const-wide/16 v26, 0x1

    add-long v12, v15, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v26

    move/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    :cond_d
    if-nez v5, :cond_e

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const/16 v28, 0x20

    shl-long v26, v26, v28

    or-long v12, v26, v3

    const-string v26, "ImageManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "new entry is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v18, v19, 0x1

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    move-object/from16 v26, v0

    aget-object v26, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v25

    invoke-interface/range {v26 .. v27}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v8

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipCounts:[I

    move-object/from16 v26, v0

    aget v27, v26, v25

    add-int/lit8 v27, v27, 0x1

    aput v27, v26, v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v18

    goto/16 :goto_3
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;

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

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

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

    invoke-virtual {p0, v2}, Lcom/android/camera/ImageManager$ImageListUber;->getImageForFilePath(Ljava/lang/String;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    goto :goto_1
.end method

.method public modifySkipCountForDeletedImage(I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v3

    long-to-int v1, v6

    const/16 v6, 0x20

    shr-long v6, v3, v6

    long-to-int v5, v6

    add-int v6, v2, v1

    if-le v6, p1, :cond_1

    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSkipList:Ljava/util/ArrayList;

    const-wide/16 v7, 0x1

    sub-long v7, v3, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .locals 3

    const/4 v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mSubList:[Lcom/android/camera/ImageManager$IImageList;

    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lcom/android/camera/ImageManager$IImageList;->removeImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeImageAt(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$ImageListUber;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/camera/ImageManager$IImageList;->removeImage(Lcom/android/camera/ImageManager$IImage;)Z

    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$ImageListUber;->modifySkipCountForDeletedImage(I)V

    :cond_0
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageListUber;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    iput-object p2, p0, Lcom/android/camera/ImageManager$ImageListUber;->mHandler:Landroid/os/Handler;

    return-void
.end method
