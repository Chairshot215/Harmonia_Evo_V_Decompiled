.class public final Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;
.super Ljava/lang/Object;
.source "ListOfTypes.java"


# static fields
.field public static final EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;


# instance fields
.field private resolvedTypes:[Ljava/lang/reflect/Type;

.field private final types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->EMPTY:Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    :try_start_0
    move-object v0, v4

    check-cast v0, Lorg/apache/harmony/luni/lang/reflect/ImplForType;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/luni/lang/reflect/ImplForType;->getResolvedType()Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v3, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    aput-object v4, v3, v2

    goto :goto_1

    :cond_0
    return-object v3
.end method


# virtual methods
.method add(Ljava/lang/reflect/Type;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getResolvedTypes()[Ljava/lang/reflect/Type;
    .locals 2

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolveTypes(Ljava/util/List;)[Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->resolvedTypes:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method length()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/luni/lang/reflect/ListOfTypes;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
