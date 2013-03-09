.class synthetic Lcom/jme3/renderer/android/OGLESShaderRenderer$1;
.super Ljava/lang/Object;
.source "OGLESShaderRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/android/OGLESShaderRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$material$RenderState$BlendMode:[I

.field static final synthetic $SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$Mesh$Mode:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

.field static final synthetic $SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

.field static final synthetic $SwitchMap$com$jme3$shader$Shader$ShaderType:[I

.field static final synthetic $SwitchMap$com$jme3$shader$VarType:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MagFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$MinFilter:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$Type:[I

.field static final synthetic $SwitchMap$com$jme3$texture$Texture$WrapMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2551
    invoke-static {}, Lcom/jme3/scene/Mesh$Mode;->values()[Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    :try_start_0
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3c

    :goto_1
    :try_start_2
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3a

    :goto_3
    :try_start_4
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_39

    :goto_4
    :try_start_5
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_38

    :goto_5
    :try_start_6
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$Mesh$Mode:[I

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_37

    .line 2050
    :goto_6
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Format;->values()[Lcom/jme3/scene/VertexBuffer$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    :try_start_7
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Byte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_36

    :goto_7
    :try_start_8
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedByte:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_35

    :goto_8
    :try_start_9
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Short:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_34

    :goto_9
    :try_start_a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedShort:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_33

    :goto_a
    :try_start_b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Int:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_32

    :goto_b
    :try_start_c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->UnsignedInt:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_31

    :goto_c
    :try_start_d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Float:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_30

    :goto_d
    :try_start_e
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Format:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Format;->Double:Lcom/jme3/scene/VertexBuffer$Format;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2f

    .line 2037
    :goto_e
    invoke-static {}, Lcom/jme3/scene/VertexBuffer$Usage;->values()[Lcom/jme3/scene/VertexBuffer$Usage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    :try_start_f
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2e

    :goto_f
    :try_start_10
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Dynamic:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2d

    :goto_10
    :try_start_11
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$scene$VertexBuffer$Usage:[I

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Usage;->Stream:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer$Usage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_2c

    .line 1761
    :goto_11
    invoke-static {}, Lcom/jme3/texture/Texture$WrapMode;->values()[Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    :try_start_12
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2b

    :goto_12
    :try_start_13
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2a

    :goto_13
    :try_start_14
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_29

    :goto_14
    :try_start_15
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_28

    :goto_15
    :try_start_16
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$WrapMode:[I

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$WrapMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_27

    .line 1742
    :goto_16
    invoke-static {}, Lcom/jme3/texture/Texture$MinFilter;->values()[Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    :try_start_17
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_26

    :goto_17
    :try_start_18
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_25

    :goto_18
    :try_start_19
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_24

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_23

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_22

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MinFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MinFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_21

    .line 1731
    :goto_1c
    invoke-static {}, Lcom/jme3/texture/Texture$MagFilter;->values()[Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    :try_start_1d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MagFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_20

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$MagFilter:[I

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$MagFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1f

    .line 1716
    :goto_1e
    invoke-static {}, Lcom/jme3/texture/Texture$Type;->values()[Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    :try_start_1f
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1e

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_1d

    :goto_20
    :try_start_21
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_1c

    :goto_21
    :try_start_22
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1b

    .line 949
    :goto_22
    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    :try_start_23
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_1a

    :goto_23
    :try_start_24
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$Shader$ShaderType:[I

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1}, Lcom/jme3/shader/Shader$ShaderType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_19

    .line 815
    :goto_24
    invoke-static {}, Lcom/jme3/shader/VarType;->values()[Lcom/jme3/shader/VarType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    :try_start_25
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_18

    :goto_25
    :try_start_26
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_17

    :goto_26
    :try_start_27
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_16

    :goto_27
    :try_start_28
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_15

    :goto_28
    :try_start_29
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_14

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_13

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_12

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_11

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_10

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_f

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_e

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_d

    :goto_30
    :try_start_31
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$shader$VarType:[I

    sget-object v1, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {v1}, Lcom/jme3/shader/VarType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_c

    .line 611
    :goto_31
    invoke-static {}, Lcom/jme3/material/RenderState$BlendMode;->values()[Lcom/jme3/material/RenderState$BlendMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    :try_start_32
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_b

    :goto_32
    :try_start_33
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_a

    :goto_33
    :try_start_34
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_9

    :goto_34
    :try_start_35
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_8

    :goto_35
    :try_start_36
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_7

    :goto_36
    :try_start_37
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_6

    :goto_37
    :try_start_38
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_5

    :goto_38
    :try_start_39
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$BlendMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$BlendMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_4

    .line 569
    :goto_39
    invoke-static {}, Lcom/jme3/material/RenderState$FaceCullMode;->values()[Lcom/jme3/material/RenderState$FaceCullMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    :try_start_3a
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_2

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/jme3/renderer/android/OGLESShaderRenderer$1;->$SwitchMap$com$jme3$material$RenderState$FaceCullMode:[I

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v1}, Lcom/jme3/material/RenderState$FaceCullMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_0

    :goto_3d
    return-void

    :catch_0
    move-exception v0

    goto :goto_3d

    :catch_1
    move-exception v0

    goto :goto_3c

    :catch_2
    move-exception v0

    goto :goto_3b

    :catch_3
    move-exception v0

    goto :goto_3a

    .line 611
    :catch_4
    move-exception v0

    goto :goto_39

    :catch_5
    move-exception v0

    goto :goto_38

    :catch_6
    move-exception v0

    goto :goto_37

    :catch_7
    move-exception v0

    goto :goto_36

    :catch_8
    move-exception v0

    goto :goto_35

    :catch_9
    move-exception v0

    goto/16 :goto_34

    :catch_a
    move-exception v0

    goto/16 :goto_33

    :catch_b
    move-exception v0

    goto/16 :goto_32

    .line 815
    :catch_c
    move-exception v0

    goto/16 :goto_31

    :catch_d
    move-exception v0

    goto/16 :goto_30

    :catch_e
    move-exception v0

    goto/16 :goto_2f

    :catch_f
    move-exception v0

    goto/16 :goto_2e

    :catch_10
    move-exception v0

    goto/16 :goto_2d

    :catch_11
    move-exception v0

    goto/16 :goto_2c

    :catch_12
    move-exception v0

    goto/16 :goto_2b

    :catch_13
    move-exception v0

    goto/16 :goto_2a

    :catch_14
    move-exception v0

    goto/16 :goto_29

    :catch_15
    move-exception v0

    goto/16 :goto_28

    :catch_16
    move-exception v0

    goto/16 :goto_27

    :catch_17
    move-exception v0

    goto/16 :goto_26

    :catch_18
    move-exception v0

    goto/16 :goto_25

    .line 949
    :catch_19
    move-exception v0

    goto/16 :goto_24

    :catch_1a
    move-exception v0

    goto/16 :goto_23

    .line 1716
    :catch_1b
    move-exception v0

    goto/16 :goto_22

    :catch_1c
    move-exception v0

    goto/16 :goto_21

    :catch_1d
    move-exception v0

    goto/16 :goto_20

    :catch_1e
    move-exception v0

    goto/16 :goto_1f

    .line 1731
    :catch_1f
    move-exception v0

    goto/16 :goto_1e

    :catch_20
    move-exception v0

    goto/16 :goto_1d

    .line 1742
    :catch_21
    move-exception v0

    goto/16 :goto_1c

    :catch_22
    move-exception v0

    goto/16 :goto_1b

    :catch_23
    move-exception v0

    goto/16 :goto_1a

    :catch_24
    move-exception v0

    goto/16 :goto_19

    :catch_25
    move-exception v0

    goto/16 :goto_18

    :catch_26
    move-exception v0

    goto/16 :goto_17

    .line 1761
    :catch_27
    move-exception v0

    goto/16 :goto_16

    :catch_28
    move-exception v0

    goto/16 :goto_15

    :catch_29
    move-exception v0

    goto/16 :goto_14

    :catch_2a
    move-exception v0

    goto/16 :goto_13

    :catch_2b
    move-exception v0

    goto/16 :goto_12

    .line 2037
    :catch_2c
    move-exception v0

    goto/16 :goto_11

    :catch_2d
    move-exception v0

    goto/16 :goto_10

    :catch_2e
    move-exception v0

    goto/16 :goto_f

    .line 2050
    :catch_2f
    move-exception v0

    goto/16 :goto_e

    :catch_30
    move-exception v0

    goto/16 :goto_d

    :catch_31
    move-exception v0

    goto/16 :goto_c

    :catch_32
    move-exception v0

    goto/16 :goto_b

    :catch_33
    move-exception v0

    goto/16 :goto_a

    :catch_34
    move-exception v0

    goto/16 :goto_9

    :catch_35
    move-exception v0

    goto/16 :goto_8

    :catch_36
    move-exception v0

    goto/16 :goto_7

    .line 2551
    :catch_37
    move-exception v0

    goto/16 :goto_6

    :catch_38
    move-exception v0

    goto/16 :goto_5

    :catch_39
    move-exception v0

    goto/16 :goto_4

    :catch_3a
    move-exception v0

    goto/16 :goto_3

    :catch_3b
    move-exception v0

    goto/16 :goto_2

    :catch_3c
    move-exception v0

    goto/16 :goto_1

    :catch_3d
    move-exception v0

    goto/16 :goto_0
.end method
