.class public final Lcom/google/common/collect/ObjectArrays;
.super Ljava/lang/Object;
.source "ObjectArrays.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "newLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .local p0, original:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 107
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, copy:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 110
    return-object v0
.end method

.method public static concat(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, element:Ljava/lang/Object;,"TT;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v3, 0x0

    .line 84
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    aput-object p0, v0, v3

    .line 86
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 87
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    .local p1, element:Ljava/lang/Object;,"TT;"
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    aput-object p1, v0, v1

    .line 102
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, first:[Ljava/lang/Object;,"[TT;"
    .local p1, second:[Ljava/lang/Object;,"[TT;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 68
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 69
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 70
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 71
    return-object v0
.end method

.method private static fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v1, 0x0

    .line 171
    .local v1, i:I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, element:Ljava/lang/Object;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v0, p1, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 174
    .end local v0           #element:Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method public static newArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "length"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Array.newInstance(Class, int)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, reference:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 140
    .local v0, size:I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 141
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 143
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 145
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 147
    :cond_1
    return-object p1
.end method
