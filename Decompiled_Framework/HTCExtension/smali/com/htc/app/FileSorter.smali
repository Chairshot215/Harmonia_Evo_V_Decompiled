.class public Lcom/htc/app/FileSorter;
.super Ljava/lang/Object;
.source "FileSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/app/ItemInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field static final SORT_BY_TYPE:I = 0x2

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1


# instance fields
.field private mSortBy:I

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/app/ItemInfo;Lcom/htc/app/ItemInfo;)I
    .locals 9

    const/4 v8, 0x1

    iget v7, p0, Lcom/htc/app/FileSorter;->mSortBy:I

    packed-switch v7, :pswitch_data_0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-ne v7, v8, :cond_0

    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/htc/app/ItemInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v7, v0, v3

    if-gez v7, :cond_1

    const/4 v6, -0x1

    :goto_1
    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    if-ne v7, v8, :cond_0

    mul-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    cmp-long v7, v0, v3

    if-lez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/app/ItemInfo;

    check-cast p2, Lcom/htc/app/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FileSorter;->compare(Lcom/htc/app/ItemInfo;Lcom/htc/app/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/FileSorter;->mSortBy:I

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/FileSorter;->mSortOrder:I

    return-void
.end method

.method public sort(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/htc/app/ItemInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/app/ItemInfo;

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
