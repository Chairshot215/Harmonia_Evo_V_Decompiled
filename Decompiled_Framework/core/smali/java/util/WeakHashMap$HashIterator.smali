.class Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private currentEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private nextEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private position:I

.field final synthetic this$0:Ljava/util/WeakHashMap;

.field final type:Ljava/util/WeakHashMap$Entry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    iput-object p2, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    iget v0, p1, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-boolean v1, v1, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    :cond_2
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_5

    :cond_3
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v2, v2, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, v1, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget v2, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v1, :cond_3

    :cond_4
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-boolean v1, v1, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v2, v2, Ljava/util/WeakHashMap;->modCount:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    invoke-interface {v1, v2}, Ljava/util/WeakHashMap$Entry$Type;->get(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v1, v1, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
