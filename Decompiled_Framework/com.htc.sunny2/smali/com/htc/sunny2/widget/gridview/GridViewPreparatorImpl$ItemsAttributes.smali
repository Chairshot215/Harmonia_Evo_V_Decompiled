.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemsAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;
    }
.end annotation


# instance fields
.field private itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

.field private itemsCount:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GridviewPreparatorImpl.ItemsAttributes"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    return-void
.end method

.method public getTextureId(I)I
    .locals 5

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTextureId NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    goto :goto_0
.end method

.method public isFileCacheNotSaved(I)Z
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileCacheNotSaved NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public isOffLineDecode(I)Z
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOffLineDecode NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public isProcessed(I)Z
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProcessed NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    goto :goto_0
.end method

.method public isTextureDirty(I)Z
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTextureDirty NG - error index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public reset(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->clear()V

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    iput p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    new-array v0, v0, [Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    return-void
.end method

.method public setFileCacheNotSaved(IZ)V
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFileCacheNotSaved NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->fileCacheNotSaved:Z

    goto :goto_0
.end method

.method public setOffLineDecode(IZ)V
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffLineDecode NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->offLineDecode:Z

    goto :goto_0
.end method

.method public setProcessed(IZ)V
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProcessed NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->isProcessed:Z

    goto :goto_0
.end method

.method public setTextureDirty(IZ)V
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureDirty NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    :cond_2
    iput-boolean p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->textureDirty:Z

    goto :goto_0
.end method

.method public setTextureId(II)V
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextureId NG - error index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aget-object v0, v1, p1

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;-><init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$1;)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes;->itemsAttributes:[Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;

    aput-object v0, v1, p1

    :cond_2
    iput p2, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ItemsAttributes$ItemAttributes;->identifier:I

    goto :goto_0
.end method
