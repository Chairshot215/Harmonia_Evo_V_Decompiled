.class public final enum Lcom/jme3/texture/Texture$WrapMode;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum Clamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

.field public static final enum Repeat:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "Repeat"

    invoke-direct {v0, v1, v3}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    .line 189
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirroredRepeat"

    invoke-direct {v0, v1, v4}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    .line 193
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "Clamp"

    invoke-direct {v0, v1, v5}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 203
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorClamp"

    invoke-direct {v0, v1, v6}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 209
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "BorderClamp"

    invoke-direct {v0, v1, v7}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 219
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorBorderClamp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 225
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "EdgeClamp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 234
    new-instance v0, Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "MirrorEdgeClamp"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    .line 179
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/texture/Texture$WrapMode;

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->MirroredRepeat:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Clamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->MirrorClamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->BorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/texture/Texture$WrapMode;->MirrorBorderClamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/texture/Texture$WrapMode;->MirrorEdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/texture/Texture$WrapMode;->$VALUES:[Lcom/jme3/texture/Texture$WrapMode;

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
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapMode;
    .locals 1
    .parameter

    .prologue
    .line 179
    const-class v0, Lcom/jme3/texture/Texture$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$WrapMode;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->$VALUES:[Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$WrapMode;

    return-object v0
.end method
