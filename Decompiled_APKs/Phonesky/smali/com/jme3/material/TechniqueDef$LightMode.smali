.class public final enum Lcom/jme3/material/TechniqueDef$LightMode;
.super Ljava/lang/Enum;
.source "TechniqueDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/TechniqueDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/TechniqueDef$LightMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum Disable:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

.field public static final enum SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "Disable"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 69
    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "SinglePass"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 80
    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "MultiPass"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 90
    new-instance v0, Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "FixedPipeline"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/TechniqueDef$LightMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->SinglePass:Lcom/jme3/material/TechniqueDef$LightMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/TechniqueDef$LightMode;->FixedPipeline:Lcom/jme3/material/TechniqueDef$LightMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v0}, [Lcom/jme3/material/TechniqueDef$LightMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method
