.class public final enum Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
.super Ljava/lang/Enum;
.source "ActionStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/ActionStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServeStage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

.field public static final enum SERVE_WAITPLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_SETNEW_PLAY"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 46
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_STOP"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 47
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 48
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_PLAY"

    invoke-direct {v0, v1, v6}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 50
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_WAITPLAY"

    invoke-direct {v0, v1, v7}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_WAITPLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 51
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_INCRESE_INDEX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 52
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    const-string v1, "SERVE_NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_WAITPLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    return-object v0
.end method
