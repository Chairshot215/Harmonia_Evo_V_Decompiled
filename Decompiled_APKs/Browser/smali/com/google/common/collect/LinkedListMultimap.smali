.class public final Lcom/google/common/collect/LinkedListMultimap;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;,
        Lcom/google/common/collect/LinkedListMultimap$MultisetView;,
        Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;,
        Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;,
        Lcom/google/common/collect/LinkedListMultimap$NodeIterator;,
        Lcom/google/common/collect/LinkedListMultimap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient head:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient keyCount:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient keyToKeyHead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keyToKeyTail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keys:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient tail:Lcom/google/common/collect/LinkedListMultimap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    .line 162
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 163
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 164
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "expectedKeys"

    .prologue
    .line 166
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    .line 168
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 169
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 170
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-static {p0}, Lcom/google/common/collect/LinkedListMultimap;->checkElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    move-result-object v0

    return-object v0
.end method

.method private addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    .local p3, nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/LinkedListMultimap$Node;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .local v1, node:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v2, :cond_0

    .line 187
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 188
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 221
    return-object v1

    .line 190
    :cond_0
    if-nez p3, :cond_2

    .line 191
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 192
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 193
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 194
    .local v0, keyTail:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    if-nez v0, :cond_1

    .line 195
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 197
    :cond_1
    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 198
    iput-object v0, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 203
    .end local v0           #keyTail:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    :cond_2
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 204
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v2, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 205
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 206
    iput-object p3, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 207
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_2
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v2, :cond_4

    .line 213
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 217
    :goto_3
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 218
    iput-object v1, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 210
    :cond_3
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_2

    .line 215
    :cond_4
    iget-object v2, p3, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v2, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_3
.end method

.method private static checkElement(Ljava/lang/Object;)V
    .locals 1
    .parameter "node"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 268
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 270
    :cond_0
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .parameter "expectedKeys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(I)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedListMultimap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private getCopy(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 937
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 938
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    .line 939
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    .line 940
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    .line 941
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 942
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 944
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 947
    .local v3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    .end local v1           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    return-void
.end method

.method private removeAllNodes(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 259
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private removeNode(Lcom/google/common/collect/LinkedListMultimap$Node;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedListMultimap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, node:Lcom/google/common/collect/LinkedListMultimap$Node;,"Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 235
    :goto_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 240
    :goto_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 247
    :goto_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v1, v0, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 254
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    .line 255
    return-void

    .line 233
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->next:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previous:Lcom/google/common/collect/LinkedListMultimap$Node;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    goto :goto_1

    .line 242
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->nextSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 249
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->previousSibling:Lcom/google/common/collect/LinkedListMultimap$Node;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/common/collect/LinkedListMultimap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 928
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 929
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->entries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 930
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 931
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 933
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 847
    .local v0, result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 848
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$5;

    .end local v0           #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$5;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0       #result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->map:Ljava/util/Map;

    .line 878
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    .line 544
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 545
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->tail:Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyTail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 549
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 441
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const/4 v1, 0x1

    .line 446
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 428
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyToKeyHead:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 432
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/LinkedListMultimap$Node<TK;TV;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/LinkedListMultimap$Node;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$Node;->value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x1

    .line 437
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/Collection;

    .line 768
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 769
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$4;

    .end local v0           #result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$4;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0       #result:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->entries:Ljava/util/Collection;

    .line 805
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 891
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 892
    const/4 v1, 0x1

    .line 898
    :goto_0
    return v1

    .line 894
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 895
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 896
    .local v0, that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 898
    .end local v0           #that:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$1;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 908
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 424
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->head:Lcom/google/common/collect/LinkedListMultimap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 583
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$2;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$2;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0       #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keySet:Ljava/util/Set;

    .line 596
    :cond_0
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 603
    .local v0, result:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TK;>;"
    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    .end local v0           #result:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    .restart local v0       #result:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 606
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/LinkedListMultimap;->addNode(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$Node;)Lcom/google/common/collect/LinkedListMultimap$Node;

    .line 460
    const/4 v0, 0x1

    return v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    const/4 v0, 0x0

    .line 486
    .local v0, changed:Z
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 487
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 489
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    const/4 v0, 0x0

    .line 478
    .local v0, changed:Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 479
    .local v2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 481
    .end local v2           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "value"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 464
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 465
    .local v0, values:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 468
    const/4 v1, 0x1

    .line 471
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 539
    .local v0, oldValues:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->removeAllNodes(Ljava/lang/Object;)V

    .line 540
    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap;->getCopy(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 504
    .local v2, oldValues:Ljava/util/List;,"Ljava/util/List<TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .line 505
    .local v0, keyValues:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TV;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 508
    .local v1, newValues:Ljava/util/Iterator;,"Ljava/util/Iterator<+TV;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 516
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 520
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 524
    :cond_2
    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 420
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap;,"Lcom/google/common/collect/LinkedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesCollection:Ljava/util/Collection;

    .line 725
    .local v0, result:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 726
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$3;

    .end local v0           #result:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedListMultimap$3;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    .restart local v0       #result:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap;->valuesCollection:Ljava/util/Collection;

    .line 746
    :cond_0
    return-object v0
.end method
