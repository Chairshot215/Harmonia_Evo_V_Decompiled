.class public Lcom/htc/xps/pomelo/common/PacketCommon;
.super Ljava/lang/Object;
.source "PacketCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/common/PacketCommon$DeviceInfo;,
        Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;,
        Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;
    }
.end annotation


# static fields
.field public static final HTTP_HEADER_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final PARAM_PACKET_SOURCE:Ljava/lang/String; = "packetSource"

.field public static final PARAM_PACKET_TYPE:Ljava/lang/String; = "packetType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method
