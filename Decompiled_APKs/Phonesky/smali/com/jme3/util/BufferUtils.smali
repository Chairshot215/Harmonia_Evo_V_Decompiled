.class public final Lcom/jme3/util/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# static fields
.field private static cleanMethod:Ljava/lang/reflect/Method;

.field private static cleanerMethod:Ljava/lang/reflect/Method;

.field private static freeMethod:Ljava/lang/reflect/Method;

.field private static final loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final ref:Ljava/lang/Object;

.field private static final trackingHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/nio/Buffer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static viewedBufferMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/jme3/util/BufferUtils;->trackingHash:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/jme3/util/BufferUtils;->ref:Ljava/lang/Object;

    .line 1148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/jme3/util/BufferUtils;->loadedMethods:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1149
    sput-object v2, Lcom/jme3/util/BufferUtils;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 1150
    sput-object v2, Lcom/jme3/util/BufferUtils;->cleanMethod:Ljava/lang/reflect/Method;

    .line 1151
    sput-object v2, Lcom/jme3/util/BufferUtils;->viewedBufferMethod:Ljava/lang/reflect/Method;

    .line 1152
    sput-object v2, Lcom/jme3/util/BufferUtils;->freeMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/nio/Buffer;)Ljava/nio/Buffer;
    .locals 1
    .parameter "buf"

    .prologue
    .line 89
    instance-of v0, p0, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Ljava/nio/FloatBuffer;

    .end local p0
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 91
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    .line 92
    check-cast p0, Ljava/nio/ShortBuffer;

    .end local p0
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    .line 93
    .restart local p0
    :cond_1
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 94
    check-cast p0, Ljava/nio/ByteBuffer;

    .end local p0
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 95
    .restart local p0
    :cond_2
    instance-of v0, p0, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_3

    .line 96
    check-cast p0, Ljava/nio/IntBuffer;

    .end local p0
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    .line 97
    .restart local p0
    :cond_3
    instance-of v0, p0, Ljava/nio/DoubleBuffer;

    if-eqz v0, :cond_4

    .line 98
    check-cast p0, Ljava/nio/DoubleBuffer;

    .end local p0
    invoke-static {p0}, Lcom/jme3/util/BufferUtils;->clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object v0

    goto :goto_0

    .line 100
    .restart local p0
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static clone(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 962
    if-nez p0, :cond_0

    .line 963
    const/4 v0, 0x0

    .line 975
    :goto_0
    return-object v0

    .line 965
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 968
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 969
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 973
    .local v0, copy:Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 971
    .end local v0           #copy:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0       #copy:Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    const/4 v0, 0x0

    .line 772
    :goto_0
    return-object v0

    .line 762
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    .line 765
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 770
    .local v0, copy:Ljava/nio/DoubleBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    goto :goto_0

    .line 768
    .end local v0           #copy:Ljava/nio/DoubleBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .restart local v0       #copy:Ljava/nio/DoubleBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 821
    if-nez p0, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 834
    :goto_0
    return-object v0

    .line 824
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 827
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 832
    .local v0, copy:Ljava/nio/FloatBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 830
    .end local v0           #copy:Ljava/nio/FloatBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .restart local v0       #copy:Ljava/nio/FloatBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 884
    if-nez p0, :cond_0

    .line 885
    const/4 v0, 0x0

    .line 897
    :goto_0
    return-object v0

    .line 887
    :cond_0
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 890
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 895
    .local v0, copy:Ljava/nio/IntBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    .line 893
    .end local v0           #copy:Ljava/nio/IntBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .restart local v0       #copy:Ljava/nio/IntBuffer;
    goto :goto_1
.end method

.method public static clone(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 1036
    if-nez p0, :cond_0

    .line 1037
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 1042
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1047
    .local v0, copy:Ljava/nio/ShortBuffer;
    :goto_1
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 1045
    .end local v0           #copy:Ljava/nio/ShortBuffer;
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .restart local v0       #copy:Ljava/nio/ShortBuffer;
    goto :goto_1
.end method

.method public static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 909
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 910
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 911
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 912
    return-object v0
.end method

.method public static createDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 721
    mul-int/lit8 v1, p0, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 722
    .local v0, buf:Ljava/nio/DoubleBuffer;
    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->clear()Ljava/nio/Buffer;

    .line 723
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 724
    return-object v0
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 784
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 785
    .local v0, buf:Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 786
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 787
    return-object v0
.end method

.method public static varargs createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "data"

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 209
    .local v0, buff:Ljava/nio/FloatBuffer;
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 210
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 211
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Quaternion;)Ljava/nio/FloatBuffer;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 197
    :goto_0
    return-object v0

    .line 188
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 189
    .local v0, buff:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 190
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 191
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 189
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 196
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Vector2f;)Ljava/nio/FloatBuffer;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 456
    if-nez p0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    .line 459
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 460
    .local v0, buff:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 461
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 462
    aget-object v2, p0, v1

    iget v2, v2, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 460
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 467
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static varargs createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 166
    :cond_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 167
    .local v0, buff:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 168
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 169
    aget-object v2, p0, v1

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget v3, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aget-object v3, p0, v1

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 167
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static createIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 846
    mul-int/lit8 v1, p0, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 847
    .local v0, buf:Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 848
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 849
    return-object v0
