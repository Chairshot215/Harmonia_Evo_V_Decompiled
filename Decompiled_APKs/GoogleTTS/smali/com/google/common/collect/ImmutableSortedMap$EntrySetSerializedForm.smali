.class Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 494
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
