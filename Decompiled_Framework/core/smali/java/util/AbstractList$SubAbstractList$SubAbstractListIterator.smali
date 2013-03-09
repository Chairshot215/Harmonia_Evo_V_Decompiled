.class final Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList$SubAbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListIterator"
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
.field private end:I

.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private start:I

.field private final subList:Ljava/util/AbstractList$SubAbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    iput-object p2, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    iput p3, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

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

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int v1, v0, v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
