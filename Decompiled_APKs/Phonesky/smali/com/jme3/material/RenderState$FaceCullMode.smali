.class public final enum Lcom/jme3/material/RenderState$FaceCullMode;
.super Ljava/lang/Enum;
.source "RenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceCullMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/RenderState$FaceCullMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Back:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Front:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

.field public static final enum Off:Lcom/jme3/material/RenderState$FaceCullMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 198
    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Front"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 202
    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "Back"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 206
    new-instance v0, Lcom/jme3/material/RenderState$FaceCullMode;

    const-string v1, "FrontAndBack"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/RenderState$FaceCullMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/material/RenderState$FaceCullMode;

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Front:Lcom/jme3/material/RenderState$FaceCullMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/RenderState$FaceCullMode;->FrontAndBack:Lcom/jme3/material/RenderState$FaceCullMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->$VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1
    .parameter

    .prologue
    .line 189
    const-class v0, Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$FaceCullMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/RenderState$FaceCullMode;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->$VALUES:[Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$FaceCullMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$FaceCullMode;

    return-object v0
.end method
