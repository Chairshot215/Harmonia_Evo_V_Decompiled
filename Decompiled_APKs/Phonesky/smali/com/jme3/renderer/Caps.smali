.class public final enum Lcom/jme3/renderer/Caps;
.super Ljava/lang/Enum;
.source "Caps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/renderer/Caps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/Caps;

.field public static final enum ARBprogram:Lcom/jme3/renderer/Caps;

.field public static final enum FloatColorBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum FloatDepthBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum FloatTexture:Lcom/jme3/renderer/Caps;

.field public static final enum FrameBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum FrameBufferMRT:Lcom/jme3/renderer/Caps;

.field public static final enum FrameBufferMultisample:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL100:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL110:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL120:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL130:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL140:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL150:Lcom/jme3/renderer/Caps;

.field public static final enum GLSL330:Lcom/jme3/renderer/Caps;

.field public static final enum GeometryShader:Lcom/jme3/renderer/Caps;

.field public static final enum MeshInstancing:Lcom/jme3/renderer/Caps;

.field public static final enum Multisample:Lcom/jme3/renderer/Caps;

.field public static final enum NonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

.field public static final enum OpenGL20:Lcom/jme3/renderer/Caps;

.field public static final enum OpenGL21:Lcom/jme3/renderer/Caps;

.field public static final enum OpenGL30:Lcom/jme3/renderer/Caps;

.field public static final enum OpenGL31:Lcom/jme3/renderer/Caps;

.field public static final enum OpenGL32:Lcom/jme3/renderer/Caps;

.field public static final enum PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum PackedFloatTexture:Lcom/jme3/renderer/Caps;

.field public static final enum SharedExponentColorBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum SharedExponentTexture:Lcom/jme3/renderer/Caps;

.field public static final enum TextureArray:Lcom/jme3/renderer/Caps;

.field public static final enum TextureBuffer:Lcom/jme3/renderer/Caps;

.field public static final enum TextureCompressionLATC:Lcom/jme3/renderer/Caps;

.field public static final enum TextureMultisample:Lcom/jme3/renderer/Caps;

.field public static final enum VertexBufferArray:Lcom/jme3/renderer/Caps;

.field public static final enum VertexTextureFetch:Lcom/jme3/renderer/Caps;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FrameBuffer"

    invoke-direct {v0, v1, v3}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    .line 64
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FrameBufferMRT"

    invoke-direct {v0, v1, v4}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FrameBufferMRT:Lcom/jme3/renderer/Caps;

    .line 73
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FrameBufferMultisample"

    invoke-direct {v0, v1, v5}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    .line 82
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "TextureMultisample"

    invoke-direct {v0, v1, v6}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    .line 87
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "OpenGL20"

    invoke-direct {v0, v1, v7}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    .line 92
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "OpenGL21"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->OpenGL21:Lcom/jme3/renderer/Caps;

    .line 97
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "OpenGL30"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    .line 102
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "OpenGL31"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    .line 107
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "OpenGL32"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    .line 115
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "ARBprogram"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->ARBprogram:Lcom/jme3/renderer/Caps;

    .line 120
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL100"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    .line 125
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL110"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL110:Lcom/jme3/renderer/Caps;

    .line 130
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL120"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL120:Lcom/jme3/renderer/Caps;

    .line 135
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL130"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL130:Lcom/jme3/renderer/Caps;

    .line 140
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL140"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL140:Lcom/jme3/renderer/Caps;

    .line 145
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL150"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL150:Lcom/jme3/renderer/Caps;

    .line 150
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GLSL330"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GLSL330:Lcom/jme3/renderer/Caps;

    .line 155
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "VertexTextureFetch"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->VertexTextureFetch:Lcom/jme3/renderer/Caps;

    .line 160
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "GeometryShader"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    .line 165
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "TextureArray"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->TextureArray:Lcom/jme3/renderer/Caps;

    .line 170
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "TextureBuffer"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->TextureBuffer:Lcom/jme3/renderer/Caps;

    .line 175
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FloatTexture"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    .line 180
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FloatColorBuffer"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FloatColorBuffer:Lcom/jme3/renderer/Caps;

    .line 185
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "FloatDepthBuffer"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    .line 190
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "PackedFloatTexture"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    .line 195
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "SharedExponentTexture"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->SharedExponentTexture:Lcom/jme3/renderer/Caps;

    .line 200
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "PackedFloatColorBuffer"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    .line 205
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "SharedExponentColorBuffer"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->SharedExponentColorBuffer:Lcom/jme3/renderer/Caps;

    .line 211
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "TextureCompressionLATC"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->TextureCompressionLATC:Lcom/jme3/renderer/Caps;

    .line 216
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "NonPowerOfTwoTextures"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->NonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    .line 219
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "MeshInstancing"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    .line 224
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "VertexBufferArray"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->VertexBufferArray:Lcom/jme3/renderer/Caps;

    .line 229
    new-instance v0, Lcom/jme3/renderer/Caps;

    const-string v1, "Multisample"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/Caps;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    .line 49
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/jme3/renderer/Caps;

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBuffer:Lcom/jme3/renderer/Caps;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMRT:Lcom/jme3/renderer/Caps;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/renderer/Caps;->TextureMultisample:Lcom/jme3/renderer/Caps;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL21:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL31:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL32:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/renderer/Caps;->ARBprogram:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL100:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL110:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL120:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL130:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL140:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL150:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jme3/renderer/Caps;->GLSL330:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jme3/renderer/Caps;->VertexTextureFetch:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureArray:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureBuffer:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/jme3/renderer/Caps;->FloatColorBuffer:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/jme3/renderer/Caps;->SharedExponentTexture:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/jme3/renderer/Caps;->SharedExponentColorBuffer:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionLATC:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/jme3/renderer/Caps;->NonPowerOfTwoTextures:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/jme3/renderer/Caps;->MeshInstancing:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/jme3/renderer/Caps;->VertexBufferArray:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/jme3/renderer/Caps;->Multisample:Lcom/jme3/renderer/Caps;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/renderer/Caps;->$VALUES:[Lcom/jme3/renderer/Caps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 268
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Caps;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Caps;

    return-object v0
.end method

.method public static values()[Lcom/jme3/renderer/Caps;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/jme3/renderer/Caps;->$VALUES:[Lcom/jme3/renderer/Caps;

    invoke-virtual {v0}, [Lcom/jme3/renderer/Caps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/Caps;

    return-object v0
.end method
