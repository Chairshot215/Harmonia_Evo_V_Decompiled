.class Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueForKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field current:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;

.field next:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field previous:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "key"

    .prologue
    .line 327
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 329
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "key"
    .end parameter
    .parameter "index"

    .prologue
    .line 341
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 343
    .local v1, size:I
    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 344
    div-int/lit8 v2, v1, 0x2

    if-lt p3, v2, :cond_0

    .line 345
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 346
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    move v0, p3

    .line 347
    .end local p3
    .local v0, index:I
    :goto_0
    add-int/lit8 p3, v0, 0x1

    .end local v0           #index:I
    .restart local p3
    if-ge v0, v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous()Ljava/lang/Object;

    move v0, p3

    .end local p3
    .restart local v0       #index:I
    goto :goto_0

    .line 351
    .end local v0           #index:I
    .restart local p3
    :cond_0
    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    move v0, p3

    .line 352
    .end local p3
    .restart local v0       #index:I
    :goto_1
    add-int/lit8 p3, v0, -0x1

    .end local v0           #index:I
    .restart local p3
    if-lez v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next()Ljava/lang/Object;

    move v0, p3

    .end local p3
    .restart local v0       #index:I
    goto :goto_1

    .line 356
    .end local v0           #index:I
    .restart local p3
    :cond_1
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    .line 357
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 358
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 412
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 414
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 361
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

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
    .line 373
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 368
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 369
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 385
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$100(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 379
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 380
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 389
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 393
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eq v0, v1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 396
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->nextIndex:I

    .line 400
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    #calls: Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->access$200(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 402
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.ValueForKeyIterator;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;->current:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    .line 407
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
