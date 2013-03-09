.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private curr:I

.field private curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private found:Z

.field private returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private returned_index:I

.field private startModCount:I

.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v1, v1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v1, :cond_3

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    :goto_1
    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    :cond_3
    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v1, :cond_4

    :goto_2
    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 6

    const/4 v5, -0x1

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    if-ne v2, v5, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->modCount:I
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    aget-object v0, v2, v3

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eq v0, v2, :cond_2

    move-object v1, v0

    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v2, v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v2, v1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$010(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$308(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    return-void

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    #getter for: Lorg/apache/harmony/luni/util/TwoKeyHashMap;->arr:[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    iget-object v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v4, v4, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v4, v2, v3

    goto :goto_1
.end method
