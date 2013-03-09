.class public final enum Lcom/jme3/texture/Texture$MinFilter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$MinFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

.field public static final enum Trilinear:Lcom/jme3/texture/Texture$MinFilter;


# instance fields
.field private usesMipMapLevels:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 94
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestNoMipMaps"

    invoke-direct {v0, v1, v4, v4}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    .line 103
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "BilinearNoMipMaps"

    invoke-direct {v0, v1, v3, v4}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    .line 112
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestNearestMipMap"

    invoke-direct {v0, v1, v5, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    .line 121
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "BilinearNearestMipMap"

    invoke-direct {v0, v1, v6, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    .line 129
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "NearestLinearMipMap"

    invoke-direct {v0, v1, v7, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    .line 144
    new-instance v0, Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "Trilinear"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/texture/Texture$MinFilter;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jme3/texture/Texture$MinFilter;

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNearestMipMap:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->NearestLinearMipMap:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/texture/Texture$MinFilter;->$VALUES:[Lcom/jme3/texture/Texture$MinFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "usesMipMapLevels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput-boolean p3, p0, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels:Z

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$MinFilter;
    .locals 1
    .parameter

    .prologue
    .line 86
    const-class v0, Lcom/jme3/texture/Texture$MinFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$MinFilter;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$MinFilter;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->$VALUES:[Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$MinFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$MinFilter;

    return-object v0
.end method


# virtual methods
.method public usesMipMapLevels()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels:Z

    return v0
.end method
