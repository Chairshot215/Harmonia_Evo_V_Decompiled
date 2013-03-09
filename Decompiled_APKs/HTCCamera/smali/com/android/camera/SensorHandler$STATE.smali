.class final enum Lcom/android/camera/SensorHandler$STATE;
.super Ljava/lang/Enum;
.source "SensorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/SensorHandler$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/SensorHandler$STATE;

.field public static final enum CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

.field public static final enum CHECK_SENSOR:Lcom/android/camera/SensorHandler$STATE;

.field public static final enum NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

.field public static final enum STABLE_WAIT_FOCUS:Lcom/android/camera/SensorHandler$STATE;

.field public static final enum STABLE_WITH_FOCUS:Lcom/android/camera/SensorHandler$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/SensorHandler$STATE;

    const-string v1, "NON_STABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/SensorHandler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    new-instance v0, Lcom/android/camera/SensorHandler$STATE;

    const-string v1, "CHECK_SENSOR"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/SensorHandler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SENSOR:Lcom/android/camera/SensorHandler$STATE;

    new-instance v0, Lcom/android/camera/SensorHandler$STATE;

    const-string v1, "CHECK_SCENE_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/SensorHandler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    new-instance v0, Lcom/android/camera/SensorHandler$STATE;

    const-string v1, "STABLE_WAIT_FOCUS"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/SensorHandler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WAIT_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    new-instance v0, Lcom/android/camera/SensorHandler$STATE;

    const-string v1, "STABLE_WITH_FOCUS"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/SensorHandler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/SensorHandler$STATE;

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->NON_STABLE:Lcom/android/camera/SensorHandler$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->CHECK_SENSOR:Lcom/android/camera/SensorHandler$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->CHECK_SCENE_CHANGE:Lcom/android/camera/SensorHandler$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->STABLE_WAIT_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/SensorHandler$STATE;->STABLE_WITH_FOCUS:Lcom/android/camera/SensorHandler$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/SensorHandler$STATE;->$VALUES:[Lcom/android/camera/SensorHandler$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/SensorHandler$STATE;
    .locals 1

    const-class v0, Lcom/android/camera/SensorHandler$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SensorHandler$STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/SensorHandler$STATE;
    .locals 1

    sget-object v0, Lcom/android/camera/SensorHandler$STATE;->$VALUES:[Lcom/android/camera/SensorHandler$STATE;

    invoke-virtual {v0}, [Lcom/android/camera/SensorHandler$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/SensorHandler$STATE;

    return-object v0
.end method
