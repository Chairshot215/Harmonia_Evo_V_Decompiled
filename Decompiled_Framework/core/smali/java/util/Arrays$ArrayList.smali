.class Ljava/util/Arrays$ArrayList;
.super Ljava/util/AbstractList;
.source "Arrays.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Arrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x265bc3413277f92eL


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    move-result-object v1

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_3

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v1, p1

    iget-object v1, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/Arrays$ArrayList;->size()I

    move-result v1

    array-length v2, p1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Ljava/util/Arrays$ArrayList;->a:[Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_1
    return-object p1
.end method
