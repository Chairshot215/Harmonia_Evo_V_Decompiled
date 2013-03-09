.class Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;
.super Ljava/util/Collections$UnmodifiableSet;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/Collections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    iget-object v4, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v5, p0, Ljava/util/Collections$UnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/Collections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    array-length v5, p1

    if-le v4, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object p1, v5

    check-cast p1, [Ljava/lang/Object;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p1, v2

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    const/4 v5, 0x0

    aput-object v5, p1, v2

    :cond_1
    return-object p1

    :cond_2
    move v2, v1

    goto :goto_0
.end method
