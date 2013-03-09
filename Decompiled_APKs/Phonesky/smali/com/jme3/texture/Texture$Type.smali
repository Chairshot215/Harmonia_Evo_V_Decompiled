.class public final enum Lcom/jme3/texture/Texture$Type;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$Type;

.field public static final enum CubeMap:Lcom/jme3/texture/Texture$Type;

.field public static final enum ThreeDimensional:Lcom/jme3/texture/Texture$Type;

.field public static final enum TwoDimensional:Lcom/jme3/texture/Texture$Type;

.field public static final enum TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "TwoDimensional"

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    .line 72
    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "TwoDimensionalArray"

    invoke-direct {v0, v1, v3}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    .line 77
    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "ThreeDimensional"

    invoke-direct {v0, v1, v4}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    .line 83
    new-instance v0, Lcom/jme3/texture/Texture$Type;

    const-string v1, "CubeMap"

    invoke-direct {v0, v1, v5}, Lcom/jme3/texture/Texture$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/texture/Texture$Type;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/texture/Texture$Type;->$VALUES:[Lcom/jme3/texture/Texture$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$Type;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/jme3/texture/Texture$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$Type;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/jme3/texture/Texture$Type;->$VALUES:[Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method
