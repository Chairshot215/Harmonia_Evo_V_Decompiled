.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/location/LocationListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that can count steps."
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION"
.end annotation


# static fields
.field private static final DIMENSIONS:I = 0x3

.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final MIN_SATELLITES:I = 0x4

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 4.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x14


# instance fields
.field private calibrateSteps:Z

.field private final context:Landroid/content/Context;

.field private currentLocation:Landroid/location/Location;

.field private distWhenGPSLost:F

.field private elapsedTimestamp:J

.field private firstGpsReading:Z

.field private foundNonStep:Z

.field private foundValley:[Z

.field private gpsAvailable:Z

.field private gpsDistance:F

.field private gpsStepTime:J

.field private intervalPos:I

.field private lastNumSteps:I

.field private lastValley:[F

.field private lastValues:[[F

.field private final locationManager:Landroid/location/LocationManager;

.field private locationWhenGPSLost:Landroid/location/Location;

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private peak:[I

.field private pedometerPaused:Z

.field private prevDiff:[F

.field private prevLocation:Landroid/location/Location;

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private statusMoving:Z

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private useGps:Z

.field private valley:[I

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    const/16 v0, 0x14

    filled-new-array {v0, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    new-array v0, v7, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    const v0, 0x3f3ae148

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsStepTime:J

    new-array v0, v7, [Z

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    move v0, v6

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v5, v1, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Pedometer.stridelength"

    const v5, 0x3f3ae148

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const-string v1, "Pedometer.distance"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    const-string v1, "Pedometer.clockTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    const-string v0, "Pedometer"

    const-string v1, "Pedometer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v2, v1

    move v3, v9

    move v4, v0

    move v0, v9

    :goto_0
    if-ge v0, v2, :cond_1

    aget-wide v5, v1, v0

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    long-to-float v5, v5

    add-float/2addr v4, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v3

    div-float v0, v4, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v2, v1

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_3

    aget-wide v4, v1, v3

    long-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x437a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v0, v9

    :goto_2
    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private getPeak()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0x14

    move v1, v5

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aput v0, v2, v1

    move v2, v5

    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v3, v3, v2

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v4, v4, v0

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getValley()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0xa

    rem-int/lit8 v0, v0, 0x14

    move v1, v5

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aput v0, v2, v1

    move v2, v5

    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v3, v3, v2

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v4, v4, v0

    aget v4, v4, v1

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setGpsAvailable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->GPSAvailable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->GPSLost()V

    goto :goto_0
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->CalibrationFailed()V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    :cond_1
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    goto :goto_0
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    return v0
.end method

.method public CalibrationFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "CalibrationFailed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GPSAvailable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GPSLost()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "GPSLost"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    return v0
.end method

.method public Pause()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    :cond_0
    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    return-void
.end method

.method public Save()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone"
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v1, "PedometerPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Pedometer.stridelength"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Pedometer.distance"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "Pedometer.prevStepCount"

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v1, :cond_0

    const-string v1, "Pedometer.clockTime"

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const-string v1, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "Pedometer"

    const-string v1, "Pedometer state saved."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "Pedometer.clockTime"

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "StartedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Pause()V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return-void
.end method

.method public StoppedMoving()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const-string v0, "StoppedMoving"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->CalibrateStrideLength(Z)V

    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return-void
.end method

.method public UseGPS(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "true"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public UseGPS()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    return v0
.end method

.method public WalkStep(IF)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected"
    .end annotation

    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4120

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->useGps:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    invoke-direct {p0, v7}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    cmpg-float v1, v0, v6

    if-gez v1, :cond_3

    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->calibrateSteps:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    const/high16 v2, 0x4000

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsStepTime:J

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    move v0, v5

    goto :goto_1

    :cond_6
    iput-boolean v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastNumSteps:I

    goto :goto_0

    :cond_7
    iput-boolean v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsDistance:F

    goto/16 :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->distWhenGPSLost:F

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->currentLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->locationWhenGPSLost:Landroid/location/Location;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->firstGpsReading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevLocation:Landroid/location/Location;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Pedometer;->setGpsAvailable(Z)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    const/16 v12, 0x13

    const/4 v11, 0x3

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->getPeak()V

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->getValley()V

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v1, v1, v10

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v2, v2, v9

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    move v1, v10

    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v1, v4

    :cond_2
    move v2, v10

    :goto_2
    if-ge v2, v11, :cond_c

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v3, v3, v2

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    aget v3, v3, v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    const/high16 v4, 0x4080

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    if-ne v1, v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    iget v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long v7, v3, v7

    aput-wide v7, v5, v6

    iget v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    :cond_3
    iput-boolean v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    :cond_4
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->gpsAvailable:Z

    if-nez v3, :cond_5

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    :cond_5
    :goto_3
    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-virtual {p0, v3, v4}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-nez v3, :cond_6

    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->StartedMoving()V

    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v10, v3, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->peak:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    aget v4, v4, v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    :cond_7
    :goto_4
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aget v3, v3, v2

    if-ltz v3, :cond_8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:[Z

    aput-boolean v9, v3, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:[F

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->valley:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    aget v4, v4, v2

    aput v4, v3, v2

    :cond_8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v3, v3, v4

    aget v4, v0, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    move v1, v9

    goto/16 :goto_1

    :cond_a
    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevDiff:[F

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_4

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    if-eqz v0, :cond_d

    iput-boolean v10, p0, Lcom/google/appinventor/components/runtime/Pedometer;->statusMoving:Z

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->StoppedMoving()V

    :cond_d
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->elapsedTimestamp:J

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    :cond_e
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    sub-int/2addr v0, v9

    if-gez v0, :cond_10

    move v0, v12

    :goto_5
    move v1, v10

    :goto_6
    if-ge v1, v11, :cond_11

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    aget-object v2, v2, v0

    aget v2, v2, v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v3, v3, v4

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[[F

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    aget-object v2, v2, v3

    aget v3, v2, v1

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL

    add-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    sub-int/2addr v0, v9

    goto :goto_5

    :cond_11
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    if-ne v0, v12, :cond_12

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v0, :cond_12

    iput-boolean v9, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    :cond_12
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    goto/16 :goto_0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
