.class public Lcom/htc/photowidget3d/image/ImageListUber;
.super Ljava/lang/Object;
.source "ImageListUber.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/IImageList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/image/ImageListUber$1;,
        Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;,
        Lcom/htc/photowidget3d/image/ImageListUber$AscendingComparator;,
        Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageListUber"


# instance fields
.field private mLastListIndex:I

.field private final mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipCounts:[I

.field private mSkipList:[J

.field private mSkipListSize:I

.field private final mSubList:[Lcom/htc/photowidget3d/image/IImageList;


# direct methods
.method public constructor <init>([Lcom/htc/photowidget3d/image/IImageList;I)V
    .locals 8
    .parameter "sublist"
    .parameter "sort"

    .prologue
    const/4 v7, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, [Lcom/htc/photowidget3d/image/IImageList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/htc/photowidget3d/image/IImageList;

    iput-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    .line 52
    new-instance v5, Ljava/util/PriorityQueue;

    const/4 v6, 0x4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    new-instance v4, Lcom/htc/photowidget3d/image/ImageListUber$AscendingComparator;

    invoke-direct {v4, v7}, Lcom/htc/photowidget3d/image/ImageListUber$AscendingComparator;-><init>(Lcom/htc/photowidget3d/image/ImageListUber$1;)V

    :goto_0
    invoke-direct {v5, v6, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v5, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    .line 56
    const/16 v4, 0x10

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    .line 57
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    .line 58
    iget-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    array-length v4, v4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipCounts:[I

    .line 59
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mLastListIndex:I

    .line 60
    iget-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    array-length v2, v4

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 62
    iget-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    aget-object v1, v4, v0

    .line 63
    .local v1, list:Lcom/htc/photowidget3d/image/IImageList;
    new-instance v3, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    invoke-direct {v3, v1, v0}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;-><init>(Lcom/htc/photowidget3d/image/IImageList;I)V

    .line 64
    .local v3, slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    invoke-virtual {v3}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .end local v0           #i:I
    .end local v1           #list:Lcom/htc/photowidget3d/image/IImageList;
    .end local v2           #n:I
    .end local v3           #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_1
    new-instance v4, Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;

    invoke-direct {v4, v7}, Lcom/htc/photowidget3d/image/ImageListUber$DescendingComparator;-><init>(Lcom/htc/photowidget3d/image/ImageListUber$1;)V

    goto :goto_0

    .line 66
    .restart local v0       #i:I
    .restart local v2       #n:I
    :cond_2
    return-void
.end method

.method private modifySkipCountForDeletedImage(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 175
    iget-object v6, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    aget-wide v4, v6, v0

    .line 176
    .local v4, v:J
    const-wide/16 v6, -0x1

    and-long/2addr v6, v4

    long-to-int v2, v6

    .line 177
    .local v2, offset:I
    add-int v6, v3, v2

    if-le v6, p1, :cond_1

    .line 178
    iget-object v6, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    const-wide/16 v7, 0x1

    sub-long v7, v4, v7

    aput-wide v7, v6, v0

    .line 183
    .end local v2           #offset:I
    .end local v4           #v:J
    :cond_0
    return-void

    .line 181
    .restart local v2       #offset:I
    .restart local v4       #v:J
    :cond_1
    add-int/2addr v3, v2

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nextMergeSlot()Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    .line 142
    .local v1, slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 155
    .end local v1           #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :goto_0
    return-object v1

    .line 143
    .restart local v1       #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_0
    iget v3, v1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mListIndex:I

    iget v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mLastListIndex:I

    if-ne v3, v4, :cond_1

    .line 144
    iget v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    add-int/lit8 v0, v3, -0x1

    .line 145
    .local v0, lastIndex:I
    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    aget-wide v4, v3, v0

    add-long/2addr v4, v8

    aput-wide v4, v3, v0

    goto :goto_0

    .line 147
    .end local v0           #lastIndex:I
    :cond_1
    iget v3, v1, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mListIndex:I

    iput v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mLastListIndex:I

    .line 148
    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    array-length v3, v3

    iget v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    if-ne v3, v4, :cond_2

    .line 149
    iget v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [J

    .line 150
    .local v2, temp:[J
    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v2, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    .line 153
    .end local v2           #temp:[J
    :cond_2
    iget-object v3, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    iget v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    iget v5, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mLastListIndex:I

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v5, v8

    aput-wide v5, v3, v4

    goto :goto_0
.end method

.method private removeImage(Lcom/htc/photowidget3d/image/IImage;I)Z
    .locals 2
    .parameter "image"
    .parameter "index"

    .prologue
    .line 186
    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->getContainer()Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v0

    .line 187
    .local v0, list:Lcom/htc/photowidget3d/image/IImageList;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/htc/photowidget3d/image/IImageList;->removeImage(Lcom/htc/photowidget3d/image/IImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, p2}, Lcom/htc/photowidget3d/image/ImageListUber;->modifySkipCountForDeletedImage(I)V

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 289
    iget-object v2, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/htc/photowidget3d/image/IImageList;->close()V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
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
    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    .local v0, arr$:[Lcom/htc/photowidget3d/image/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 71
    .local v4, list:Lcom/htc/photowidget3d/image/IImageList;
    invoke-interface {v4}, Lcom/htc/photowidget3d/image/IImageList;->getBucketIds()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v4           #list:Lcom/htc/photowidget3d/image/IImageList;
    :cond_0
    return-object v1
.end method

.method public getCount()I
    .locals 6

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, count:I
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    .local v0, arr$:[Lcom/htc/photowidget3d/image/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 79
    .local v4, subList:Lcom/htc/photowidget3d/image/IImageList;
    invoke-interface {v4}, Lcom/htc/photowidget3d/image/IImageList;->getCount()I

    move-result v5

    add-int/2addr v1, v5

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v4           #subList:Lcom/htc/photowidget3d/image/IImageList;
    :cond_0
    return v1
.end method

.method public getImageAt(I)Lcom/htc/photowidget3d/image/IImage;
    .locals 14
    .parameter "index"

    .prologue
    .line 97
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageListUber;->getCount()I

    move-result v11

    if-le p1, v11, :cond_1

    .line 98
    :cond_0
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " out of range max is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageListUber;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 102
    :cond_1
    iget-object v5, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipCounts:[I

    .line 105
    .local v5, skipCounts:[I
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 111
    const/4 v4, 0x0

    .line 115
    .local v4, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v1, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 116
    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    aget-wide v8, v11, v0

    .line 118
    .local v8, v:J
    const-wide/16 v11, -0x1

    and-long/2addr v11, v8

    long-to-int v2, v11

    .line 119
    .local v2, offset:I
    const/16 v11, 0x20

    shr-long v11, v8, v11

    long-to-int v10, v11

    .line 120
    .local v10, which:I
    add-int v11, v4, v2

    if-le v11, p1, :cond_3

    .line 121
    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipCounts:[I

    aget v11, v11, v10

    sub-int v12, p1, v4

    add-int v7, v11, v12

    .line 122
    .local v7, subindex:I
    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    aget-object v11, v11, v10

    invoke-interface {v11, v7}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v3

    .line 134
    .end local v2           #offset:I
    .end local v7           #subindex:I
    .end local v8           #v:J
    .end local v10           #which:I
    :cond_2
    :goto_1
    return-object v3

    .line 124
    .restart local v2       #offset:I
    .restart local v8       #v:J
    .restart local v10       #which:I
    :cond_3
    add-int/2addr v4, v2

    .line 125
    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipCounts:[I

    aget v12, v11, v10

    add-int/2addr v12, v2

    aput v12, v11, v10

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v2           #offset:I
    .end local v8           #v:J
    .end local v10           #which:I
    .local v6, slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_4
    invoke-virtual {v6}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 129
    .end local v6           #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/ImageListUber;->nextMergeSlot()Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    move-result-object v6

    .line 130
    .restart local v6       #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    if-nez v6, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    .line 131
    :cond_7
    if-ne v4, p1, :cond_4

    .line 132
    iget-object v3, v6, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mImage:Lcom/htc/photowidget3d/image/IImage;

    .line 133
    .local v3, result:Lcom/htc/photowidget3d/image/IImage;
    invoke-virtual {v6}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImage;
    .locals 5
    .parameter "uri"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    .local v0, arr$:[Lcom/htc/photowidget3d/image/IImageList;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 160
    .local v4, sublist:Lcom/htc/photowidget3d/image/IImageList;
    invoke-interface {v4, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v2

    .line 161
    .local v2, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v2, :cond_0

    .line 163
    .end local v2           #image:Lcom/htc/photowidget3d/image/IImage;
    .end local v4           #sublist:Lcom/htc/photowidget3d/image/IImageList;
    :goto_1
    return-object v2

    .line 159
    .restart local v2       #image:Lcom/htc/photowidget3d/image/IImage;
    .restart local v4       #sublist:Lcom/htc/photowidget3d/image/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v2           #image:Lcom/htc/photowidget3d/image/IImage;
    .end local v4           #sublist:Lcom/htc/photowidget3d/image/IImageList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getImageIndex(Lcom/htc/photowidget3d/image/IImage;)I
    .locals 14
    .parameter "image"

    .prologue
    const/4 v11, -0x1

    .line 205
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/htc/photowidget3d/image/IImage;->getContainer()Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v1

    .line 206
    .local v1, list:Lcom/htc/photowidget3d/image/IImageList;
    iget-object v12, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    invoke-static {v12, v1}, Lcom/htc/photowidget3d/image/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 207
    .local v2, listIndex:I
    if-ne v2, v11, :cond_0

    .line 208
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v1           #list:Lcom/htc/photowidget3d/image/IImageList;
    .end local v2           #listIndex:I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 210
    .restart local v1       #list:Lcom/htc/photowidget3d/image/IImageList;
    .restart local v2       #listIndex:I
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageIndex(Lcom/htc/photowidget3d/image/IImage;)I

    move-result v3

    .line 213
    .local v3, listOffset:I
    const/4 v6, 0x0

    .line 214
    .local v6, skipCount:I
    const/4 v0, 0x0

    .local v0, i:I
    iget v4, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipListSize:I

    .local v4, n:I
    :goto_0
    if-ge v0, v4, :cond_6

    .line 215
    iget-object v12, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSkipList:[J

    aget-wide v8, v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .local v8, value:J
    const-wide/16 v12, -0x1

    and-long/2addr v12, v8

    long-to-int v5, v12

    .line 217
    .local v5, offset:I
    const/16 v12, 0x20

    shr-long v12, v8, v12

    long-to-int v10, v12

    .line 218
    .local v10, which:I
    if-ne v10, v2, :cond_3

    .line 219
    if-ge v3, v5, :cond_2

    .line 220
    add-int v11, v6, v3

    .line 232
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    :cond_1
    :goto_1
    monitor-exit p0

    return v11

    .line 222
    .restart local v5       #offset:I
    .restart local v8       #value:J
    .restart local v10       #which:I
    :cond_2
    sub-int/2addr v3, v5

    .line 224
    :cond_3
    add-int/2addr v6, v5

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v5           #offset:I
    .end local v8           #value:J
    .end local v10           #which:I
    .local v7, slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v12, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 228
    .end local v7           #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    :cond_6
    invoke-direct {p0}, Lcom/htc/photowidget3d/image/ImageListUber;->nextMergeSlot()Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;

    move-result-object v7

    .line 229
    .restart local v7       #slot:Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;
    if-eqz v7, :cond_1

    .line 230
    iget-object v12, v7, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->mImage:Lcom/htc/photowidget3d/image/IImage;

    if-ne v12, p1, :cond_4

    .line 231
    invoke-virtual {v7}, Lcom/htc/photowidget3d/image/ImageListUber$MergeSlot;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v11, v7}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    move v11, v6

    .line 232
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageListUber;->mSubList:[Lcom/htc/photowidget3d/image/IImageList;

    .local v0, arr$:[Lcom/htc/photowidget3d/image/IImageList;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 86
    .local v3, subList:Lcom/htc/photowidget3d/image/IImageList;
    invoke-interface {v3}, Lcom/htc/photowidget3d/image/IImageList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 88
    .end local v3           #subList:Lcom/htc/photowidget3d/image/IImageList;
    :goto_1
    return v4

    .line 85
    .restart local v3       #subList:Lcom/htc/photowidget3d/image/IImageList;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3           #subList:Lcom/htc/photowidget3d/image/IImageList;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public removeImage(Lcom/htc/photowidget3d/image/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/image/ImageListUber;->getImageIndex(Lcom/htc/photowidget3d/image/IImage;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/htc/photowidget3d/image/ImageListUber;->removeImage(Lcom/htc/photowidget3d/image/IImage;I)Z

    move-result v0

    return v0
.end method

.method public removeImageAt(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/image/ImageListUber;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    .line 200
    .local v0, image:Lcom/htc/photowidget3d/image/IImage;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/htc/photowidget3d/image/ImageListUber;->removeImage(Lcom/htc/photowidget3d/image/IImage;I)Z

    move-result v1

    goto :goto_0
.end method
