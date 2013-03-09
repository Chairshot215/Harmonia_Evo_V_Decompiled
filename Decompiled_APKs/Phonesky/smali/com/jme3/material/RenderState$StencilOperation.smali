.class public final enum Lcom/jme3/material/RenderState$StencilOperation;
.super Ljava/lang/Enum;
.source "RenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StencilOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/RenderState$StencilOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Decrement:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Increment:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Invert:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Keep:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Replace:Lcom/jme3/material/RenderState$StencilOperation;

.field public static final enum Zero:Lcom/jme3/material/RenderState$StencilOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Keep"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    .line 230
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Zero"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Zero:Lcom/jme3/material/RenderState$StencilOperation;

    .line 234
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Replace"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Replace:Lcom/jme3/material/RenderState$StencilOperation;

    .line 240
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Increment"

    invoke-direct {v0, v1, v6}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Increment:Lcom/jme3/material/RenderState$StencilOperation;

    .line 246
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "IncrementWrap"

    invoke-direct {v0, v1, v7}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    .line 250
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Decrement"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Decrement:Lcom/jme3/material/RenderState$StencilOperation;

    .line 255
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "DecrementWrap"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    .line 260
    new-instance v0, Lcom/jme3/material/RenderState$StencilOperation;

    const-string v1, "Invert"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$StencilOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->Invert:Lcom/jme3/material/RenderState$StencilOperation;

    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/material/RenderState$StencilOperation;

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Keep:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Zero:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Replace:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->Increment:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/material/RenderState$StencilOperation;->IncrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/material/RenderState$StencilOperation;->Decrement:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/material/RenderState$StencilOperation;->DecrementWrap:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/material/RenderState$StencilOperation;->Invert:Lcom/jme3/material/RenderState$StencilOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/material/RenderState$StencilOperation;->$VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

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
    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1
    .parameter

    .prologue
    .line 221
    const-class v0, Lcom/jme3/material/RenderState$StencilOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/RenderState$StencilOperation;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/jme3/material/RenderState$StencilOperation;->$VALUES:[Lcom/jme3/material/RenderState$StencilOperation;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$StencilOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$StencilOperation;

    return-object v0
.end method
