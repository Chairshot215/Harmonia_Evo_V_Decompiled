.class public final Lcom/jme3/math/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/jme3/math/Matrix4f; = null

.field public static final ZERO:Lcom/jme3/math/Matrix4f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 60
    const-class v0, Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    .line 65
    new-instance v0, Lcom/jme3/math/Matrix4f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/jme3/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/jme3/math/Matrix4f;->ZERO:Lcom/jme3/math/Matrix4f;

    .line 66
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    sput-object v0, Lcom/jme3/math/Matrix4f;->IDENTITY:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 75
    return-void
.end method

.method public constructor <init>(FFFFFFFFFFFFFFFF)V
    .locals 1
    .parameter "m00"
    .parameter "m01"
    .parameter "m02"
    .parameter "m03"
    .parameter "m10"
    .parameter "m11"
    .parameter "m12"
    .parameter "m13"
    .parameter "m20"
    .parameter "m21"
    .parameter "m22"
    .parameter "m23"
    .parameter "m30"
    .parameter "m31"
    .parameter "m32"
    .parameter "m33"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 86
    iput p2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 87
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 88
    iput p4, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 89
    iput p5, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 90
    iput p6, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 91
    iput p7, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 92
    iput p8, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 93
    iput p9, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 94
    iput p10, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 95
    iput p11, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 96
    iput p12, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 97
    iput p13, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 98
    iput p14, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 99
    move/from16 v0, p15

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 100
    move/from16 v0, p16

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 101
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Matrix4f;
    .locals 2

    .prologue
    .line 2300
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Matrix4f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2096
    instance-of v3, p1, Lcom/jme3/math/Matrix4f;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 2157
    :cond_1
    :goto_0
    return v1

    .line 2100
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 2104
    check-cast v0, Lcom/jme3/math/Matrix4f;

    .line 2105
    .local v0, comp:Lcom/jme3/math/Matrix4f;
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 2106
    goto :goto_0

    .line 2108
    :cond_3
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 2109
    goto :goto_0

    .line 2111
    :cond_4
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 2112
    goto :goto_0

    .line 2114
    :cond_5
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 2115
    goto :goto_0

    .line 2118
    :cond_6
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 2119
    goto :goto_0

    .line 2121
    :cond_7
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 2122
    goto :goto_0

    .line 2124
    :cond_8
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 2125
    goto :goto_0

    .line 2127
    :cond_9
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 2128
    goto :goto_0

    .line 2131
    :cond_a
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 2132
    goto :goto_0

    .line 2134
    :cond_b
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_c

    move v1, v2

    .line 2135
    goto :goto_0

    .line 2137
    :cond_c
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_d

    move v1, v2

    .line 2138
    goto/16 :goto_0

    .line 2140
    :cond_d
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    .line 2141
    goto/16 :goto_0

    .line 2144
    :cond_e
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m30:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 2145
    goto/16 :goto_0

    .line 2147
    :cond_f
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    .line 2148
    goto/16 :goto_0

    .line 2150
    :cond_10
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    .line 2151
    goto/16 :goto_0

    .line 2153
    :cond_11
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iget v4, v0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 2154
    goto/16 :goto_0
.end method

