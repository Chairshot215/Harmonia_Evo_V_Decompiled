.class final enum Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/NxtSoundSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

.field public static final enum ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

.field public static final enum BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

.field public static final enum WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    const-string v1, "BELOW_RANGE"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    const-string v1, "WITHIN_RANGE"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    const-string v1, "ABOVE_RANGE"

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->BELOW_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->WITHIN_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->ABOVE_RANGE:Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->$VALUES:[Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    .locals 1

    const-class v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->$VALUES:[Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/NxtSoundSensor$State;

    return-object v0
.end method
