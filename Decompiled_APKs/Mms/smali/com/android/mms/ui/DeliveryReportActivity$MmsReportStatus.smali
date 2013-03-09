.class final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryDate:J

.field final deliveryStatus:I

.field final readDate:J

.field final readStatus:I


# direct methods
.method public constructor <init>(IIJJ)V
    .locals 0
    .parameter "drStatus"
    .parameter "rrStatus"
    .parameter "drDate"
    .parameter "rrDate"

    .prologue
    .line 634
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    .line 636
    iput p2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    .line 638
    iput-wide p3, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryDate:J

    .line 639
    iput-wide p5, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readDate:J

    .line 641
    return-void
.end method
