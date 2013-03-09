.class abstract Ljava/util/Hashtable$HashIterator;
.super Ljava/lang/Object;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HashIterator"
.end annotation


# instance fields
.field expectedModCount:I

.field lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .locals 4

    iput-object p1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v2}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v2

    iput v2, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {p1}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v3, v1

    if-ge v2, v3, :cond_0

    iget v2, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v0, v1, v2

    goto :goto_0

    :cond_0
    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ljava/util/Hashtable$HashtableEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v3}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v3

    iget v4, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    :cond_0
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_1
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v2

    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    :goto_0
    if-nez v1, :cond_2

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v1, v2, v3

    goto :goto_0

    :cond_2
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method nextEntryNotFailFast()Ljava/util/Hashtable$HashtableEntry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3

    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;
    invoke-static {v3}, Ljava/util/Hashtable;->access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v2

    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    :goto_0
    if-nez v1, :cond_1

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    array-length v4, v2

    if-ge v3, v4, :cond_1

    iget v3, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/Hashtable$HashIterator;->nextIndex:I

    aget-object v1, v2, v3

    goto :goto_0

    :cond_1
    iput-object v1, p0, Ljava/util/Hashtable$HashIterator;->nextEntry:Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iget v1, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    iget-object v1, v1, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntryReturned:Ljava/util/Hashtable$HashtableEntry;

    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    #getter for: Ljava/util/Hashtable;->modCount:I
    invoke-static {v0}, Ljava/util/Hashtable;->access$500(Ljava/util/Hashtable;)I

    move-result v0

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    return-void
.end method
