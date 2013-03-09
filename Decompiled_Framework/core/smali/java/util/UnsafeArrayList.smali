.class public Ljava/util/UnsafeArrayList;
.super Ljava/util/AbstractList;
.source "UnsafeArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    iput-object p1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Ljava/util/UnsafeArrayList;->size:I

    iget-object v2, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljava/util/UnsafeArrayList;->elementType:Ljava/lang/Class;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/UnsafeArrayList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/UnsafeArrayList;->size:I

    aput-object p1, v1, v2

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    return v1
.end method

.method public array()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/UnsafeArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/UnsafeArrayList;->size:I

    return v0
.end method