.end method

.method public static createShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "size"

    .prologue
    .line 987
    mul-int/lit8 v1, p0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 988
    .local v0, buf:Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 989
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->onBufferAllocated(Ljava/nio/Buffer;)V

    .line 990
    return-object v0
.end method

.method public static varargs createShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 2
    .parameter "data"

    .prologue
    .line 1015
    if-nez p0, :cond_0

    .line 1016
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    array-length v1, p0

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 1019
    .local v0, buff:Ljava/nio/ShortBuffer;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    .line 1020
    invoke-virtual {v0, p0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1021
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public static createVector3Buffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "vertices"

    .prologue
    .line 225
    mul-int/lit8 v1, p0, 0x3

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 226
    .local v0, vBuff:Ljava/nio/FloatBuffer;
    return-object v0
.end method

.method public static ensureLargeEnough(Ljava/nio/FloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "buffer"
    .parameter "required"

    .prologue
    .line 1061
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 1062
    :cond_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    .line 1063
    .local v1, position:I
    :goto_0
    add-int v2, v1, p1

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 1064
    .local v0, newVerts:Ljava/nio/FloatBuffer;
    if-eqz p0, :cond_1

    .line 1065
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 1066
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 1067
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1069
    :cond_1
    move-object p0, v0

    .line 1071
    .end local v0           #newVerts:Ljava/nio/FloatBuffer;
    .end local v1           #position:I
    :cond_2
    return-object p0

    .line 1062
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static onBufferAllocated(Ljava/nio/Buffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 153
    return-void
.end method

.method public static populateFromBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .parameter "vector"
    .parameter "buf"
    .parameter "index"

    .prologue
    .line 329
    mul-int/lit8 v0, p2, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 330
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 331
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 332
    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Quaternion;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .parameter "quat"
    .parameter "buf"
    .parameter "index"

    .prologue
    .line 283
    mul-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 285
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 286
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 287
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->getW()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 288
    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Vector2f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .parameter "vector"
    .parameter "buf"
    .parameter "index"

    .prologue
    .line 518
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 519
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 520
    return-void
.end method

.method public static setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V
    .locals 2
    .parameter "vector"
    .parameter "buf"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 302
    if-nez p1, :cond_0

    .line 314
    :goto_0
    return-void

    .line 305
    :cond_0
    if-nez p0, :cond_1

    .line 306
    mul-int/lit8 v0, p2, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 307
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 308
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0

    .line 310
    :cond_1
    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 311
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 312
    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto :goto_0
.end method
