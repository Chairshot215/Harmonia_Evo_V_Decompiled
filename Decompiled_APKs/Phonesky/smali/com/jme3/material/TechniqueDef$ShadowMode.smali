.class public final enum Lcom/jme3/material/TechniqueDef$ShadowMode;
.super Ljava/lang/Enum;
.source "TechniqueDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/TechniqueDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/TechniqueDef$ShadowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/TechniqueDef$ShadowMode;

.field public static final enum Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

.field public static final enum InPass:Lcom/jme3/material/TechniqueDef$ShadowMode;

.field public static final enum PostPass:Lcom/jme3/material/TechniqueDef$ShadowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v1, "Disable"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 95
    new-instance v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v1, "InPass"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/TechniqueDef$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->InPass:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 96
    new-instance v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v1, "PostPass"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/TechniqueDef$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->PostPass:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/material/TechniqueDef$ShadowMode;

    sget-object v1, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/material/TechniqueDef$ShadowMode;->InPass:Lcom/jme3/material/TechniqueDef$ShadowMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/TechniqueDef$ShadowMode;->PostPass:Lcom/jme3/material/TechniqueDef$ShadowMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$ShadowMode;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/TechniqueDef$ShadowMode;
    .locals 1
    .parameter

    .prologue
    .line 93
    const-class v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/TechniqueDef$ShadowMode;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->$VALUES:[Lcom/jme3/material/TechniqueDef$ShadowMode;

    invoke-virtual {v0}, [Lcom/jme3/material/TechniqueDef$ShadowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/TechniqueDef$ShadowMode;

    return-object v0
.end method
