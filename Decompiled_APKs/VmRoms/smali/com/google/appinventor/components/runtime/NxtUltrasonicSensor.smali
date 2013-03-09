.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "4"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "NxtUltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private configureUltrasonicSensor(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [B

    aput-byte v3, v0, v4

    const/4 v1, 0x1

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    aput-byte v3, v0, v3

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    return-void
.end method

.method private getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [B

    aput-byte v1, v0, v2

    const/16 v1, 0x42

    aput-byte v1, v0, v3

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;I[BI)V

    move v0, v2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_1

    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_1
.end method

.method private isHandlerNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone above the range."
    .end annotation

    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-void
.end method

.method public GetDistance()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    const/4 v2, -0x1

    const-string v0, "GetDistance"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;III)V

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->configureUltrasonicSensor(Ljava/lang/String;)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
