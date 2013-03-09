.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p><p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through either wireless networks or GPS satellites (if outside).</p>"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$1;,
        Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;
    }
.end annotation


# static fields
.field public static final MIN_DISTANCE_INTERVAL:J = 0x5L

.field public static final MIN_TIME_INTERVAL:J = 0xea60L

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private allProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private altitude:D

.field private enabled:Z

.field private geocoder:Landroid/location/Geocoder;

.field private final handler:Landroid/os/Handler;

.field private hasAltitude:Z

.field private hasLocationData:Z

.field private lastLocation:Landroid/location/Location;

.field private latitude:D

.field private listening:Z

.field private final locationCriteria:Landroid/location/Criteria;

.field private final locationManager:Landroid/location/LocationManager;

.field private locationProvider:Landroid/location/LocationProvider;

.field private longitude:D

.field private myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field private providerLocked:Z

.field private providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    new-instance v0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$1;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide p1
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startProvider(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "LocationSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvider("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x40a0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    move v0, v6

    goto :goto_0
.end method

.method private stopListening()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v2, 0x4056800000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v2, -0x3fa9800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v2, 0x4066800000000000L

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v2, -0x3f99800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    if-eqz p0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v6

    :goto_0
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LocationSensor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown by getFromLocation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "No address available"

    goto :goto_1
.end method

.method public Enabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method public HasAccuracy()Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "LatitudeFromAddress"

    const/16 v2, 0x65

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0
.end method

.method public LocationChanged(DDD)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationChanged"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "LongitudeFromAddress"

    const/16 v2, 0x66

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NO PROVIDER"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    goto :goto_0
.end method

.method public RefreshProvider()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method
