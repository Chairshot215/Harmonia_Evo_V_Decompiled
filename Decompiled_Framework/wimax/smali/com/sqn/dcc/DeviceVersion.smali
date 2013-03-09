.class public Lcom/sqn/dcc/DeviceVersion;
.super Ljava/lang/Object;
.source "DeviceVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sqn/dcc/DeviceVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public flags:S

.field public major:S

.field public minor:S

.field public patch:S

.field public revision:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/DeviceVersion$1;

    invoke-direct {v0}, Lcom/sqn/dcc/DeviceVersion$1;-><init>()V

    sput-object v0, Lcom/sqn/dcc/DeviceVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->major:S

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->minor:S

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->patch:S

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->flags:S

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sqn/dcc/DeviceVersion;->revision:J

    return-void
.end method

.method public constructor <init>(BBBBI)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    and-int/lit16 v0, p1, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->major:S

    and-int/lit16 v0, p2, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->minor:S

    and-int/lit16 v0, p3, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->patch:S

    and-int/lit16 v0, p4, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->flags:S

    and-int/lit8 v0, p5, -0x1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sqn/dcc/DeviceVersion;->revision:J

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/DeviceVersion;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->major:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->minor:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->patch:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->flags:S

    invoke-static {p0, v1, p2}, Lcom/sqn/dcc/Util;->Copy8ToBuffer([BSLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/DeviceVersion;->revision:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/DeviceVersion;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/DeviceVersion;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v2, p0

    iget-object v1, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->major:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->minor:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->patch:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy8FromBuffer([BLcom/sqn/dcc/OutValue;)S

    move-result v1

    iput-short v1, p1, Lcom/sqn/dcc/DeviceVersion;->flags:S

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/DeviceVersion;->revision:J

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->major:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->minor:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->patch:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->flags:S

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sqn/dcc/DeviceVersion;->revision:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<none>"

    const-string v2, "major: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lcom/sqn/dcc/DeviceVersion;->major:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", minor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lcom/sqn/dcc/DeviceVersion;->minor:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", patch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lcom/sqn/dcc/DeviceVersion;->patch:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lcom/sqn/dcc/DeviceVersion;->flags:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", revision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/DeviceVersion;->revision:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->major:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->minor:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-short v0, p0, Lcom/sqn/dcc/DeviceVersion;->patch:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/sqn/dcc/DeviceVersion;->revision:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
