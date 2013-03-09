.class Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field direction:I

.field id:I

.field timeStamp:J

.field totalCurrent:I

.field totalTotal:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 110
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    return-void
.end method
