.class final enum Lcom/google/android/maps/MapController$HorizPanState;
.super Ljava/lang/Enum;
.source "MapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HorizPanState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/MapController$HorizPanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum LEFT:Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum NONE:Lcom/google/android/maps/MapController$HorizPanState;

.field public static final enum RIGHT:Lcom/google/android/maps/MapController$HorizPanState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    new-instance v0, Lcom/google/android/maps/MapController$HorizPanState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/MapController$HorizPanState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/MapController$HorizPanState;

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->LEFT:Lcom/google/android/maps/MapController$HorizPanState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->RIGHT:Lcom/google/android/maps/MapController$HorizPanState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/MapController$HorizPanState;->NONE:Lcom/google/android/maps/MapController$HorizPanState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/MapController$HorizPanState;->$VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/MapController$HorizPanState;
    .locals 1

    const-class v0, Lcom/google/android/maps/MapController$HorizPanState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapController$HorizPanState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/MapController$HorizPanState;
    .locals 1

    sget-object v0, Lcom/google/android/maps/MapController$HorizPanState;->$VALUES:[Lcom/google/android/maps/MapController$HorizPanState;

    invoke-virtual {v0}, [Lcom/google/android/maps/MapController$HorizPanState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/MapController$HorizPanState;

    return-object v0
.end method
