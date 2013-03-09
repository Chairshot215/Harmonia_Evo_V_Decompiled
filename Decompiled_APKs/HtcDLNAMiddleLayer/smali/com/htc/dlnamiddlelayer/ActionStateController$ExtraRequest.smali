.class public final enum Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;
.super Ljava/lang/Enum;
.source "ActionStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/ActionStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

.field public static final enum REQUEST_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

.field public static final enum REQUEST_REPEAT:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

.field public static final enum REQUEST_SHUFFLE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

.field public static final enum REQUEST_SWITCH:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    const-string v1, "REQUEST_SWITCH"

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SWITCH:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    .line 39
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    const-string v1, "REQUEST_SHUFFLE"

    invoke-direct {v0, v1, v3}, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SHUFFLE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    .line 40
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    const-string v1, "REQUEST_REPEAT"

    invoke-direct {v0, v1, v4}, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_REPEAT:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    .line 41
    new-instance v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    const-string v1, "REQUEST_NONE"

    invoke-direct {v0, v1, v5}, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SWITCH:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SHUFFLE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_REPEAT:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    return-object v0
.end method

.method public static values()[Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->$VALUES:[Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    invoke-virtual {v0}, [Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    return-object v0
.end method
