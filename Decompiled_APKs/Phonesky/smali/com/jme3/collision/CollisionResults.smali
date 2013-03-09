.class public Lcom/jme3/collision/CollisionResults;
.super Ljava/lang/Object;
.source "CollisionResults.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/jme3/collision/CollisionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/collision/CollisionResult;",
            ">;"
        }
    .end annotation
.end field

.field private sorted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    return-void
.end method


# virtual methods
.method public addCollision(Lcom/jme3/collision/CollisionResult;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    .line 74
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    return-void
.end method

.method public getClosestCollision()Lcom/jme3/collision/CollisionResult;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/CollisionResult;

    goto :goto_0
.end method

.method public getCollisionDirect(I)Lcom/jme3/collision/CollisionResult;
    .locals 1
    .parameter "index"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/CollisionResult;

    return-object v0
.end method

.method public getFarthestCollision()Lcom/jme3/collision/CollisionResult;
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/collision/CollisionResult;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/jme3/collision/CollisionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/collision/CollisionResults;->sorted:Z

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "CollisionResults["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/collision/CollisionResult;

    .line 127
    .local v1, result:Lcom/jme3/collision/CollisionResult;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    .end local v1           #result:Lcom/jme3/collision/CollisionResult;
    :cond_0
    iget-object v3, p0, Lcom/jme3/collision/CollisionResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    :cond_1
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
