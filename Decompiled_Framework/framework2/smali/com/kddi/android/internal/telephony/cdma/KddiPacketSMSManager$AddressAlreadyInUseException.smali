.class public Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;
.super Ljava/net/BindException;
.source "KddiPacketSMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AddressAlreadyInUseException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;


# direct methods
.method public constructor <init>(Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager$AddressAlreadyInUseException;->this$0:Lcom/kddi/android/internal/telephony/cdma/KddiPacketSMSManager;

    invoke-direct {p0, p2}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    return-void
.end method
