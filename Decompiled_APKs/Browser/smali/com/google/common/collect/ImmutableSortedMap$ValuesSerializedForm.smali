.class Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;
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
    name = "ValuesSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
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
            "<*TV;>;"
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
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;,"Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm<TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 571
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;,"Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$ValuesSerializedForm;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
