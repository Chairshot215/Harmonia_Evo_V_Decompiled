.class public final enum Lcom/jme3/texture/Texture$MagFilter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$MagFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$MagFilter;

.field public static final enum Bilinear:Lcom/jme3/texture/Texture$MagFilter;

.field public static final enum Nearest:Lcom/jme3/texture/Texture$MagFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcom/jme3/texture/Texture$MagFilter;

    const-string v1, "Nearest"

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$MagFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    .line 175
    new-instance v0, Lcom/jme3/texture/Texture$MagFilter;

    const-string v1, "Bilinear"

    invoke-direct {v0, v1, v3}, Lcom/jme3/texture/Texture$MagFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jme3/texture/Texture$MagFilter;

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jme3/texture/Texture$MagFilter;->$VALUES:[Lcom/jme3/texture/Texture$MagFilter;

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
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$MagFilter;
    .locals 1
    .parameter

    .prologue
    .line 157
    const-class v0, Lcom/jme3/texture/Texture$MagFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$MagFilter;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$MagFilter;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/jme3/texture/Texture$MagFilter;->$VALUES:[Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$MagFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$MagFilter;

    return-object v0
.end method
