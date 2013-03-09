.class public Lcom/google/android/voicesearch/util/XGeoEncoder;
.super Ljava/lang/Object;
.source "XGeoEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 6
    .parameter "location"

    .prologue
    const-wide v4, 0x416312d000000000L

    .line 46
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v1

    .line 47
    .local v1, locationBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v0

    .line 49
    .local v0, latLngBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->CURRENT_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRole(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 50
    sget-object v2, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->DEVICE_LOCATION:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setProducer(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 52
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->setLatitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 53
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->setLongitudeE7(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 54
    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setLatlng(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 56
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->setRadius(F)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->build()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->toByteArray()[B

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
