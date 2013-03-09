.class public Lcom/sqn/dcc/AdapterStatistics;
.super Ljava/lang/Object;
.source "AdapterStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sqn/dcc/AdapterStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public rxIPBytesOK:J

.field public rxIPPacketsKO:J

.field public rxIPPacketsMissed:J

.field public rxIPPacketsOK:J

.field public rxTHPBytes:J

.field public rxTHPPackets:J

.field public txIPBytesOK:J

.field public txIPPacketsKO:J

.field public txIPPacketsOK:J

.field public txTHPBytes:J

.field public txTHPPackets:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sqn/dcc/AdapterStatistics$1;

    invoke-direct {v0}, Lcom/sqn/dcc/AdapterStatistics$1;-><init>()V

    sput-object v0, Lcom/sqn/dcc/AdapterStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJ)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    iput-wide p3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    iput-wide p5, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    iput-wide p7, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    iput-wide p9, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    iput-wide p11, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    iput-wide p13, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/AdapterStatistics;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/AdapterStatistics;",
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

    add-int/lit8 v1, v1, 0x58

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    iget-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    invoke-static {p0, v1, v2, p2}, Lcom/sqn/dcc/Util;->Copy64ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/AdapterStatistics;Lcom/sqn/dcc/OutValue;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/AdapterStatistics;",
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

    add-int/lit8 v1, v1, 0x58

    if-ge v2, v1, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy64FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<none>"

    const-string v2, "rxTHPPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", rxTHPBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", txTHPPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", txTHPBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", rxIPPacketsOK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", rxIPBytesOK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", rxIPPacketsKO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", rxIPPacketsMissed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", txIPPacketsOK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", txIPBytesOK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", txIPPacketsKO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxTHPBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txTHPBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsOK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPBytesOK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsKO:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->rxIPPacketsMissed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsOK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPBytesOK:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sqn/dcc/AdapterStatistics;->txIPPacketsKO:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
