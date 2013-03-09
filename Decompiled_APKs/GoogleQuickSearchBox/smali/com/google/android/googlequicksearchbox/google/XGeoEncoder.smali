.class public Lcom/google/android/googlequicksearchbox/google/XGeoEncoder;
.super Ljava/lang/Object;
.source "XGeoEncoder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 6
    .parameter "location"

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 39
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;-><init>()V

    .line 41
    .local v0, descriptor:Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 42
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 43
    new-instance v1, Llocation/unified/LocationDescriptorProto$LatLng;

    invoke-direct {v1}, Llocation/unified/LocationDescriptorProto$LatLng;-><init>()V

    .line 44
    .local v1, latLng:Llocation/unified/LocationDescriptorProto$LatLng;
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Llocation/unified/LocationDescriptorProto$LatLng;->setLatitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 45
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Llocation/unified/LocationDescriptorProto$LatLng;->setLongitudeE7(I)Llocation/unified/LocationDescriptorProto$LatLng;

    .line 46
    invoke-virtual {v0, v1}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 47
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
