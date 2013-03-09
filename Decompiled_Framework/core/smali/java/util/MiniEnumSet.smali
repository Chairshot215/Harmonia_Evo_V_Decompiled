.class final Ljava/util/MiniEnumSet;
.super Ljava/util/EnumSet;
.source "MiniEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/MiniEnumSet$1;,
        Ljava/util/MiniEnumSet$MiniEnumSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/util/EnumSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final MAX_ELEMENTS:I = 0x40


# instance fields
.field private bits:J

.field private final enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/EnumSet;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-void
.end method

.method static synthetic access$000(Ljava/util/MiniEnumSet;)J
    .locals 2

    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    return-wide v0
.end method

.method static synthetic access$100(Ljava/util/MiniEnumSet;)[Ljava/lang/Enum;
    .locals 1

    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Enum;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v4, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long v0, v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget v4, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/MiniEnumSet;->size:I

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Ljava/util/MiniEnumSet;->add(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_2

    move-object v5, p1

    check-cast v5, Ljava/util/EnumSet;

    iget-object v7, v5, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    iget-object v8, p0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-object v0, v5

    check-cast v0, Ljava/util/MiniEnumSet;

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v7, v0, Ljava/util/MiniEnumSet;->bits:J

    or-long v1, v3, v7

    iput-wide v1, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    cmp-long v7, v3, v1

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    return-void
.end method

.method complement()V
    .locals 5

    const-wide/16 v3, -0x1

    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-object v2, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v2, v2

    rsub-int/lit8 v2, v2, 0x40

    ushr-long v2, v3, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-object v0, p0, Ljava/util/MiniEnumSet;->enums:[Ljava/lang/Enum;

    array-length v0, v0

    iget v1, p0, Ljava/util/MiniEnumSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/MiniEnumSet;->size:I

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v5, p1, Ljava/util/MiniEnumSet;

    if-eqz v5, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/MiniEnumSet;

    iget-wide v1, v0, Ljava/util/MiniEnumSet;->bits:J

    iget-object v5, v0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v5}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v5, p0, Ljava/util/MiniEnumSet;->bits:J

    and-long/2addr v5, v1

    cmp-long v5, v5, v1

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    instance-of v5, p1, Ljava/util/EnumSet;

    if-nez v5, :cond_4

    invoke-super {p0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/util/EnumSet;

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/EnumSet;

    iget-object v3, v0, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Ljava/util/MiniEnumSet;->size:I

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    check-cast v0, Ljava/util/MiniEnumSet;

    iget-wide v5, v0, Ljava/util/MiniEnumSet;->bits:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/MiniEnumSet$MiniEnumSetIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/MiniEnumSet$MiniEnumSetIterator;-><init>(Ljava/util/MiniEnumSet;Ljava/util/MiniEnumSet$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 11

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v5

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long v1, v3, v7

    cmp-long v7, v3, v1

    if-eqz v7, :cond_0

    iput-wide v1, p0, Ljava/util/MiniEnumSet;->bits:J

    iget v6, p0, Ljava/util/MiniEnumSet;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    instance-of v7, p1, Ljava/util/EnumSet;

    if-eqz v7, :cond_2

    move-object v5, p1

    check-cast v5, Ljava/util/EnumSet;

    iget-object v7, v5, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v0, v5

    check-cast v0, Ljava/util/MiniEnumSet;

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v7, v0, Ljava/util/MiniEnumSet;->bits:J

    const-wide/16 v9, -0x1

    xor-long/2addr v7, v9

    and-long v1, v3, v7

    cmp-long v7, v3, v1

    if-eqz v7, :cond_0

    iput-wide v1, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    iput v6, p0, Ljava/util/MiniEnumSet;->size:I

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    instance-of v8, p1, Ljava/util/EnumSet;

    if-eqz v8, :cond_3

    move-object v5, p1

    check-cast v5, Ljava/util/EnumSet;

    iget-object v8, v5, Ljava/util/EnumSet;->elementClass:Ljava/lang/Class;

    invoke-virtual {p0, v8}, Ljava/util/MiniEnumSet;->isValidType(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, p0, Ljava/util/MiniEnumSet;->size:I

    if-lez v8, :cond_0

    invoke-virtual {p0}, Ljava/util/MiniEnumSet;->clear()V

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move-object v0, v5

    check-cast v0, Ljava/util/MiniEnumSet;

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v8, v0, Ljava/util/MiniEnumSet;->bits:J

    and-long v1, v3, v8

    cmp-long v8, v3, v1

    if-eqz v8, :cond_2

    iput-wide v1, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v1, v2}, Ljava/lang/Long;->bitCount(J)I

    move-result v7

    iput v7, p0, Ljava/util/MiniEnumSet;->size:I

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    move-result v6

    goto :goto_0
.end method

.method setRange(Ljava/lang/Enum;Ljava/lang/Enum;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    const-wide/16 v3, -0x1

    rsub-int/lit8 v5, v0, 0x40

    ushr-long/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-long v1, v3, v5

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    or-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    iget-wide v3, p0, Ljava/util/MiniEnumSet;->bits:J

    invoke-static {v3, v4}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    iput v3, p0, Ljava/util/MiniEnumSet;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/MiniEnumSet;->size:I

    return v0
.end method
