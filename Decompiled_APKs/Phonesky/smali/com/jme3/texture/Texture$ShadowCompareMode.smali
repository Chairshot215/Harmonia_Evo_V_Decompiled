.class public final enum Lcom/jme3/texture/Texture$ShadowCompareMode;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowCompareMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$ShadowCompareMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$ShadowCompareMode;

.field public static final enum GreaterOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

.field public static final enum LessOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

.field public static final enum Off:Lcom/jme3/texture/Texture$ShadowCompareMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    new-instance v0, Lcom/jme3/texture/Texture$ShadowCompareMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$ShadowCompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    .line 271
    new-instance v0, Lcom/jme3/texture/Texture$ShadowCompareMode;

    const-string v1, "LessOrEqual"

    invoke-direct {v0, v1, v3}, Lcom/jme3/texture/Texture$ShadowCompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->LessOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    .line 280
    new-instance v0, Lcom/jme3/texture/Texture$ShadowCompareMode;

    const-string v1, "GreaterOrEqual"

    invoke-direct {v0, v1, v4}, Lcom/jme3/texture/Texture$ShadowCompareMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->GreaterOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/texture/Texture$ShadowCompareMode;

    sget-object v1, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/texture/Texture$ShadowCompareMode;->LessOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/texture/Texture$ShadowCompareMode;->GreaterOrEqual:Lcom/jme3/texture/Texture$ShadowCompareMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->$VALUES:[Lcom/jme3/texture/Texture$ShadowCompareMode;

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
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$ShadowCompareMode;
    .locals 1
    .parameter

    .prologue
    .line 257
    const-class v0, Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$ShadowCompareMode;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->$VALUES:[Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$ShadowCompareMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-object v0
.end method
