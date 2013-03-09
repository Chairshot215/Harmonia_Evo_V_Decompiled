.class public final enum Lcom/jme3/scene/VertexBuffer$Type;
.super Ljava/lang/Enum;
.source "VertexBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/VertexBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/VertexBuffer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Binormal:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Color:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Index:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum MiscAttrib:Lcom/jme3/scene/VertexBuffer$Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Normal:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Position:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Size:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum Tangent:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord2:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord3:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord4:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord5:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord6:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord7:Lcom/jme3/scene/VertexBuffer$Type;

.field public static final enum TexCoord8:Lcom/jme3/scene/VertexBuffer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Position"

    invoke-direct {v0, v1, v3}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    .line 71
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Size"

    invoke-direct {v0, v1, v4}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Size:Lcom/jme3/scene/VertexBuffer$Type;

    .line 76
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v5}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    .line 81
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord"

    invoke-direct {v0, v1, v6}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    .line 86
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Color"

    invoke-direct {v0, v1, v7}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    .line 93
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Tangent"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    .line 98
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Binormal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    .line 105
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "InterleavedData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    .line 110
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "MiscAttrib"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->MiscAttrib:Lcom/jme3/scene/VertexBuffer$Type;

    .line 117
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "Index"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    .line 126
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "BindPosePosition"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    .line 135
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "BindPoseNormal"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    .line 143
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "BoneWeight"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    .line 151
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "BoneIndex"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    .line 156
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord2:Lcom/jme3/scene/VertexBuffer$Type;

    .line 161
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord3"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord3:Lcom/jme3/scene/VertexBuffer$Type;

    .line 166
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord4"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord4:Lcom/jme3/scene/VertexBuffer$Type;

    .line 171
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord5"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord5:Lcom/jme3/scene/VertexBuffer$Type;

    .line 176
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord6"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord6:Lcom/jme3/scene/VertexBuffer$Type;

    .line 181
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord7"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord7:Lcom/jme3/scene/VertexBuffer$Type;

    .line 186
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "TexCoord8"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord8:Lcom/jme3/scene/VertexBuffer$Type;

    .line 195
    new-instance v0, Lcom/jme3/scene/VertexBuffer$Type;

    const-string v1, "BindPoseTangent"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/VertexBuffer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    .line 62
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Size:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Color:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->InterleavedData:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->MiscAttrib:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPosePosition:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseNormal:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneWeight:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BoneIndex:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord2:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord3:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord4:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord5:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord6:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord7:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord8:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->BindPoseTangent:Lcom/jme3/scene/VertexBuffer$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/scene/VertexBuffer$Type;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Type;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/VertexBuffer$Type;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/VertexBuffer$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/VertexBuffer$Type;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->$VALUES:[Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0}, [Lcom/jme3/scene/VertexBuffer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/VertexBuffer$Type;

    return-object v0
.end method
