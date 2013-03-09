.class public Lcom/jme3/util/TempVars;
.super Ljava/lang/Object;
.source "TempVars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/TempVars$TempVarsStack;
    }
.end annotation


# static fields
.field private static final varsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/jme3/util/TempVars$TempVarsStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bihStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/collision/bih/BIHNode$BIHStackData;",
            ">;"
        }
    .end annotation
.end field

.field public final bihSwapTmp:[F

.field public final color:Lcom/jme3/math/ColorRGBA;

.field public final eigen:Lcom/jme3/math/Eigen3f;

.field public final fADdU:[F

.field public final fAWdU:[F

.field public final fAWxDdU:[F

.field public final fDdU:[F

.field public final fWdU:[F

.field public final floatBuffer16:Ljava/nio/FloatBuffer;

.field public final intBuffer1:Ljava/nio/IntBuffer;

.field public final intBuffer16:Ljava/nio/IntBuffer;

.field private isUsed:Z

.field public final matrixWrite:[F

.field public final plane:Lcom/jme3/math/Plane;

.field public final quat1:Lcom/jme3/math/Quaternion;

.field public final quat2:Lcom/jme3/math/Quaternion;

.field public final skinNormals:[F

.field public final skinPositions:[F

.field public final skinTangents:[F

.field public final spatialStack:[Lcom/jme3/scene/Spatial;

.field public final tempMat3:Lcom/jme3/math/Matrix3f;

.field public final tempMat4:Lcom/jme3/math/Matrix4f;

.field public final tempMat42:Lcom/jme3/math/Matrix4f;

.field public final tri:[Lcom/jme3/math/Vector3f;

.field public final triangle:Lcom/jme3/math/Triangle;

.field public final vect1:Lcom/jme3/math/Vector3f;

.field public final vect10:Lcom/jme3/math/Vector3f;

.field public final vect2:Lcom/jme3/math/Vector3f;

.field public final vect2d:Lcom/jme3/math/Vector2f;

.field public final vect2d2:Lcom/jme3/math/Vector2f;

.field public final vect3:Lcom/jme3/math/Vector3f;

.field public final vect4:Lcom/jme3/math/Vector3f;

.field public final vect4f:Lcom/jme3/math/Vector4f;

.field public final vect5:Lcom/jme3/math/Vector3f;

.field public final vect6:Lcom/jme3/math/Vector3f;

.field public final vect7:Lcom/jme3/math/Vector3f;

.field public final vect8:Lcom/jme3/math/Vector3f;

.field public final vect9:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/jme3/util/TempVars$1;

    invoke-direct {v0}, Lcom/jme3/util/TempVars$1;-><init>()V

    sput-object v0, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v1, 0x600

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    .line 143
    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/TempVars;->intBuffer1:Ljava/nio/IntBuffer;

    .line 144
    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/TempVars;->intBuffer16:Ljava/nio/IntBuffer;

    .line 145
    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/TempVars;->floatBuffer16:Ljava/nio/FloatBuffer;

    .line 149
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->skinPositions:[F

    .line 150
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->skinNormals:[F

    .line 152
    const/16 v0, 0x800

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->skinTangents:[F

    .line 156
    new-instance v0, Lcom/jme3/math/Triangle;

    invoke-direct {v0}, Lcom/jme3/math/Triangle;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->triangle:Lcom/jme3/math/Triangle;

    .line 160
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->color:Lcom/jme3/math/ColorRGBA;

    .line 164
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 165
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    .line 166
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    .line 167
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    .line 168
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    .line 169
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    .line 170
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    .line 172
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    .line 173
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect9:Lcom/jme3/math/Vector3f;

    .line 174
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect10:Lcom/jme3/math/Vector3f;

    .line 175
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect4f:Lcom/jme3/math/Vector4f;

    .line 176
    new-array v0, v3, [Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jme3/util/TempVars;->tri:[Lcom/jme3/math/Vector3f;

    .line 182
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    .line 183
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->vect2d2:Lcom/jme3/math/Vector2f;

    .line 187
    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    .line 188
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 189
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->tempMat42:Lcom/jme3/math/Matrix4f;

    .line 193
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 194
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    .line 198
    new-instance v0, Lcom/jme3/math/Eigen3f;

    invoke-direct {v0}, Lcom/jme3/math/Eigen3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->eigen:Lcom/jme3/math/Eigen3f;

    .line 202
    new-instance v0, Lcom/jme3/math/Plane;

    invoke-direct {v0}, Lcom/jme3/math/Plane;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->plane:Lcom/jme3/math/Plane;

    .line 206
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->fWdU:[F

    .line 207
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->fAWdU:[F

    .line 208
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->fDdU:[F

    .line 209
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->fADdU:[F

    .line 210
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->fAWxDdU:[F

    .line 214
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/util/TempVars;->spatialStack:[Lcom/jme3/scene/Spatial;

    .line 215
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    .line 219
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->bihSwapTmp:[F

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public static get()Lcom/jme3/util/TempVars;
    .locals 4

    .prologue
    .line 97
    sget-object v2, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/TempVars$TempVarsStack;

    .line 99
    .local v1, stack:Lcom/jme3/util/TempVars$TempVarsStack;
    iget-object v2, v1, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    iget v3, v1, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    aget-object v0, v2, v3

    .line 101
    .local v0, instance:Lcom/jme3/util/TempVars;
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/jme3/util/TempVars;

    .end local v0           #instance:Lcom/jme3/util/TempVars;
    invoke-direct {v0}, Lcom/jme3/util/TempVars;-><init>()V

    .line 106
    .restart local v0       #instance:Lcom/jme3/util/TempVars;
    iget-object v2, v1, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    iget v3, v1, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    aput-object v0, v2, v3

    .line 109
    :cond_0
    iget v2, v1, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/jme3/util/TempVars;->isUsed:Z

    .line 113
    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This instance of TempVars was already released!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    .line 130
    sget-object v1, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/TempVars$TempVarsStack;

    .line 133
    .local v0, stack:Lcom/jme3/util/TempVars$TempVarsStack;
    iget v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    .line 136
    iget-object v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    iget v2, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    aget-object v1, v1, v2

    if-eq v1, p0, :cond_1

    .line 137
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An instance of TempVars has not been released in a called method!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_1
    return-void
.end method
