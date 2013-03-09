.class public final enum Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
.super Ljava/lang/Enum;
.source "ActionStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/ActionStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaybackAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

.field public static final enum ACTION_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

.field public static final enum ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

.field public static final enum ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    const-string v1, "ACTION_PLAY"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 33
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    const-string v1, "ACTION_STOP"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 34
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    const-string v1, "ACTION_PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    return-object v0
.end method
