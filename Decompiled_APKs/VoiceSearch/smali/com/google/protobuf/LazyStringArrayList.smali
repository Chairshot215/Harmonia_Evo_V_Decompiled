.class public Lcom/google/protobuf/LazyStringArrayList;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/LazyStringList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    sput-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/LazyStringList;)V
    .locals 2
    .parameter "from"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    return-void
.end method

.method private asString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 136
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Ljava/lang/String;

    .line 139
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "element"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 83
    return-void
.end method

.method public add(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 121
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/String;>;"
    instance-of v2, p2, Lcom/google/protobuf/LazyStringList;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/google/protobuf/LazyStringList;

    .end local p2           #c:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 101
    .local v1, ret:Z
    iget v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 102
    return v1

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v1           #ret:Z
    .restart local p2       #c:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/String;>;"
    :cond_0
    move-object v0, p2

    .line 98
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 115
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 55
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 57
    check-cast v1, Ljava/lang/String;

    .line 64
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 59
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 60
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 64
    goto :goto_0
.end method

.method public getByteString(I)Lcom/google/protobuf/ByteString;
    .locals 3
    .parameter "index"

    .prologue
    .line 125
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 128
    .local v0, b:Lcom/google/protobuf/ByteString;
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #o:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getUnderlyingElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, o:Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 109
    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, o:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
