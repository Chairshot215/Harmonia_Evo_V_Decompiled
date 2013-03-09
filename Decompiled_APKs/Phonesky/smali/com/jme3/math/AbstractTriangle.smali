.class public abstract Lcom/jme3/math/AbstractTriangle;
.super Ljava/lang/Object;
.source "AbstractTriangle.java"

# interfaces
.implements Lcom/jme3/collision/Collidable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 1
    .parameter "other"
    .parameter "results"

    .prologue
    .line 46
    invoke-interface {p1, p0, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v0

    return v0
.end method

.method public abstract get1()Lcom/jme3/math/Vector3f;
.end method

.method public abstract get2()Lcom/jme3/math/Vector3f;
.end method

.method public abstract get3()Lcom/jme3/math/Vector3f;
.end method
