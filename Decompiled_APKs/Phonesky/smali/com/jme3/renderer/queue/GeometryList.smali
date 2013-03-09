.class public Lcom/jme3/renderer/queue/GeometryList;
.super Ljava/lang/Object;
.source "GeometryList.java"


# instance fields
.field private comparator:Lcom/jme3/renderer/queue/GeometryComparator;

.field private geometries:[Lcom/jme3/scene/Geometry;

.field private geometries2:[Lcom/jme3/scene/Geometry;

.field private size:I


# direct methods
.method public constructor <init>(Lcom/jme3/renderer/queue/GeometryComparator;)V
    .locals 2
    .parameter "comparator"

    .prologue
    const/16 v1, 0x20

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    .line 64
    new-array v0, v1, [Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    .line 65
    new-array v0, v1, [Lcom/jme3/scene/Geometry;

    iput-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries2:[Lcom/jme3/scene/Geometry;

    .line 66
    iput-object p1, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    .line 67
    return-void
.end method


# virtual methods
.method public add(Lcom/jme3/scene/Geometry;)V
    .locals 4
    .parameter "g"

    .prologue
    const/4 v3, 0x0

    .line 106
    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    iget-object v2, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 107
    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Lcom/jme3/scene/Geometry;

    .line 108
    .local v0, temp:[Lcom/jme3/scene/Geometry;
    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iput-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    .line 111
    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/jme3/scene/Geometry;

    iput-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries2:[Lcom/jme3/scene/Geometry;

    .line 113
    .end local v0           #temp:[Lcom/jme3/scene/Geometry;
    :cond_0
    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    aput-object p1, v1, v2

    .line 114
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    .line 125
    return-void
.end method

.method public get(I)Lcom/jme3/scene/Geometry;
    .locals 1
    .parameter "index"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 1
    .parameter "cam"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    invoke-interface {v0, p1}, Lcom/jme3/renderer/queue/GeometryComparator;->setCamera(Lcom/jme3/renderer/Camera;)V

    .line 77
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    return v0
.end method

.method public sort()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    iget v0, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries2:[Lcom/jme3/scene/Geometry;

    iget v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v0, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries2:[Lcom/jme3/scene/Geometry;

    iget-object v1, p0, Lcom/jme3/renderer/queue/GeometryList;->geometries:[Lcom/jme3/scene/Geometry;

    iget v2, p0, Lcom/jme3/renderer/queue/GeometryList;->size:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/jme3/renderer/queue/GeometryList;->comparator:Lcom/jme3/renderer/queue/GeometryComparator;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/jme3/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 142
    :cond_0
    return-void
.end method
