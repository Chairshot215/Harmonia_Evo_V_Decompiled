.class public final enum Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;
.super Ljava/lang/Enum;
.source "StrokeEventArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/StrokeEventArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrokeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

.field public static final enum Deleted:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

.field public static final enum Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

.field public static final enum Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    const-string v1, "Effective"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    const-string v1, "Ineffective"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    new-instance v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    const-string v1, "Deleted"

    invoke-direct {v0, v1, v4}, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Deleted:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Effective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Ineffective:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->Deleted:Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->$VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->$VALUES:[Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    invoke-virtual {v0}, [Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/engine/StrokeEventArg$StrokeStatus;

    return-object v0
.end method
