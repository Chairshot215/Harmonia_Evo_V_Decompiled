.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final AZIMUTH:I = 0x0

.field private static final DIMENSIONS:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationSensor"

.field private static final PITCH:I = 0x1

.field private static final ROLL:I = 0x2


# instance fields
.field private final accelerometerSensor:Landroid/hardware/Sensor;

.field private final accels:[F

.field private accelsFilled:Z

.field private accuracy:I

.field private azimuth:F

.field private enabled:Z

.field private final inclinationMatrix:[F

.field private listening:Z

.field private final magneticFieldSensor:Landroid/hardware/Sensor;

.field private final mags:[F

.field private magsFilled:Z

.field private pitch:F

.field private roll:F

.field private final rotationMatrix:[F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final values:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    return-void
.end method

.method static computeAngle(FF)F
    .locals 4

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getScreenRotation()I
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getRotation(Landroid/view/Display;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0
.end method

.method private startListening()V
    .locals 3

    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->computeAngle(FF)F

    move-result v0

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Azimuth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    return v0
.end method

.method public Magnitude()F
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/high16 v3, 0x42b4

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    double-to-float v0, v0

    return v0
.end method

.method public OrientationChanged(FFF)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "OrientationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v1, "OrientationSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected sensor type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accuracy:I

    :goto_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v0, v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v0, v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->getScreenRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const-string v1, "OrientationSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value for getScreenRotation(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :pswitch_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    goto :goto_1

    :pswitch_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    neg-float v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    :pswitch_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v0, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    :pswitch_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    iput v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
