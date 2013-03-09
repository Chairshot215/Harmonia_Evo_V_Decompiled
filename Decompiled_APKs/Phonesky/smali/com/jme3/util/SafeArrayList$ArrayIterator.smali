.class public Lcom/jme3/util/SafeArrayList$ArrayIterator;
.super Ljava/lang/Object;
.source "SafeArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/SafeArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private lastReturned:I

.field private next:I

.field final synthetic this$0:Lcom/jme3/util/SafeArrayList;


# direct methods
.method protected constructor <init>(Lcom/jme3/util/SafeArrayList;[Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    .local p2, array:[Ljava/lang/Object;,"[TE;"
    iput-object p1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->this$0:Lcom/jme3/util/SafeArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p2, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    .line 349
    iput p3, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    .line 351
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 354
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 365
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList$ArrayIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 360
    :cond_0
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    .line 361
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 376
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList$ArrayIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 371
    :cond_0
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    iput v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    .line 372
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 380
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->next:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 391
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->this$0:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/jme3/util/SafeArrayList$ArrayIterator;->lastReturned:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, this:Lcom/jme3/util/SafeArrayList$ArrayIterator;,"Lcom/jme3/util/SafeArrayList<TE;>.ArrayIterator<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
