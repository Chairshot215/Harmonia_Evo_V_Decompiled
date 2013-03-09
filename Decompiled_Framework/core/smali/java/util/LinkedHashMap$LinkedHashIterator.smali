.class abstract Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/lang/Object;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedHashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Ljava/util/LinkedHashMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextEntry()Ljava/util/LinkedHashMap$LinkedEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    iget v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->header:Ljava/util/LinkedHashMap$LinkedEntry;

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    :cond_1
    iget-object v1, v0, Ljava/util/LinkedHashMap$LinkedEntry;->nxt:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->next:Ljava/util/LinkedHashMap$LinkedEntry;

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iget v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v1, v1, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastReturned:Ljava/util/LinkedHashMap$LinkedEntry;

    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->this$0:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    return-void
.end method
