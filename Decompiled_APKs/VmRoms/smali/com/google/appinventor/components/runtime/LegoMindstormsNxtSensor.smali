.class public abstract Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    }
.end annotation


# static fields
.field static final SENSOR_MODE_ANGLESTEPMODE:I = 0xe0

.field static final SENSOR_MODE_BOOLEANMODE:I = 0x20

.field static final SENSOR_MODE_CELSIUSMODE:I = 0xa0

.field static final SENSOR_MODE_FAHRENHEITMODE:I = 0xc0

.field static final SENSOR_MODE_MASK_MODE:I = 0xe0

.field static final SENSOR_MODE_MASK_SLOPE:I = 0x1f

.field static final SENSOR_MODE_PCTFULLSCALEMODE:I = 0x80

.field static final SENSOR_MODE_PERIODCOUNTERMODE:I = 0x60

.field static final SENSOR_MODE_RAWMODE:I = 0x0

.field static final SENSOR_MODE_TRANSITIONCNTMODE:I = 0x40

.field static final SENSOR_TYPE_ANGLE:I = 0x4

.field static final SENSOR_TYPE_CUSTOM:I = 0x9

.field static final SENSOR_TYPE_LIGHT_ACTIVE:I = 0x5

.field static final SENSOR_TYPE_LIGHT_INACTIVE:I = 0x6

.field static final SENSOR_TYPE_LOWSPEED:I = 0xa

.field static final SENSOR_TYPE_LOWSPEED_9V:I = 0xb

.field static final SENSOR_TYPE_NO_SENSOR:I = 0x0

.field static final SENSOR_TYPE_REFLECTION:I = 0x3

.field static final SENSOR_TYPE_SOUND_DB:I = 0x7

.field static final SENSOR_TYPE_SOUND_DBA:I = 0x8

.field static final SENSOR_TYPE_SWITCH:I = 0x1

.field static final SENSOR_TYPE_TEMPERATURE:I = 0x2


# instance fields
.field protected port:I

.field private sensorPortLetter:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->sensorPortLetter:Ljava/lang/String;

    return-object v0
.end method

.method public abstract SensorPort(Ljava/lang/String;)V
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 1

    const-string v0, "Connect"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract initializeSensor(Ljava/lang/String;)V
.end method

.method protected final setSensorPort(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SensorPort"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->convertSensorPortLetterToNumber(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->sensorPortLetter:Ljava/lang/String;

    iput v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->port:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->initializeSensor(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v0, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
