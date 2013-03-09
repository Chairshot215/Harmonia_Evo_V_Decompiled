.class public Lcom/htc/net/FourG/QosStatistics;
.super Ljava/lang/Object;
.source "QosStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/net/FourG/QosStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localId:I

.field private sfid:I

.field private totalPduBytes:J

.field private totalPduPackets:J

.field private totalPduPacketsDropped:J

.field private totalRetransmissionPackets:J

.field private totalRxBytes:J

.field private totalSduBytes:J

.field private totalSduPackets:J

.field private totalSduPacketsDropped:J

.field private uptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/net/FourG/QosStatistics$1;

    invoke-direct {v0}, Lcom/htc/net/FourG/QosStatistics$1;-><init>()V

    sput-object v0, Lcom/htc/net/FourG/QosStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/high16 v0, -0x8000

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    iput v2, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocalID()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    return v0
.end method

.method public getSFID()I
    .locals 1

    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    return v0
.end method

.method public getTotalPduBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    return-wide v0
.end method

.method public getTotalPduPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    return-wide v0
.end method

.method public getTotalPduPacketsDropped()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    return-wide v0
.end method

.method public getTotalRetransmissionPacketsSent()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    return-wide v0
.end method

.method public getTotalRxBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    return-wide v0
.end method

.method public getTotalSduBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    return-wide v0
.end method

.method public getTotalSduPackets()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    return-wide v0
.end method

.method public getTotalSduPacketsDropped()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    return-wide v0
.end method

.method public getUptime()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    return-wide v0
.end method

.method public setLocalID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    return-void
.end method

.method public setSFID(I)V
    .locals 0

    iput p1, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    return-void
.end method

.method public setTotalPduBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    return-void
.end method

.method public setTotalPduPackets(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    return-void
.end method

.method public setTotalPduPacketsDropped(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    return-void
.end method

.method public setTotalRetransmissionPacketsSent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    return-void
.end method

.method public setTotalRxBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    return-void
.end method

.method public setTotalSduBytes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    return-void
.end method

.method public setTotalSduPackets(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    return-void
.end method

.method public setTotalSduPacketsDropped(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    return-void
.end method

.method public setUptime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/htc/net/FourG/QosStatistics;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SFID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalRxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalPduPacketsDropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalSduPacketsDropped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", totalRetransmissionPackets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", uptime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->localId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/net/FourG/QosStatistics;->sfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalPduPacketsDropped:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalSduPacketsDropped:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->totalRetransmissionPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/htc/net/FourG/QosStatistics;->uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
