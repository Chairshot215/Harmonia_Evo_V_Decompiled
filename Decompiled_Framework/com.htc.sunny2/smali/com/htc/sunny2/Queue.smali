.class public Lcom/htc/sunny2/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/Queue$ItemComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private addIndex:I

.field private buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bufferIncrementSize:I

.field private name:Ljava/lang/String;

.field private pollIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sunnyQueue"

    iput-object v0, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iput-object p1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    return-void
.end method

.method private extendBuffer(I)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v8

    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    if-lt v9, p1, :cond_1

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    new-array v4, p1, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    array-length v6, v4

    :goto_1
    if-ge v2, v6, :cond_4

    aput-object v12, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v10, "Create new buffer NG."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-le v9, v10, :cond_5

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    iget v5, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v5, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-ge v9, v10, :cond_7

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    iget v7, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v0, v3

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/2addr v3, v9

    const/4 v2, 0x0

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v2, v9, :cond_9

    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v9, v9, v10

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    iget v7, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_8

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move v0, v3

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/2addr v3, v9

    const/4 v2, 0x0

    iget v6, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    :goto_6
    if-ge v2, v6, :cond_9

    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_a

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v6, v9

    :goto_7
    if-ge v2, v6, :cond_a

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v12, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    iput-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iput v8, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iput v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    const/4 v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - null item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - create buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/htc/sunny2/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - extend buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    aput-object p1, v1, v2

    iget v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iput v0, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-le v2, v3, :cond_5

    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    :goto_1
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-ge v2, v3, :cond_7

    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    :goto_2
    if-ge v0, v1, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    :goto_4
    if-ge v0, v1, :cond_8

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iput v5, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iput v5, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto/16 :goto_0
.end method

.method public find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Queue$ItemComparator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lcom/htc/sunny2/Queue$ItemComparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v0, v2, v3

    if-nez v0, :cond_3

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "poll() NG - index error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aput-object v1, v2, v3

    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v1, v3, :cond_7

    const/4 v1, 0x0

    :cond_7
    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v1, v3, :cond_2

    goto :goto_0
.end method

.method public swapWith(Lcom/htc/sunny2/Queue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Queue",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v4, "swap NG"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iput-object v1, p1, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v0, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v3, p1, Lcom/htc/sunny2/Queue;->addIndex:I

    iput v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iput v0, p1, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget v3, p1, Lcom/htc/sunny2/Queue;->pollIndex:I

    iput v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iput v2, p1, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto :goto_0
.end method
