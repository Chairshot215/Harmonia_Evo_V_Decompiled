.class public Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "ClientPropertiesRequest.java"


# instance fields
.field private final properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->readCohortFromFlash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private readCohortFromFlash()Ljava/lang/String;
    .locals 1

    const-string v0, "Cohort"

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method public isForeground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->CLIENT_PROPERTIES_RESPONSE_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->readProtoBufResponse(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    const-string v2, "Cohort"

    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v3
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/ClientPropertiesRequest;->properties:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-static {p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->writeProtoBufToOutput(Ljava/io/DataOutput;Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    return-void
.end method
