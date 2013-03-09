.class public final enum Lcom/jme3/material/RenderState$BlendMode;
.super Ljava/lang/Enum;
.source "RenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/RenderState$BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Additive:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Alpha:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Color:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Modulate:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum Off:Lcom/jme3/material/RenderState$BlendMode;

.field public static final enum PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    .line 141
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Additive"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    .line 147
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "PremultAlpha"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    .line 154
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "AlphaAdditive"

    invoke-direct {v0, v1, v6}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    .line 161
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Color"

    invoke-direct {v0, v1, v7}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    .line 169
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Alpha"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    .line 175
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "Modulate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    .line 181
    new-instance v0, Lcom/jme3/material/RenderState$BlendMode;

    const-string v1, "ModulateX2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$BlendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/material/RenderState$BlendMode;

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Off:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Additive:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->PremultAlpha:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->AlphaAdditive:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/material/RenderState$BlendMode;->Color:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->Modulate:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/material/RenderState$BlendMode;->ModulateX2:Lcom/jme3/material/RenderState$BlendMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/material/RenderState$BlendMode;->$VALUES:[Lcom/jme3/material/RenderState$BlendMode;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$BlendMode;
    .locals 1
    .parameter

    .prologue
    .line 130
    const-class v0, Lcom/jme3/material/RenderState$BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$BlendMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/RenderState$BlendMode;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/jme3/material/RenderState$BlendMode;->$VALUES:[Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$BlendMode;

    return-object v0
.end method
