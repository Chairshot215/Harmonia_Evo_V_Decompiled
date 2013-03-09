.class public final enum Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;
.super Ljava/lang/Enum;
.source "LocalPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/LocalPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RunnableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

.field public static final enum GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

.field public static final enum PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

.field public static final enum SWITCH_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

.field public static final enum SWITCH_PREV:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    const-string v1, "PREGEN_NEXT"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    .line 44
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    const-string v1, "SWITCH_NEXT"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    .line 45
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    const-string v1, "SWITCH_PREV"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_PREV:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    .line 46
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    const-string v1, "GEN_CURRENT"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    sget-object v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_PREV:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->$VALUES:[Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->$VALUES:[Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    return-object v0
.end method