.method public fillFloatArray([FZ)V
    .locals 6
    .parameter "f"
    .parameter "columnMajor"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 757
    if-eqz p2, :cond_0

    .line 758
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v0, p1, v1

    .line 759
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v0, p1, v2

    .line 760
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v0, p1, v3

    .line 761
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v0, p1, v4

    .line 762
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v0, p1, v5

    .line 763
    const/4 v0, 0x5

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 764
    const/4 v0, 0x6

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 765
    const/4 v0, 0x7

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 766
    const/16 v0, 0x8

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v1, p1, v0

    .line 767
    const/16 v0, 0x9

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 768
    const/16 v0, 0xa

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 769
    const/16 v0, 0xb

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 770
    const/16 v0, 0xc

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v1, p1, v0

    .line 771
    const/16 v0, 0xd

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 772
    const/16 v0, 0xe

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 773
    const/16 v0, 0xf

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    aput v1, p1, v0

    .line 792
    :goto_0
    return-void

    .line 775
    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    aput v0, p1, v1

    .line 776
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    aput v0, p1, v2

    .line 777
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    aput v0, p1, v3

    .line 778
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    aput v0, p1, v4

    .line 779
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    aput v0, p1, v5

    .line 780
    const/4 v0, 0x5

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    aput v1, p1, v0

    .line 781
    const/4 v0, 0x6

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    aput v1, p1, v0

    .line 782
    const/4 v0, 0x7

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    aput v1, p1, v0

    .line 783
    const/16 v0, 0x8

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    aput v1, p1, v0

    .line 784
    const/16 v0, 0x9

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    aput v1, p1, v0

    .line 785
    const/16 v0, 0xa

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    aput v1, p1, v0

    .line 786
    const/16 v0, 0xb

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    aput v1, p1, v0

    .line 787
    const/16 v0, 0xc

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    aput v1, p1, v0

    .line 788
    const/16 v0, 0xd

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    aput v1, p1, v0

    .line 789
    const/16 v0, 0xe

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    aput v1, p1, v0

    .line 790
    const/16 v0, 0xf

    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    aput v1, p1, v0

    goto :goto_0
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 4
    .parameter "fb"
    .parameter "columnMajor"

    .prologue
    .line 745
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 748
    .local v0, vars:Lcom/jme3/util/TempVars;
    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/jme3/math/Matrix4f;->fillFloatArray([FZ)V

    .line 749
    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 751
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 753
    return-object p1
.end method

.method public fromFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 6
    .parameter "location"
    .parameter "direction"
    .parameter "up"
    .parameter "left"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 159
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v4

    .line 161
    .local v4, vars:Lcom/jme3/util/TempVars;
    iget-object v5, v4, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 162
    .local v0, f:Lcom/jme3/math/Vector3f;
    iget-object v5, v4, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 163
    .local v1, s:Lcom/jme3/math/Vector3f;
    iget-object v5, v4, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 167
    .local v3, u:Lcom/jme3/math/Vector3f;
    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 168
    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 169
    iget v5, v1, Lcom/jme3/math/Vector3f;->z:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 171
    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 172
    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 173
    iget v5, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 175
    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    neg-float v5, v5

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 176
    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v5, v5

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 177
    iget v5, v0, Lcom/jme3/math/Vector3f;->z:F

    neg-float v5, v5

    iput v5, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 192
    iget-object v2, v4, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 193
    .local v2, transMatrix:Lcom/jme3/math/Matrix4f;
    invoke-virtual {v2}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 194
    iget v5, p1, Lcom/jme3/math/Vector3f;->x:F

    neg-float v5, v5

    iput v5, v2, Lcom/jme3/math/Matrix4f;->m03:F

    .line 195
    iget v5, p1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v5, v5

    iput v5, v2, Lcom/jme3/math/Matrix4f;->m13:F

    .line 196
    iget v5, p1, Lcom/jme3/math/Vector3f;->z:F

    neg-float v5, v5

    iput v5, v2, Lcom/jme3/math/Matrix4f;->m23:F

    .line 197
    invoke-virtual {p0, v2}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 199
    invoke-virtual {v4}, Lcom/jme3/util/TempVars;->release()V

    .line 204
    return-void
.end method

.method public fromFrustum(FFFFFFZ)V
    .locals 3
    .parameter "near"
    .parameter "far"
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "parallel"

    .prologue
    const/high16 v2, 0x4000

    .line 864
    invoke-virtual {p0}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    .line 865
    if-eqz p7, :cond_0

    .line 867
    sub-float v0, p4, p3

    div-float v0, v2, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 869
    sub-float v0, p5, p6

    div-float v0, v2, v0

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 870
    const/high16 v0, -0x4000

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 871
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 874
    add-float v0, p4, p3

    neg-float v0, v0

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 876
    add-float v0, p5, p6

    neg-float v0, v0

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 877
    add-float v0, p2, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 896
    :goto_0
    return-void

    .line 879
    :cond_0
    mul-float v0, v2, p1

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 880
    mul-float v0, v2, p1

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 881
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 882
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 885
    add-float v0, p4, p3

    sub-float v1, p4, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 888
    add-float v0, p5, p6

    sub-float v1, p5, p6

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 891
    add-float v0, p2, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 894
    mul-float v0, v2, p2

    mul-float/2addr v0, p1

    neg-float v0, v0

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 2063
    const/16 v0, 0x25

    .line 2064
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 2065
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2066
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2067
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2069
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2070
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2071
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2072
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2074
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2075
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2076
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2077
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2079
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2080
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2081
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2082
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2084
    return v0
.end method

.method public invert()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix4f;->invert(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 18
    .parameter "store"

    .prologue
    .line 1428
    if-nez p1, :cond_0

    .line 1429
    new-instance p1, Lcom/jme3/math/Matrix4f;

    .end local p1
    invoke-direct/range {p1 .. p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    .line 1432
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    .line 1433
    .local v1, fA0:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v2, v15, v16

    .line 1434
    .local v2, fA1:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v3, v15, v16

    .line 1435
    .local v3, fA2:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v4, v15, v16

    .line 1436
    .local v4, fA3:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v5, v15, v16

    .line 1437
    .local v5, fA4:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v6, v15, v16

    .line 1438
    .local v6, fA5:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v7, v15, v16

    .line 1439
    .local v7, fB0:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v8, v15, v16

    .line 1440
    .local v8, fB1:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v9, v15, v16

    .line 1441
    .local v9, fB2:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v10, v15, v16

    .line 1442
    .local v10, fB3:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v11, v15, v16

    .line 1443
    .local v11, fB4:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v12, v15, v16

    .line 1444
    .local v12, fB5:F
    mul-float v15, v1, v12

    mul-float v16, v2, v11

    sub-float v15, v15, v16

    mul-float v16, v3, v10

    add-float v15, v15, v16

    mul-float v16, v4, v9

    add-float v15, v15, v16

    mul-float v16, v5, v8

    sub-float v15, v15, v16

    mul-float v16, v6, v7

    add-float v13, v15, v16

    .line 1446
    .local v13, fDet:F
    invoke-static {v13}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gtz v15, :cond_1

    .line 1447
    new-instance v15, Ljava/lang/ArithmeticException;

    const-string v16, "This matrix cannot be inverted"

    invoke-direct/range {v15 .. v16}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1450
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v11

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1451
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m10:F

    neg-float v15, v15

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 1452
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 1453
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m10:F

    neg-float v15, v15

    mul-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 1454
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    neg-float v15, v15

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v11

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v10

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 1455
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 1456
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    neg-float v15, v15

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 1457
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v16, v0

    mul-float v16, v16, v8

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v16, v0

    mul-float v16, v16, v7

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 1458
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v4

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 1459
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v15, v15

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 1460
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 1461
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m30:F

    neg-float v15, v15

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 1462
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m21:F

    neg-float v15, v15

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v4

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1463
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v15, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1464
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    neg-float v15, v15

    mul-float/2addr v15, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v16, v0

    mul-float v16, v16, v3

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1465
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v16, v0

    mul-float v16, v16, v2

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v16, v0

    mul-float v16, v16, v1

    add-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 1467
    const/high16 v15, 0x3f80

    div-float v14, v15, v13

    .line 1468
    .local v14, fInvDet:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    .line 1470
    return-object p1
.end method

.method public invertLocal()Lcom/jme3/math/Matrix4f;
    .locals 35

    .prologue
    .line 1480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v18, v32, v33

    .line 1481
    .local v18, fA0:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v19, v32, v33

    .line 1482
    .local v19, fA1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v20, v32, v33

    .line 1483
    .local v20, fA2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v21, v32, v33

    .line 1484
    .local v21, fA3:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v22, v32, v33

    .line 1485
    .local v22, fA4:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v23, v32, v33

    .line 1486
    .local v23, fA5:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v24, v32, v33

    .line 1487
    .local v24, fB0:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v25, v32, v33

    .line 1488
    .local v25, fB1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v26, v32, v33

    .line 1489
    .local v26, fB2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v27, v32, v33

    .line 1490
    .local v27, fB3:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v28, v32, v33

    .line 1491
    .local v28, fB4:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    sub-float v29, v32, v33

    .line 1492
    .local v29, fB5:F
    mul-float v32, v18, v29

    mul-float v33, v19, v28

    sub-float v32, v32, v33

    mul-float v33, v20, v27

    add-float v32, v32, v33

    mul-float v33, v21, v26

    add-float v32, v32, v33

    mul-float v33, v22, v25

    sub-float v32, v32, v33

    mul-float v33, v23, v24

    add-float v30, v32, v33

    .line 1494
    .local v30, fDet:F
    invoke-static/range {v30 .. v30}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v32

    const/16 v33, 0x0

    cmpg-float v32, v32, v33

    if-gtz v32, :cond_0

    .line 1495
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Matrix4f;->zero()Lcom/jme3/math/Matrix4f;

    move-result-object p0

    .line 1535
    .end local p0
    :goto_0
    return-object p0

    .line 1498
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v28

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v27

    add-float v2, v32, v33

    .line 1499
    .local v2, f00:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    sub-float v6, v32, v33

    .line 1500
    .local v6, f10:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v32, v0

    mul-float v32, v32, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    add-float v10, v32, v33

    .line 1501
    .local v10, f20:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    sub-float v14, v32, v33

    .line 1502
    .local v14, f30:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v28

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v27

    sub-float v3, v32, v33

    .line 1503
    .local v3, f01:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    mul-float v32, v32, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    add-float v7, v32, v33

    .line 1504
    .local v7, f11:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v33, v0

    mul-float v33, v33, v26

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    sub-float v11, v32, v33

    .line 1505
    .local v11, f21:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v32, v0

    mul-float v32, v32, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v33, v0

    mul-float v33, v33, v25

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v33, v0

    mul-float v33, v33, v24

    add-float v15, v32, v33

    .line 1506
    .local v15, f31:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    add-float v4, v32, v33

    .line 1507
    .local v4, f02:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    sub-float v8, v32, v33

    .line 1508
    .local v8, f12:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v32, v0

    mul-float v32, v32, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    add-float v12, v32, v33

    .line 1509
    .local v12, f22:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    sub-float v16, v32, v33

    .line 1510
    .local v16, f32:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v22

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v21

    sub-float v5, v32, v33

    .line 1511
    .local v5, f03:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    mul-float v32, v32, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    add-float v9, v32, v33

    .line 1512
    .local v9, f13:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v33, v0

    mul-float v33, v33, v20

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    sub-float v13, v32, v33

    .line 1513
    .local v13, f23:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v32, v0

    mul-float v32, v32, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v33, v0

    mul-float v33, v33, v19

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v33, v0

    mul-float v33, v33, v18

    add-float v17, v32, v33

    .line 1515
    .local v17, f33:F
    move-object/from16 v0, p0

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1516
    move-object/from16 v0, p0

    iput v3, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 1517
    move-object/from16 v0, p0

    iput v4, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 1518
    move-object/from16 v0, p0

    iput v5, v0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1519
    move-object/from16 v0, p0

    iput v6, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 1520
    move-object/from16 v0, p0

    iput v7, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 1521
    move-object/from16 v0, p0

    iput v8, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 1522
    move-object/from16 v0, p0

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1523
    move-object/from16 v0, p0

    iput v10, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 1524
    move-object/from16 v0, p0

    iput v11, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 1525
    move-object/from16 v0, p0

    iput v12, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 1526
    move-object/from16 v0, p0

    iput v13, v0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1527
    move-object/from16 v0, p0

    iput v14, v0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 1528
    move-object/from16 v0, p0

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 1529
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/math/Matrix4f;->m32:F

    .line 1530
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jme3/math/Matrix4f;->m33:F

    .line 1532
    const/high16 v32, 0x3f80

    div-float v31, v32, v30

    .line 1533
    .local v31, fInvDet:F
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(F)V

    goto/16 :goto_0
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 856
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 857
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 858
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 859
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 860
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 861
    return-void
.end method

.method public mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 21
    .parameter "in2"
    .parameter "store"

    .prologue
    .line 1014
    if-nez p2, :cond_0

    .line 1015
    new-instance p2, Lcom/jme3/math/Matrix4f;

    .end local p2
    invoke-direct/range {p2 .. p2}, Lcom/jme3/math/Matrix4f;-><init>()V

    .line 1023
    .restart local p2
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v2, v18, v19

    .line 1027
    .local v2, temp00:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v3, v18, v19

    .line 1031
    .local v3, temp01:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v4, v18, v19

    .line 1035
    .local v4, temp02:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v5, v18, v19

    .line 1040
    .local v5, temp03:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v6, v18, v19

    .line 1044
    .local v6, temp10:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v7, v18, v19

    .line 1048
    .local v7, temp11:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v8, v18, v19

    .line 1052
    .local v8, temp12:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v9, v18, v19

    .line 1057
    .local v9, temp13:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v10, v18, v19

    .line 1061
    .local v10, temp20:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v11, v18, v19

    .line 1065
    .local v11, temp21:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 1069
    .local v12, temp22:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v13, v18, v19

    .line 1074
    .local v13, temp23:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m00:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m10:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m20:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v14, v18, v19

    .line 1078
    .local v14, temp30:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m01:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m11:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m21:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 1082
    .local v15, temp31:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m02:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m12:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m22:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v16, v18, v19

    .line 1086
    .local v16, temp32:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m03:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m13:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m23:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m33:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v17, v18, v19

    .line 1091
    .local v17, temp33:F
    move-object/from16 v0, p2

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1092
    move-object/from16 v0, p2

    iput v3, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 1093
    move-object/from16 v0, p2

    iput v4, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 1094
    move-object/from16 v0, p2

    iput v5, v0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1095
    move-object/from16 v0, p2

    iput v6, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 1096
    move-object/from16 v0, p2

    iput v7, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 1097
    move-object/from16 v0, p2

    iput v8, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 1098
    move-object/from16 v0, p2

    iput v9, v0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1099
    move-object/from16 v0, p2

    iput v10, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 1100
    move-object/from16 v0, p2

    iput v11, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 1101
    move-object/from16 v0, p2

    iput v12, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 1102
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1103
    move-object/from16 v0, p2

    iput v14, v0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 1104
    move-object/from16 v0, p2

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 1105
    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jme3/math/Matrix4f;->m32:F

    .line 1106
    move/from16 v0, v17

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jme3/math/Matrix4f;->m33:F

    .line 1108
    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 1148
    if-nez p2, :cond_0

    .line 1149
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 1152
    .restart local p2
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .local v0, vx:F
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .local v1, vy:F
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 1153
    .local v2, vz:F
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 1154
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 1155
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 1157
    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector4f;Lcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 6
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 1183
    if-nez p1, :cond_0

    .line 1184
    sget-object v4, Lcom/jme3/math/Matrix4f;->logger:Ljava/util/logging/Logger;

    const-string v5, "Source vector is null, null result returned."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1185
    const/4 v4, 0x0

    .line 1197
    :goto_0
    return-object v4

    .line 1187
    :cond_0
    if-nez p2, :cond_1

    .line 1188
    new-instance p2, Lcom/jme3/math/Vector4f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    .line 1191
    .restart local p2
    :cond_1
    iget v1, p1, Lcom/jme3/math/Vector4f;->x:F

    .local v1, vx:F
    iget v2, p1, Lcom/jme3/math/Vector4f;->y:F

    .local v2, vy:F
    iget v3, p1, Lcom/jme3/math/Vector4f;->z:F

    .local v3, vz:F
    iget v0, p1, Lcom/jme3/math/Vector4f;->w:F

    .line 1192
    .local v0, vw:F
    iget v4, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Vector4f;->x:F

    .line 1193
    iget v4, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Vector4f;->y:F

    .line 1194
    iget v4, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Vector4f;->z:F

    .line 1195
    iget v4, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Vector4f;->w:F

    move-object v4, p2

    .line 1197
    goto :goto_0
.end method

.method public multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1
    .parameter "in2"

    .prologue
    .line 1122
    invoke-virtual {p0, p1, p0}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    return-object v0
.end method

.method public multLocal(F)V
    .locals 1
    .parameter "scalar"

    .prologue
    .line 957
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 958
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 959
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 960
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 961
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 962
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 963
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 964
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 965
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 966
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 967
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 968
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 969
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 970
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 971
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 972
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 973
    return-void
.end method

.method public multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 1252
    if-nez p2, :cond_0

    .line 1253
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 1256
    .restart local p2
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .local v0, vx:F
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .local v1, vy:F
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 1257
    .local v2, vz:F
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 1258
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 1259
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 1261
    return-object p2
.end method

.method public multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F
    .locals 5
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 1299
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .local v0, vx:F
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .local v1, vy:F
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 1300
    .local v2, vz:F
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m03:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 1301
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m13:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 1302
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m23:F

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 1303
    iget v3, p0, Lcom/jme3/math/Matrix4f;->m30:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m31:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m32:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix4f;->m33:F

    add-float/2addr v3, v4

    return v3
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 2181
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 2182
    .local v0, cap:Lcom/jme3/export/InputCapsule;
    const-string v1, "m00"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 2183
    const-string v1, "m01"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 2184
    const-string v1, "m02"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 2185
    const-string v1, "m03"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 2186
    const-string v1, "m10"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 2187
    const-string v1, "m11"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 2188
    const-string v1, "m12"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 2189
    const-string v1, "m13"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 2190
    const-string v1, "m20"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 2191
    const-string v1, "m21"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 2192
    const-string v1, "m22"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 2193
    const-string v1, "m23"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 2194
    const-string v1, "m30"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 2195
    const-string v1, "m31"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 2196
    const-string v1, "m32"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 2197
    const-string v1, "m33"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 2198
    return-void
.end method

.method public scale(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .parameter "scale"

    .prologue
    .line 2217
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 2218
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 2219
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 2220
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 2221
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 2222
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 2223
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 2224
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 2225
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 2226
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 2227
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 2228
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 2229
    return-void
.end method

.method public set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1
    .parameter "matrix"

    .prologue
    .line 560
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 561
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 562
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 563
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 564
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 565
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 566
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 567
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 568
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 569
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 570
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 571
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 572
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m30:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 573
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 574
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 575
    iget v0, p1, Lcom/jme3/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 576
    return-object p0
.end method

.method public setRotationQuaternion(Lcom/jme3/math/Quaternion;)V
    .locals 0
    .parameter "quat"

    .prologue
    .line 1861
    invoke-virtual {p1, p0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 1862
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1737
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1738
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 1739
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 1740
    return-void
.end method

.method public setTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 3
    .parameter "position"
    .parameter "scale"
    .parameter "rotMat"

    .prologue
    const/4 v2, 0x0

    .line 1554
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1555
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 1556
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 1557
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1558
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 1559
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 1560
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 1561
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1562
    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 1563
    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 1564
    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p3, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 1565
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1568
    iput v2, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 1569
    iput v2, p0, Lcom/jme3/math/Matrix4f;->m31:F

    .line 1570
    iput v2, p0, Lcom/jme3/math/Matrix4f;->m32:F

    .line 1571
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    .line 1572
    return-void
.end method

.method public setTranslation(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 1777
    iput p1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1778
    iput p2, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1779
    iput p3, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1780
    return-void
.end method

.method public setTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .parameter "translation"

    .prologue
    .line 1789
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    .line 1790
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    .line 1791
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    .line 1792
    return-void
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix3f;)V
    .locals 1
    .parameter "mat"

    .prologue
    .line 1724
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m00:F

    .line 1725
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m01:F

    .line 1726
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m02:F

    .line 1727
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m10:F

    .line 1728
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m11:F

    .line 1729
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m12:F

    .line 1730
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m20:F

    .line 1731
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m21:F

    .line 1732
    iget v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m22:F

    .line 1734
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix4f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2015
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2017
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2019
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m03:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2021
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2024
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2026
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2028
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2030
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2033
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2035
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2037
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2039
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m30:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2042
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m31:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2044
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m32:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2046
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    iget v1, p0, Lcom/jme3/math/Matrix4f;->m33:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2048
    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public zero()Lcom/jme3/math/Matrix4f;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1647
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m03:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 1648
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m13:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 1649
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m23:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 1650
    iput v0, p0, Lcom/jme3/math/Matrix4f;->m33:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m32:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m31:F

    iput v0, p0, Lcom/jme3/math/Matrix4f;->m30:F

    .line 1651
    return-object p0
.end method
