.class public final enum Lcom/jme3/texture/Texture$WrapAxis;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WrapAxis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/texture/Texture$WrapAxis;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/texture/Texture$WrapAxis;

.field public static final enum R:Lcom/jme3/texture/Texture$WrapAxis;

.field public static final enum S:Lcom/jme3/texture/Texture$WrapAxis;

.field public static final enum T:Lcom/jme3/texture/Texture$WrapAxis;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    new-instance v0, Lcom/jme3/texture/Texture$WrapAxis;

    const-string v1, "S"

    invoke-direct {v0, v1, v2}, Lcom/jme3/texture/Texture$WrapAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    .line 245
    new-instance v0, Lcom/jme3/texture/Texture$WrapAxis;

    const-string v1, "T"

    invoke-direct {v0, v1, v3}, Lcom/jme3/texture/Texture$WrapAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    .line 249
    new-instance v0, Lcom/jme3/texture/Texture$WrapAxis;

    const-string v1, "R"

    invoke-direct {v0, v1, v4}, Lcom/jme3/texture/Texture$WrapAxis;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    .line 237
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/texture/Texture$WrapAxis;

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->R:Lcom/jme3/texture/Texture$WrapAxis;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/texture/Texture$WrapAxis;->$VALUES:[Lcom/jme3/texture/Texture$WrapAxis;

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
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/texture/Texture$WrapAxis;
    .locals 1
    .parameter

    .prologue
    .line 237
    const-class v0, Lcom/jme3/texture/Texture$WrapAxis;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture$WrapAxis;

    return-object v0
.end method

.method public static values()[Lcom/jme3/texture/Texture$WrapAxis;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->$VALUES:[Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {v0}, [Lcom/jme3/texture/Texture$WrapAxis;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/texture/Texture$WrapAxis;

    return-object v0
.end method
