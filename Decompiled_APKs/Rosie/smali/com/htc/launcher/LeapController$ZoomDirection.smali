.class public final enum Lcom/htc/launcher/LeapController$ZoomDirection;
.super Ljava/lang/Enum;
.source "LeapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/LeapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/launcher/LeapController$ZoomDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/launcher/LeapController$ZoomDirection;

.field public static final enum NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

.field public static final enum ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

.field public static final enum ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/htc/launcher/LeapController$ZoomDirection;

    const-string v1, "ZOOM_OUT"

    invoke-direct {v0, v1, v2}, Lcom/htc/launcher/LeapController$ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    new-instance v0, Lcom/htc/launcher/LeapController$ZoomDirection;

    const-string v1, "ZOOM_IN"

    invoke-direct {v0, v1, v3}, Lcom/htc/launcher/LeapController$ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    new-instance v0, Lcom/htc/launcher/LeapController$ZoomDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/htc/launcher/LeapController$ZoomDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/launcher/LeapController$ZoomDirection;

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_OUT:Lcom/htc/launcher/LeapController$ZoomDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->ZOOM_IN:Lcom/htc/launcher/LeapController$ZoomDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/launcher/LeapController$ZoomDirection;->NONE:Lcom/htc/launcher/LeapController$ZoomDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->$VALUES:[Lcom/htc/launcher/LeapController$ZoomDirection;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/launcher/LeapController$ZoomDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 71
    const-class v0, Lcom/htc/launcher/LeapController$ZoomDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/LeapController$ZoomDirection;

    return-object v0
.end method

.method public static values()[Lcom/htc/launcher/LeapController$ZoomDirection;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/htc/launcher/LeapController$ZoomDirection;->$VALUES:[Lcom/htc/launcher/LeapController$ZoomDirection;

    invoke-virtual {v0}, [Lcom/htc/launcher/LeapController$ZoomDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/launcher/LeapController$ZoomDirection;

    return-object v0
.end method
