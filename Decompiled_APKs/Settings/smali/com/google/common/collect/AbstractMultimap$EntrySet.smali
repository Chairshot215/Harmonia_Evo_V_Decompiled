.class Lcom/google/common/collect/AbstractMultimap$EntrySet;
.super Lcom/google/common/collect/AbstractMultimap$Entries;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.Entries;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .locals 1
    .parameter

    .prologue
    .line 1277
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$EntrySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap$Entries;-><init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;Lcom/google/common/collect/AbstractMultimap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap$EntrySet;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1279
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1282
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$EntrySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
