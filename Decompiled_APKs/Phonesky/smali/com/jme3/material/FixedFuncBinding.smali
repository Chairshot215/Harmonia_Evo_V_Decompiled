.class public final enum Lcom/jme3/material/FixedFuncBinding;
.super Ljava/lang/Enum;
.source "FixedFuncBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/FixedFuncBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/FixedFuncBinding;

.field public static final enum Color:Lcom/jme3/material/FixedFuncBinding;

.field public static final enum MaterialAmbient:Lcom/jme3/material/FixedFuncBinding;

.field public static final enum MaterialDiffuse:Lcom/jme3/material/FixedFuncBinding;

.field public static final enum MaterialShininess:Lcom/jme3/material/FixedFuncBinding;

.field public static final enum MaterialSpecular:Lcom/jme3/material/FixedFuncBinding;

.field public static final enum UseVertexColor:Lcom/jme3/material/FixedFuncBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "MaterialAmbient"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->MaterialAmbient:Lcom/jme3/material/FixedFuncBinding;

    .line 52
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "MaterialDiffuse"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->MaterialDiffuse:Lcom/jme3/material/FixedFuncBinding;

    .line 58
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "MaterialSpecular"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->MaterialSpecular:Lcom/jme3/material/FixedFuncBinding;

    .line 65
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "Color"

    invoke-direct {v0, v1, v6}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->Color:Lcom/jme3/material/FixedFuncBinding;

    .line 72
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "MaterialShininess"

    invoke-direct {v0, v1, v7}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->MaterialShininess:Lcom/jme3/material/FixedFuncBinding;

    .line 79
    new-instance v0, Lcom/jme3/material/FixedFuncBinding;

    const-string v1, "UseVertexColor"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/FixedFuncBinding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->UseVertexColor:Lcom/jme3/material/FixedFuncBinding;

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jme3/material/FixedFuncBinding;

    sget-object v1, Lcom/jme3/material/FixedFuncBinding;->MaterialAmbient:Lcom/jme3/material/FixedFuncBinding;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/FixedFuncBinding;->MaterialDiffuse:Lcom/jme3/material/FixedFuncBinding;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/FixedFuncBinding;->MaterialSpecular:Lcom/jme3/material/FixedFuncBinding;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/material/FixedFuncBinding;->Color:Lcom/jme3/material/FixedFuncBinding;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/material/FixedFuncBinding;->MaterialShininess:Lcom/jme3/material/FixedFuncBinding;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/material/FixedFuncBinding;->UseVertexColor:Lcom/jme3/material/FixedFuncBinding;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/material/FixedFuncBinding;->$VALUES:[Lcom/jme3/material/FixedFuncBinding;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/FixedFuncBinding;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/jme3/material/FixedFuncBinding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/FixedFuncBinding;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/FixedFuncBinding;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/jme3/material/FixedFuncBinding;->$VALUES:[Lcom/jme3/material/FixedFuncBinding;

    invoke-virtual {v0}, [Lcom/jme3/material/FixedFuncBinding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/FixedFuncBinding;

    return-object v0
.end method
