.class public Lcom/google/appinventor/components/runtime/NxtTouchSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a touch sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field private handler:Landroid/os/Handler;

.field private pressedEventEnabled:Z

.field private previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

.field private releasedEventEnabled:Z

.field private final sensorReader:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "NxtTouchSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->SensorPort(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->PressedEventEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->ReleasedEventEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/NxtTouchSensor;Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;)Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtTouchSensor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getSWORDValueFromBytes([BI)I

    move-result v0

    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_1
.end method

.method private isHandlerNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

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
.method public IsPressed()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the touch sensor is pressed."
    .end annotation

    const/4 v2, 0x0

    const-string v0, "IsPressed"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->getPressedValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public Pressed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been pressed."
    .end annotation

    const-string v0, "Pressed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public PressedEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public PressedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Pressed event should fire when the touch sensor is pressed."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->pressedEventEnabled:Z

    return v0
.end method

.method public Released()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Touch sensor has been released."
    .end annotation

    const-string v0, "Released"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReleasedEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtTouchSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ReleasedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the Released event should fire when the touch sensor is released."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->releasedEventEnabled:Z

    return v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->port:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->setInputMode(Ljava/lang/String;III)V

    return-void
.end method

.method public onDelete()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtTouchSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
