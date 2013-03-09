.class Ljava/util/TreeMap$SubMap;
.super Ljava/util/AbstractMap;
.source "TreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5a7e7cbc5dec3d81L


# instance fields
.field fromKey:Ljava/lang/Object;

.field fromStart:Z

.field final synthetic this$0:Ljava/util/TreeMap;

.field toEnd:Z

.field toKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->fromStart:Z

    if-eqz v0, :cond_0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :goto_0
    iget-boolean v0, p0, Ljava/util/TreeMap$SubMap;->toEnd:Z

    if-eqz v0, :cond_1

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    :goto_1
    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$SubMap;->this$0:Ljava/util/TreeMap;

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/TreeMap$SubMap;->fromKey:Ljava/lang/Object;

    iget-object v5, p0, Ljava/util/TreeMap$SubMap;->toKey:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    return-object v0

    :cond_0
    sget-object v4, Ljava/util/TreeMap$Bound;->INCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_0

    :cond_1
    sget-object v6, Ljava/util/TreeMap$Bound;->EXCLUSIVE:Ljava/util/TreeMap$Bound;

    goto :goto_1
.end method
