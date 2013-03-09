.class Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;
.super Ljava/lang/Object;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPAddress"
.end annotation


# instance fields
.field mIp:Ljava/lang/String;

.field mMask:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;->mIp:Ljava/lang/String;

    iput-object p2, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$IPAddress;->mMask:Ljava/lang/String;

    return-void
.end method
