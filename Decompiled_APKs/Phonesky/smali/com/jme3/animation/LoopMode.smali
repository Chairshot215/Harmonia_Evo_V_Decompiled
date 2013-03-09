.class public final enum Lcom/jme3/animation/LoopMode;
.super Ljava/lang/Enum;
.source "LoopMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/animation/LoopMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/animation/LoopMode;

.field public static final enum Cycle:Lcom/jme3/animation/LoopMode;

.field public static final enum DontLoop:Lcom/jme3/animation/LoopMode;

.field public static final enum Loop:Lcom/jme3/animation/LoopMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/jme3/animation/LoopMode;

    const-string v1, "Loop"

    invoke-direct {v0, v1, v2}, Lcom/jme3/animation/LoopMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    .line 51
    new-instance v0, Lcom/jme3/animation/LoopMode;

    const-string v1, "DontLoop"

    invoke-direct {v0, v1, v3}, Lcom/jme3/animation/LoopMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    .line 58
    new-instance v0, Lcom/jme3/animation/LoopMode;

    const-string v1, "Cycle"

    invoke-direct {v0, v1, v4}, Lcom/jme3/animation/LoopMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/animation/LoopMode;->Cycle:Lcom/jme3/animation/LoopMode;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/animation/LoopMode;

    sget-object v1, Lcom/jme3/animation/LoopMode;->Loop:Lcom/jme3/animation/LoopMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/animation/LoopMode;->DontLoop:Lcom/jme3/animation/LoopMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/animation/LoopMode;->Cycle:Lcom/jme3/animation/LoopMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/animation/LoopMode;->$VALUES:[Lcom/jme3/animation/LoopMode;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/animation/LoopMode;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/jme3/animation/LoopMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/animation/LoopMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/animation/LoopMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/jme3/animation/LoopMode;->$VALUES:[Lcom/jme3/animation/LoopMode;

    invoke-virtual {v0}, [Lcom/jme3/animation/LoopMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/animation/LoopMode;

    return-object v0
.end method
