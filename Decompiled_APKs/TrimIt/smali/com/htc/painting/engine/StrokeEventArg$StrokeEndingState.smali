.class public final enum Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;
.super Ljava/lang/Enum;
.source "StrokeEventArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/StrokeEventArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrokeEndingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

.field public static final enum ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

.field public static final enum NotEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

.field public static final enum Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    const-string v1, "NotEnding"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->NotEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    const-string v1, "ForceEnding"

    invoke-direct {v0, v1, v4}, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->NotEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->Standard:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->ForceEnding:Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->$VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->$VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    invoke-virtual {v0}, [Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/engine/StrokeEventArg$StrokeEndingState;

    return-object v0
.end method
