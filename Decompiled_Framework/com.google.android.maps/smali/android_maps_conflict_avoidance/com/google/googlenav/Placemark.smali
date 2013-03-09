.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;
.super Ljava/lang/Object;
.source "Placemark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;
    }
.end annotation


# static fields
.field private static final EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

.field private static final EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

.field private static final EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;


# instance fields
.field private events:Ljava/util/Hashtable;

.field private geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

.field private iconClass:B

.field private isSelectable:Z

.field private name:Ljava/lang/String;

.field private final proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

.field private resultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_ENHANCED_DATA_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$EnhancedDataSource;

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_IMAGE_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$ImageResource;

    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->EMPTY_SNIPPET_SOURCE:[Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark$SnippetSource;

    return-void
.end method

.method protected constructor <init>(Landroid_maps_conflict_avoidance/com/google/map/Geometry;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->events:Ljava/util/Hashtable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isSelectable:Z

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->iconClass:B

    const/4 v0, 0x7

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/AddressUtil;->getAddressLine(IILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->geometry:Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    return-object v0
.end method

.method public getKmlSnippet()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->proto:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x5a

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufUtil;->getSubProtoValueOrEmpty(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKmlSupplementalDisplayLine()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSnippet()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getGeometry()Landroid_maps_conflict_avoidance/com/google/map/Geometry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/map/Geometry;->getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->name:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKml()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getKmlSupplementalDisplayLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public isKml()Z
    .locals 1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlPlacemark()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->isKmlResult()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKmlPlacemark()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKmlResult()Z
    .locals 2

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->resultType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getLocation()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Placemark;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
