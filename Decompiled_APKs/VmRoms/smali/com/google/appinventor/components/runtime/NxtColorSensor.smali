.class public Lcom/google/appinventor/components/runtime/NxtColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff

.field static final SENSOR_TYPE_COLOR_BLUE:I = 0x10

.field static final SENSOR_TYPE_COLOR_FULL:I = 0xd

.field static final SENSOR_TYPE_COLOR_GREEN:I = 0xf

.field static final SENSOR_TYPE_COLOR_NONE:I = 0x11

.field static final SENSOR_TYPE_COLOR_RED:I = 0xe

.field private static final mapColorToSensorType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapSensorValueToColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private detectColor:Z

.field private generateColor:I

.field private handler:Landroid/os/Handler;

.field private previousColor:I

.field private previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/high16 v5, -0x1

    const v4, -0xff0100

    const v3, -0xffff01

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const v1, 0xffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    const v2, 0xffffff

    const/4 v1, 0x0

    const-string v0, "NxtColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    new-instance v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->SensorPort(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->DetectColor(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChangedEventEnabled(Z)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BottomOfRange(I)V

    const/16 v0, 0x2ff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->TopOfRange(I)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRangeEventEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRangeEventEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRangeEventEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->GenerateColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)I
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method private getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 3
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

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getSWORDValueFromBytes([BI)I

    move-result v0

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 3
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

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getUWORDValueFromBytes([BI)I

    move-result v0

    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private isHandlerNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range. The AboveRange event will not occur if the DetectColor property is set to True or if the AboveRangeEventEnabled property is set to False."
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

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the DetectColor property is set to False and the light level goes above the TopOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range. The BelowRange event will not occur if the DetectColor property is set to True or if the BelowRangeEventEnabled property is set to False."
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

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the DetectColor property is set to False and the light level goes below the BottomOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-void
.end method

.method public ColorChanged(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Detected color has changed. The ColorChanged event will not occur if the DetectColor property is set to False or if the ColorChangedEventEnabled property is set to False."
    .end annotation

    const-string v0, "ColorChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const v0, 0xffffff

    iput v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the DetectColor property is set to True and the detected color changes."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public DetectColor(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DetectColor"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const v2, 0xffffff

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public DetectColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the sensor should detect color or light. True indicates that the sensor should detect color; False indicates that the sensor should detect light. If the DetectColor property is set to True, the BelowRange, WithinRange, and AboveRange events will not occur and the sensor will not generate color. If the DetectColor property is set to False, the ColorChanged event will not occur."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return v0
.end method

.method public GenerateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color that should generated by the sensor. Only None, Red, Green, or Blue are valid values. The sensor will not generate color when the DetectColor property is set to True."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    return v0
.end method

.method public GenerateColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "lego_nxt_generated_color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const-string v0, "GenerateColor"

    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1a3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GetColor()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current detected color, or the color None if the color can not be read or if the DetectColor property is set to False."
    .end annotation

    const v4, 0xffffff

    const-string v0, "GetColor"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1a1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_2

    iget-object p0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public GetLightLevel()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read or if the DetectColor property is set to True."
    .end annotation

    const/4 v4, -0x1

    const-string v0, "GetLightLevel"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1a2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v1, :cond_2

    iget-object p0, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setSensorPort(Ljava/lang/String;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range. The WithinRange event will not occur if the DetectColor property is set to True or if the WithinRangeEventEnabled property is set to False."
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

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the DetectColor property is set to False and the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setInputMode(Ljava/lang/String;III)V

    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:I

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->resetInputScaledValue(Ljava/lang/String;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onDelete()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    return-void
.end method
