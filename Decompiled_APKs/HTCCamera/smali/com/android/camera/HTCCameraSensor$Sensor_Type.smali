.class public final enum Lcom/android/camera/HTCCameraSensor$Sensor_Type;
.super Ljava/lang/Enum;
.source "HTCCameraSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCameraSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensor_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/HTCCameraSensor$Sensor_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/HTCCameraSensor$Sensor_Type;

.field public static final enum SENSOR_2M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

.field public static final enum SENSOR_3M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

.field public static final enum SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

.field public static final enum SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

.field public static final enum SENSOR_UNDEFINED:Lcom/android/camera/HTCCameraSensor$Sensor_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const-string v1, "SENSOR_2M"

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_2M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    new-instance v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const-string v1, "SENSOR_3M"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_3M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    new-instance v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const-string v1, "SENSOR_5M"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    new-instance v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const-string v1, "SENSOR_8M"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    new-instance v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const-string v1, "SENSOR_UNDEFINED"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/HTCCameraSensor$Sensor_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_UNDEFINED:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_2M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_3M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_5M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_8M:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->SENSOR_UNDEFINED:Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->$VALUES:[Lcom/android/camera/HTCCameraSensor$Sensor_Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    .locals 1

    const-class v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/HTCCameraSensor$Sensor_Type;
    .locals 1

    sget-object v0, Lcom/android/camera/HTCCameraSensor$Sensor_Type;->$VALUES:[Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    invoke-virtual {v0}, [Lcom/android/camera/HTCCameraSensor$Sensor_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/HTCCameraSensor$Sensor_Type;

    return-object v0
.end method
