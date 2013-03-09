.class public final enum Lcom/jme3/material/RenderState$TestFunction;
.super Ljava/lang/Enum;
.source "RenderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/material/RenderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/material/RenderState$TestFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Always:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Equal:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Greater:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Less:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum Never:Lcom/jme3/material/RenderState$TestFunction;

.field public static final enum NotEqual:Lcom/jme3/material/RenderState$TestFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Never"

    invoke-direct {v0, v1, v3}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Never:Lcom/jme3/material/RenderState$TestFunction;

    .line 96
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Equal"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Equal:Lcom/jme3/material/RenderState$TestFunction;

    .line 100
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Less"

    invoke-direct {v0, v1, v5}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    .line 105
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "LessOrEqual"

    invoke-direct {v0, v1, v6}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    .line 109
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Greater"

    invoke-direct {v0, v1, v7}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    .line 114
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "GreaterOrEqual"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    .line 119
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "NotEqual"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->NotEqual:Lcom/jme3/material/RenderState$TestFunction;

    .line 123
    new-instance v0, Lcom/jme3/material/RenderState$TestFunction;

    const-string v1, "Always"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/RenderState$TestFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/jme3/material/RenderState$TestFunction;

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Never:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Equal:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Less:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->LessOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/material/RenderState$TestFunction;->Greater:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/material/RenderState$TestFunction;->GreaterOrEqual:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/material/RenderState$TestFunction;->NotEqual:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/material/RenderState$TestFunction;->Always:Lcom/jme3/material/RenderState$TestFunction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/material/RenderState$TestFunction;->$VALUES:[Lcom/jme3/material/RenderState$TestFunction;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/material/RenderState$TestFunction;
    .locals 1
    .parameter

    .prologue
    .line 87
    const-class v0, Lcom/jme3/material/RenderState$TestFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method

.method public static values()[Lcom/jme3/material/RenderState$TestFunction;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/jme3/material/RenderState$TestFunction;->$VALUES:[Lcom/jme3/material/RenderState$TestFunction;

    invoke-virtual {v0}, [Lcom/jme3/material/RenderState$TestFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/material/RenderState$TestFunction;

    return-object v0
.end method
