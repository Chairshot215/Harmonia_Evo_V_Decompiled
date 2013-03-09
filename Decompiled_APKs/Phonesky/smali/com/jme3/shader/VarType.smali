.class public final enum Lcom/jme3/shader/VarType;
.super Ljava/lang/Enum;
.source "VarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/shader/VarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/VarType;

.field public static final enum Boolean:Lcom/jme3/shader/VarType;

.field public static final enum Float:Lcom/jme3/shader/VarType;

.field public static final enum FloatArray:Lcom/jme3/shader/VarType;

.field public static final enum Int:Lcom/jme3/shader/VarType;

.field public static final enum Matrix3:Lcom/jme3/shader/VarType;

.field public static final enum Matrix3Array:Lcom/jme3/shader/VarType;

.field public static final enum Matrix4:Lcom/jme3/shader/VarType;

.field public static final enum Matrix4Array:Lcom/jme3/shader/VarType;

.field public static final enum Texture2D:Lcom/jme3/shader/VarType;

.field public static final enum Texture3D:Lcom/jme3/shader/VarType;

.field public static final enum TextureArray:Lcom/jme3/shader/VarType;

.field public static final enum TextureBuffer:Lcom/jme3/shader/VarType;

.field public static final enum TextureCubeMap:Lcom/jme3/shader/VarType;

.field public static final enum Vector2:Lcom/jme3/shader/VarType;

.field public static final enum Vector2Array:Lcom/jme3/shader/VarType;

.field public static final enum Vector3:Lcom/jme3/shader/VarType;

.field public static final enum Vector3Array:Lcom/jme3/shader/VarType;

.field public static final enum Vector4:Lcom/jme3/shader/VarType;

.field public static final enum Vector4Array:Lcom/jme3/shader/VarType;


# instance fields
.field private textureType:Z

.field private usesMultiData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Float"

    invoke-direct {v0, v1, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    .line 38
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector2"

    invoke-direct {v0, v1, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    .line 39
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector3"

    invoke-direct {v0, v1, v5}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    .line 40
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector4"

    invoke-direct {v0, v1, v6}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    .line 42
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "FloatArray"

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    .line 43
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector2Array"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    .line 44
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector3Array"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    .line 45
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Vector4Array"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    .line 47
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Boolean"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    .line 49
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Matrix3"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    .line 50
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Matrix4"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    .line 52
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Matrix3Array"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix3Array:Lcom/jme3/shader/VarType;

    .line 53
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Matrix4Array"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    .line 55
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "TextureBuffer"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureBuffer:Lcom/jme3/shader/VarType;

    .line 56
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Texture2D"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    .line 57
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Texture3D"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    .line 58
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "TextureArray"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    .line 59
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "TextureCubeMap"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    .line 60
    new-instance v0, Lcom/jme3/shader/VarType;

    const-string v1, "Int"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    .line 35
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/jme3/shader/VarType;

    sget-object v1, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/shader/VarType;->Vector2:Lcom/jme3/shader/VarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/shader/VarType;->Vector3:Lcom/jme3/shader/VarType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/shader/VarType;->Vector4:Lcom/jme3/shader/VarType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/shader/VarType;->FloatArray:Lcom/jme3/shader/VarType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/shader/VarType;->Vector2Array:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/shader/VarType;->Vector3Array:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/shader/VarType;->Vector4Array:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/shader/VarType;->Boolean:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix3Array:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/shader/VarType;->Matrix4Array:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/shader/VarType;->TextureBuffer:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/shader/VarType;->Texture2D:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/shader/VarType;->Texture3D:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jme3/shader/VarType;->TextureArray:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jme3/shader/VarType;->TextureCubeMap:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/shader/VarType;->$VALUES:[Lcom/jme3/shader/VarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-boolean v0, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    .line 63
    iput-boolean v0, p0, Lcom/jme3/shader/VarType;->textureType:Z

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter "multiData"
    .parameter "textureType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-boolean v0, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    .line 63
    iput-boolean v0, p0, Lcom/jme3/shader/VarType;->textureType:Z

    .line 69
    iput-boolean p3, p0, Lcom/jme3/shader/VarType;->usesMultiData:Z

    .line 70
    iput-boolean p4, p0, Lcom/jme3/shader/VarType;->textureType:Z

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/VarType;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/jme3/shader/VarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/VarType;

    return-object v0
.end method

.method public static values()[Lcom/jme3/shader/VarType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/jme3/shader/VarType;->$VALUES:[Lcom/jme3/shader/VarType;

    invoke-virtual {v0}, [Lcom/jme3/shader/VarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/VarType;

    return-object v0
.end method


# virtual methods
.method public isTextureType()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/jme3/shader/VarType;->textureType:Z

    return v0
.end method
