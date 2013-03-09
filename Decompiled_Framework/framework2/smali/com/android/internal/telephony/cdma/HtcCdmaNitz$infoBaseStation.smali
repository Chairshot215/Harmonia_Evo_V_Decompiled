.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "infoBaseStation"
.end annotation


# instance fields
.field baseStationId:I

.field baseStationLatitude:I

.field baseStationLongitude:I

.field infoReceivedDate:Ljava/util/Date;

.field infoReceivedTime:J

.field networkId:I

.field systemId:I

.field updateFrom:I


# direct methods
.method public constructor <init>(JLjava/util/Date;IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    iput p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    iput p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLatitude:I

    iput p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationLongitude:I

    iput p7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    iput p8, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->infoReceivedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->updateFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->baseStationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->systemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
