.class public Lcom/google/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

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


# instance fields
.field private final list:Lcom/google/protobuf/LazyStringList;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/LazyStringList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/UnmodifiableLazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getByteString(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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
    .line 123
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/google/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/google/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/protobuf/UnmodifiableLazyStringList;->list:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
