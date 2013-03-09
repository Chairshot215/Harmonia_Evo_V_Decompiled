.class public Lcom/jme3/renderer/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/Camera$FrustumIntersect;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected coeffBottom:[F

.field protected coeffLeft:[F

.field protected coeffRight:[F

.field protected coeffTop:[F

.field protected frustumBottom:F

.field protected frustumFar:F

.field protected frustumLeft:F

.field protected frustumNear:F

.field protected frustumRight:F

.field protected frustumTop:F

.field private guiBounding:Lcom/jme3/bounding/BoundingBox;

.field protected height:I

.field protected location:Lcom/jme3/math/Vector3f;

.field protected name:Ljava/lang/String;

.field private parallelProjection:Z

.field private planeState:I

.field protected projectionMatrix:Lcom/jme3/math/Matrix4f;

.field protected projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

.field protected rotation:Lcom/jme3/math/Quaternion;

.field protected viewMatrix:Lcom/jme3/math/Matrix4f;

.field protected viewPortBottom:F

.field protected viewPortLeft:F

.field protected viewPortRight:F

.field protected viewPortTop:F

.field protected viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

.field protected viewportChanged:Z

.field protected width:I

.field protected worldPlane:[Lcom/jme3/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    .line 199
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 200
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 201
    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 202
    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    .line 210
    new-array v1, v3, [Lcom/jme3/math/Plane;

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 212
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    new-instance v2, Lcom/jme3/math/Plane;

    invoke-direct {v2}, Lcom/jme3/math/Plane;-><init>()V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    const/high16 v2, -0x4100

    const/high16 v1, 0x3f80

    const/4 v3, 0x2

    .line 221
    invoke-direct {p0}, Lcom/jme3/renderer/Camera;-><init>()V

    .line 222
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 223
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    .line 225
    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    .line 226
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    .line 227
    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    .line 228
    iput v5, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 229
    iput v5, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    .line 230
    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    .line 232
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    .line 233
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    .line 234
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    .line 235
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    .line 237
    iput v4, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    .line 238
    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    .line 239
    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    .line 240
    iput v4, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    .line 242
    iput p1, p0, Lcom/jme3/renderer/Camera;->width:I

    .line 243
    iput p2, p0, Lcom/jme3/renderer/Camera;->height:I

    .line 245
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 246
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    .line 247
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 249
    sget-object v0, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Camera created (W: {0}, H: {1})"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method private setGuiBounding()V
    .locals 11

    .prologue
    const/high16 v8, 0x4000

    const/4 v10, 0x0

    .line 1145
    iget v6, p0, Lcom/jme3/renderer/Camera;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    mul-float v2, v6, v7

    .line 1146
    .local v2, sx:F
    iget v6, p0, Lcom/jme3/renderer/Camera;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    mul-float v0, v6, v7

    .line 1147
    .local v0, ex:F
    iget v6, p0, Lcom/jme3/renderer/Camera;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    mul-float v3, v6, v7

    .line 1148
    .local v3, sy:F
    iget v6, p0, Lcom/jme3/renderer/Camera;->height:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    mul-float v1, v6, v7

    .line 1149
    .local v1, ey:F
    sub-float v6, v0, v2

    div-float/2addr v6, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1150
    .local v4, xExtent:F
    sub-float v6, v1, v3

    div-float/2addr v6, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1151
    .local v5, yExtent:F
    iget-object v6, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    new-instance v7, Lcom/jme3/math/Vector3f;

    add-float v8, v2, v4

    add-float v9, v3, v5

    invoke-direct {v7, v8, v9, v10}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v6, v7}, Lcom/jme3/bounding/BoundingBox;->setCenter(Lcom/jme3/math/Vector3f;)V

    .line 1152
    iget-object v6, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v6, v4}, Lcom/jme3/bounding/BoundingBox;->setXExtent(F)V

    .line 1153
    iget-object v6, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v6, v5}, Lcom/jme3/bounding/BoundingBox;->setYExtent(F)V

    .line 1154
    iget-object v6, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    const v7, 0x7f7fffff

    invoke-virtual {v6, v7}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    .line 1155
    return-void
.end method


# virtual methods
.method public clearViewportChanged()V
    .locals 1

    .prologue
    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    .line 1134
    return-void
.end method

.method public clone()Lcom/jme3/renderer/Camera;
    .locals 5

    .prologue
    .line 255
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Camera;

    .line 256
    .local v0, cam:Lcom/jme3/renderer/Camera;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    .line 257
    const/4 v3, 0x0

    iput v3, v0, Lcom/jme3/renderer/Camera;->planeState:I

    .line 259
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/jme3/math/Plane;

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    .line 260
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 261
    iget-object v3, v0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object v4

    aput-object v4, v3, v2

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    .line 265
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    .line 266
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    .line 267
    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    .line 269
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 270
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    .line 272
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    if-eqz v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    .line 276
    :cond_1
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 277
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 278
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v3

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 279
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingBox;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    check-cast v3, Lcom/jme3/bounding/BoundingBox;

    iput-object v3, v0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    .line 281
    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->update()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v0

    .line 284
    .end local v0           #cam:Lcom/jme3/renderer/Camera;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->clone()Lcom/jme3/renderer/Camera;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 6
    .parameter "bound"

    .prologue
    .line 1014
    if-nez p1, :cond_1

    .line 1015
    sget-object v3, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 1046
    :cond_0
    :goto_0
    return-object v3

    .line 1019
    :cond_1
    sget-object v3, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 1021
    .local v3, rVal:Lcom/jme3/renderer/Camera$FrustumIntersect;
    const/4 v1, 0x6

    .local v1, planeCounter:I
    :goto_1
    if-ltz v1, :cond_0

    .line 1022
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCheckPlane()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 1021
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1025
    :cond_3
    const/4 v5, 0x6

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCheckPlane()I

    move-result v2

    .line 1028
    .local v2, planeId:I
    :goto_3
    const/4 v5, 0x1

    shl-int v0, v5, v2

    .line 1029
    .local v0, mask:I
    iget v5, p0, Lcom/jme3/renderer/Camera;->planeState:I

    and-int/2addr v5, v0

    if-nez v5, :cond_2

    .line 1030
    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v2

    invoke-virtual {p1, v5}, Lcom/jme3/bounding/BoundingVolume;->whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;

    move-result-object v4

    .line 1032
    .local v4, side:Lcom/jme3/math/Plane$Side;
    sget-object v5, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    if-ne v4, v5, :cond_5

    .line 1034
    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingVolume;->setCheckPlane(I)V

    .line 1035
    sget-object v3, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    goto :goto_0

    .end local v0           #mask:I
    .end local v2           #planeId:I
    .end local v4           #side:Lcom/jme3/math/Plane$Side;
    :cond_4
    move v2, v1

    .line 1025
    goto :goto_3

    .line 1036
    .restart local v0       #mask:I
    .restart local v2       #planeId:I
    .restart local v4       #side:Lcom/jme3/math/Plane$Side;
    :cond_5
    sget-object v5, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    if-ne v4, v5, :cond_6

    .line 1039
    iget v5, p0, Lcom/jme3/renderer/Camera;->planeState:I

    or-int/2addr v5, v0

    iput v5, p0, Lcom/jme3/renderer/Camera;->planeState:I

    goto :goto_2

    .line 1041
    :cond_6
    sget-object v3, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    goto :goto_2
.end method

.method public containsGui(Lcom/jme3/bounding/BoundingVolume;)Z
    .locals 1
    .parameter "bound"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v0

    return v0
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "store"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getFrustumFar()F
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    return v0
.end method

.method public getFrustumNear()F
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1378
    iget v0, p0, Lcom/jme3/renderer/Camera;->height:I

    return v0
.end method

.method public getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "store"

    .prologue
    .line 647
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getPlaneState()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/jme3/renderer/Camera;->planeState:I

    return v0
.end method

.method public getProjectionMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    .line 1095
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    goto :goto_0
.end method

.method public getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "store"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getViewMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getViewPortBottom()F
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    return v0
.end method

.method public getViewPortLeft()F
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    return v0
.end method

.method public getViewPortRight()F
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    return v0
.end method

.method public getViewPortTop()F
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    return v0
.end method

.method public getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/jme3/renderer/Camera;->width:I

    return v0
.end method

.method public isParallelProjection()Z
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    return v0
.end method

.method public isViewportChanged()Z
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    return v0
.end method

.method public lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 7
    .parameter "pos"
    .parameter "worldUpVector"

    .prologue
    const/4 v6, 0x0

    .line 814
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v3

    .line 815
    .local v3, vars:Lcom/jme3/util/TempVars;
    iget-object v0, v3, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 816
    .local v0, newDirection:Lcom/jme3/math/Vector3f;
    iget-object v2, v3, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 817
    .local v2, newUp:Lcom/jme3/math/Vector3f;
    iget-object v1, v3, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 819
    .local v1, newLeft:Lcom/jme3/math/Vector3f;
    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 821
    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 822
    sget-object v4, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 826
    :cond_0
    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 827
    sget-object v4, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 828
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    .line 829
    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5, v6}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 835
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    .line 837
    iget-object v4, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4, v1, v2, v0}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 838
    iget-object v4, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v4}, Lcom/jme3/math/Quaternion;->normalizeLocal()V

    .line 839
    invoke-virtual {v3}, Lcom/jme3/util/TempVars;->release()V

    .line 841
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 842
    return-void

    .line 831
    :cond_2
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v5, v5

    invoke-virtual {v1, v6, v4, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0
.end method

.method public onFrameChange()V
    .locals 14

    .prologue
    .line 1212
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v8

    .line 1214
    .local v8, vars:Lcom/jme3/util/TempVars;
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v9}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 1215
    .local v3, left:Lcom/jme3/math/Vector3f;
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v9}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 1216
    .local v2, direction:Lcom/jme3/math/Vector3f;
    iget-object v9, v8, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v9}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    .line 1218
    .local v7, up:Lcom/jme3/math/Vector3f;
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v9}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 1221
    .local v1, dirDotLocation:F
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 1222
    .local v4, leftPlaneNormal:Lcom/jme3/math/Vector3f;
    iget v9, v3, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v4, Lcom/jme3/math/Vector3f;->x:F

    .line 1223
    iget v9, v3, Lcom/jme3/math/Vector3f;->y:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v4, Lcom/jme3/math/Vector3f;->y:F

    .line 1224
    iget v9, v3, Lcom/jme3/math/Vector3f;->z:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v4, Lcom/jme3/math/Vector3f;->z:F

    .line 1225
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    iget-object v12, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    invoke-virtual {v4, v9, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 1227
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1230
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 1231
    .local v5, rightPlaneNormal:Lcom/jme3/math/Vector3f;
    iget v9, v3, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v5, Lcom/jme3/math/Vector3f;->x:F

    .line 1232
    iget v9, v3, Lcom/jme3/math/Vector3f;->y:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v5, Lcom/jme3/math/Vector3f;->y:F

    .line 1233
    iget v9, v3, Lcom/jme3/math/Vector3f;->z:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v5, Lcom/jme3/math/Vector3f;->z:F

    .line 1234
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    iget-object v12, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    invoke-virtual {v5, v9, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 1236
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1239
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 1240
    .local v0, bottomPlaneNormal:Lcom/jme3/math/Vector3f;
    iget v9, v7, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 1241
    iget v9, v7, Lcom/jme3/math/Vector3f;->y:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 1242
    iget v9, v7, Lcom/jme3/math/Vector3f;->z:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/jme3/math/Vector3f;->z:F

    .line 1243
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    iget-object v12, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    invoke-virtual {v0, v9, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 1245
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1248
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 1249
    .local v6, topPlaneNormal:Lcom/jme3/math/Vector3f;
    iget v9, v7, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 1250
    iget v9, v7, Lcom/jme3/math/Vector3f;->y:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 1251
    iget v9, v7, Lcom/jme3/math/Vector3f;->z:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iput v9, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 1252
    iget v9, v2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    mul-float/2addr v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    mul-float/2addr v10, v11

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    iget-object v12, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    invoke-virtual {v6, v9, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 1254
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v6}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v10

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1256
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1257
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v10

    iget v11, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1258
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v10

    iget v11, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1259
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v10

    iget v11, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1260
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v10

    iget v11, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1264
    :cond_0
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v9, v3}, Lcom/jme3/math/Plane;->setNormal(Lcom/jme3/math/Vector3f;)V

    .line 1265
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v10, v10

    iget v11, v2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v11, v11

    iget v12, v2, Lcom/jme3/math/Vector3f;->z:F

    neg-float v12, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    .line 1266
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    iget v10, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    add-float/2addr v10, v1

    neg-float v10, v10

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1269
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    iget v10, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v11, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v12, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    .line 1270
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    iget v10, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    add-float/2addr v10, v1

    invoke-virtual {v9, v10}, Lcom/jme3/math/Plane;->setConstant(F)V

    .line 1272
    iget-object v9, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v10, v2, v7, v3}, Lcom/jme3/math/Matrix4f;->fromFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 1274
    invoke-virtual {v8}, Lcom/jme3/util/TempVars;->release()V

    .line 1277
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    .line 1278
    return-void
.end method

.method public onFrustumChange()V
    .locals 14

    .prologue
    const/high16 v5, 0x3f80

    const/high16 v4, -0x4080

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1164
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float v11, v0, v1

    .line 1166
    .local v11, nearSquared:F
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    mul-float v10, v0, v1

    .line 1167
    .local v10, leftSquared:F
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    mul-float v12, v0, v1

    .line 1168
    .local v12, rightSquared:F
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    mul-float v8, v0, v1

    .line 1169
    .local v8, bottomSquared:F
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    mul-float v13, v0, v1

    .line 1171
    .local v13, topSquared:F
    add-float v0, v11, v10

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1172
    .local v9, inverseLength:F
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1173
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1175
    add-float v0, v11, v12

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1176
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1177
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1179
    add-float v0, v11, v8

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1180
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1181
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1183
    add-float v0, v11, v13

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v9

    .line 1184
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    neg-float v1, v1

    mul-float/2addr v1, v9

    aput v1, v0, v2

    .line 1185
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    mul-float/2addr v1, v9

    aput v1, v0, v3

    .line 1200
    .end local v8           #bottomSquared:F
    .end local v9           #inverseLength:F
    .end local v10           #leftSquared:F
    .end local v11           #nearSquared:F
    .end local v12           #rightSquared:F
    .end local v13           #topSquared:F
    :goto_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iget v2, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    iget v3, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iget v4, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    iget v5, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iget v6, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iget-boolean v7, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual/range {v0 .. v7}, Lcom/jme3/math/Matrix4f;->fromFrustum(FFFFFFZ)V

    .line 1205
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 1206
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    aput v5, v0, v2

    .line 1188
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    aput v1, v0, v3

    .line 1190
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    aput v4, v0, v2

    .line 1191
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    aput v1, v0, v3

    .line 1193
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    aput v5, v0, v2

    .line 1194
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    aput v1, v0, v3

    .line 1196
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    aput v4, v0, v2

    .line 1197
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    aput v1, v0, v3

    goto :goto_0
.end method

.method public onViewPortChange()V
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    .line 1141
    invoke-direct {p0}, Lcom/jme3/renderer/Camera;->setGuiBounding()V

    .line 1142
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 8
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    const/high16 v5, -0x4100

    const/high16 v4, 0x3f80

    const/4 v3, 0x2

    .line 1412
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 1413
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "location"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 1414
    const-string v1, "rotation"

    sget-object v2, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    .line 1415
    const-string v1, "frustumNear"

    invoke-interface {v0, v1, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    .line 1416
    const-string v1, "frustumFar"

    const/high16 v2, 0x4000

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    .line 1417
    const-string v1, "frustumLeft"

    invoke-interface {v0, v1, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    .line 1418
    const-string v1, "frustumRight"

    invoke-interface {v0, v1, v7}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 1419
    const-string v1, "frustumTop"

    invoke-interface {v0, v1, v7}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    .line 1420
    const-string v1, "frustumBottom"

    invoke-interface {v0, v1, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    .line 1421
    const-string v1, "coeffLeft"

    new-array v2, v3, [F

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    .line 1422
    const-string v1, "coeffRight"

    new-array v2, v3, [F

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    .line 1423
    const-string v1, "coeffBottom"

    new-array v2, v3, [F

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    .line 1424
    const-string v1, "coeffTop"

    new-array v2, v3, [F

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    .line 1425
    const-string v1, "viewPortLeft"

    invoke-interface {v0, v1, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    .line 1426
    const-string v1, "viewPortRight"

    invoke-interface {v0, v1, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    .line 1427
    const-string v1, "viewPortTop"

    invoke-interface {v0, v1, v4}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    .line 1428
    const-string v1, "viewPortBottom"

    invoke-interface {v0, v1, v6}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    .line 1429
    const-string v1, "width"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->width:I

    .line 1430
    const-string v1, "height"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/jme3/renderer/Camera;->height:I

    .line 1431
    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    .line 1432
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 1433
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    .line 1434
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 1435
    return-void
.end method

.method public resize(IIZ)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "fixAspect"

    .prologue
    .line 452
    iput p1, p0, Lcom/jme3/renderer/Camera;->width:I

    .line 453
    iput p2, p0, Lcom/jme3/renderer/Camera;->height:I

    .line 454
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    .line 456
    if-eqz p3, :cond_0

    .line 457
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 458
    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    .line 459
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 461
    :cond_0
    return-void
.end method

.method public setFrustum(FFFFFF)V
    .locals 0
    .parameter "near"
    .parameter "far"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 746
    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    .line 747
    iput p2, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    .line 748
    iput p3, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    .line 749
    iput p4, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 750
    iput p5, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    .line 751
    iput p6, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    .line 752
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 753
    return-void
.end method

.method public setFrustumPerspective(FFFF)V
    .locals 6
    .parameter "fovY"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 766
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    :cond_0
    sget-object v2, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Invalid aspect given to setFrustumPerspective: {0}"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    :goto_0
    return-void

    .line 772
    :cond_1
    const v2, 0x3c8efa35

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->tan(F)F

    move-result v2

    mul-float v0, v2, p3

    .line 773
    .local v0, h:F
    mul-float v1, v0, p2

    .line 774
    .local v1, w:F
    neg-float v2, v1

    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    .line 775
    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 776
    neg-float v2, v0

    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    .line 777
    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    .line 778
    iput p3, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    .line 779
    iput p4, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    .line 781
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    goto :goto_0
.end method

.method public setLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 667
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 668
    return-void
.end method

.method public setParallelProjection(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1294
    iput-boolean p1, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    .line 1295
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 1296
    return-void
.end method

.method public setPlaneState(I)V
    .locals 0
    .parameter "planeState"

    .prologue
    .line 889
    iput p1, p0, Lcom/jme3/renderer/Camera;->planeState:I

    .line 890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parallel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", far="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 867
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    .line 868
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 869
    return-void
.end method

.method public updateViewProjection()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 1108
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    goto :goto_0
.end method
