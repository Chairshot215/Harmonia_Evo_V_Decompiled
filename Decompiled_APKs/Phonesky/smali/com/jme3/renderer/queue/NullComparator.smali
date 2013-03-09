.class public Lcom/jme3/renderer/queue/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    check-cast p1, Lcom/jme3/scene/Geometry;

    .end local p1
    check-cast p2, Lcom/jme3/scene/Geometry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/NullComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result v0

    return v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0
    .parameter "cam"

    .prologue
    .line 50
    return-void
.end method
