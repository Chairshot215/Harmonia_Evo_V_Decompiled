.class public final enum Lcom/jme3/shader/UniformBinding;
.super Ljava/lang/Enum;
.source "UniformBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/shader/UniformBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/shader/UniformBinding;

.field public static final enum Aspect:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraDirection:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraLeft:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraPosition:Lcom/jme3/shader/UniformBinding;

.field public static final enum CameraUp:Lcom/jme3/shader/UniformBinding;

.field public static final enum FrameRate:Lcom/jme3/shader/UniformBinding;

.field public static final enum FrustumNearFar:Lcom/jme3/shader/UniformBinding;

.field public static final enum NormalMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum Resolution:Lcom/jme3/shader/UniformBinding;

.field public static final enum ResolutionInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum Time:Lcom/jme3/shader/UniformBinding;

.field public static final enum Tpf:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewPort:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

.field public static final enum WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrix"

    invoke-direct {v0, v1, v3}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrix:Lcom/jme3/shader/UniformBinding;

    .line 47
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewMatrix"

    invoke-direct {v0, v1, v4}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewMatrix:Lcom/jme3/shader/UniformBinding;

    .line 53
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ProjectionMatrix"

    invoke-direct {v0, v1, v5}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    .line 59
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewMatrix"

    invoke-direct {v0, v1, v6}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

    .line 66
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "NormalMatrix"

    invoke-direct {v0, v1, v7}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->NormalMatrix:Lcom/jme3/shader/UniformBinding;

    .line 73
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewProjectionMatrix"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    .line 80
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewProjectionMatrix"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    .line 87
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrixInverseTranspose"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

    .line 91
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldMatrixInverse"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 92
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewMatrixInverse"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 93
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ProjectionMatrixInverse"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 94
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewProjectionMatrixInverse"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 95
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewMatrixInverse"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 96
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "NormalMatrixInverse"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 97
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "WorldViewProjectionMatrixInverse"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    .line 107
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ViewPort"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ViewPort:Lcom/jme3/shader/UniformBinding;

    .line 115
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "FrustumNearFar"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->FrustumNearFar:Lcom/jme3/shader/UniformBinding;

    .line 121
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Resolution"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Resolution:Lcom/jme3/shader/UniformBinding;

    .line 127
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "ResolutionInverse"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->ResolutionInverse:Lcom/jme3/shader/UniformBinding;

    .line 133
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Aspect"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Aspect:Lcom/jme3/shader/UniformBinding;

    .line 139
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraPosition"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraPosition:Lcom/jme3/shader/UniformBinding;

    .line 145
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraDirection"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraDirection:Lcom/jme3/shader/UniformBinding;

    .line 151
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraLeft"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraLeft:Lcom/jme3/shader/UniformBinding;

    .line 157
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "CameraUp"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->CameraUp:Lcom/jme3/shader/UniformBinding;

    .line 163
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Time"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Time:Lcom/jme3/shader/UniformBinding;

    .line 169
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "Tpf"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->Tpf:Lcom/jme3/shader/UniformBinding;

    .line 175
    new-instance v0, Lcom/jme3/shader/UniformBinding;

    const-string v1, "FrameRate"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/jme3/shader/UniformBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/shader/UniformBinding;->FrameRate:Lcom/jme3/shader/UniformBinding;

    .line 35
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/jme3/shader/UniformBinding;

    sget-object v1, Lcom/jme3/shader/UniformBinding;->WorldMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/shader/UniformBinding;->ViewMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/shader/UniformBinding;->ProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/shader/UniformBinding;->WorldViewMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/shader/UniformBinding;->NormalMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrix:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverseTranspose:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/shader/UniformBinding;->WorldMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/shader/UniformBinding;->WorldViewMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/shader/UniformBinding;->NormalMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/shader/UniformBinding;->WorldViewProjectionMatrixInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ViewPort:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/jme3/shader/UniformBinding;->FrustumNearFar:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/jme3/shader/UniformBinding;->Resolution:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/jme3/shader/UniformBinding;->ResolutionInverse:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/jme3/shader/UniformBinding;->Aspect:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/jme3/shader/UniformBinding;->CameraPosition:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/jme3/shader/UniformBinding;->CameraDirection:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/jme3/shader/UniformBinding;->CameraLeft:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/jme3/shader/UniformBinding;->CameraUp:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/jme3/shader/UniformBinding;->Time:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/jme3/shader/UniformBinding;->Tpf:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/jme3/shader/UniformBinding;->FrameRate:Lcom/jme3/shader/UniformBinding;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/shader/UniformBinding;->$VALUES:[Lcom/jme3/shader/UniformBinding;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/jme3/shader/UniformBinding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/UniformBinding;

    return-object v0
.end method

.method public static values()[Lcom/jme3/shader/UniformBinding;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/jme3/shader/UniformBinding;->$VALUES:[Lcom/jme3/shader/UniformBinding;

    invoke-virtual {v0}, [Lcom/jme3/shader/UniformBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/UniformBinding;

    return-object v0
.end method
