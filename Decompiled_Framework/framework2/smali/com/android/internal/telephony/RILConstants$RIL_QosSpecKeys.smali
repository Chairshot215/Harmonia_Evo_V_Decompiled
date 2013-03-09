.class public Lcom/android/internal/telephony/RILConstants$RIL_QosSpecKeys;
.super Ljava/lang/Object;
.source "RILConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RILConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RIL_QosSpecKeys"
.end annotation


# static fields
.field public static final RIL_QOS_FILTER_DIRECTION:I = 0x8

.field public static final RIL_QOS_FILTER_IPV4_DESTINATION_ADDR:I = 0xa

.field public static final RIL_QOS_FILTER_IPV4_SOURCE_ADDR:I = 0x9

.field public static final RIL_QOS_FILTER_IPV4_TOS:I = 0xb

.field public static final RIL_QOS_FILTER_IPV4_TOS_MASK:I = 0xc

.field public static final RIL_QOS_FILTER_IPV6_DESTINATION_ADDR:I = 0x17

.field public static final RIL_QOS_FILTER_IPV6_FLOW_LABEL:I = 0x19

.field public static final RIL_QOS_FILTER_IPV6_SOURCE_ADDR:I = 0x16

.field public static final RIL_QOS_FILTER_IPV6_TRAFFIC_CLASS:I = 0x18

.field public static final RIL_QOS_FILTER_IP_NEXT_HEADER_PROTOCOL:I = 0x15

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_RANGE:I = 0x10

.field public static final RIL_QOS_FILTER_TCP_DESTINATION_PORT_START:I = 0xf

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_RANGE:I = 0xe

.field public static final RIL_QOS_FILTER_TCP_SOURCE_PORT_START:I = 0xd

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_RANGE:I = 0x14

.field public static final RIL_QOS_FILTER_UDP_DESTINATION_PORT_START:I = 0x13

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_RANGE:I = 0x12

.field public static final RIL_QOS_FILTER_UDP_SOURCE_PORT_START:I = 0x11

.field public static final RIL_QOS_FLOW_3GPP2_PRIORITY:I = 0x7

.field public static final RIL_QOS_FLOW_3GPP2_PROFILE_ID:I = 0x6

.field public static final RIL_QOS_FLOW_DATA_RATE_MAX:I = 0x4

.field public static final RIL_QOS_FLOW_DATA_RATE_MIN:I = 0x3

.field public static final RIL_QOS_FLOW_DIRECTION:I = 0x1

.field public static final RIL_QOS_FLOW_LATENCY:I = 0x5

.field public static final RIL_QOS_FLOW_TRAFFIC_CLASS:I = 0x2

.field public static final RIL_QOS_SPEC_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "RIL_QOS_SPEC_INDEX"

    goto :goto_0

    :pswitch_1
    const-string v0, "RIL_QOS_FLOW_DIRECTION"

    goto :goto_0

    :pswitch_2
    const-string v0, "RIL_QOS_FLOW_TRAFFIC_CLASS"

    goto :goto_0

    :pswitch_3
    const-string v0, "RIL_QOS_FLOW_DATA_RATE_MIN"

    goto :goto_0

    :pswitch_4
    const-string v0, "RIL_QOS_FLOW_DATA_RATE_MAX"

    goto :goto_0

    :pswitch_5
    const-string v0, "RIL_QOS_FLOW_LATENCY"

    goto :goto_0

    :pswitch_6
    const-string v0, "RIL_QOS_FLOW_3GPP2_PROFILE_ID"

    goto :goto_0

    :pswitch_7
    const-string v0, "RIL_QOS_FLOW_3GPP2_PRIORITY"

    goto :goto_0

    :pswitch_8
    const-string v0, "RIL_QOS_FILTER_DIRECTION"

    goto :goto_0

    :pswitch_9
    const-string v0, "RIL_QOS_FILTER_IPV4_SOURCE_ADDR"

    goto :goto_0

    :pswitch_a
    const-string v0, "RIL_QOS_FILTER_IPV4_DESTINATION_ADDR"

    goto :goto_0

    :pswitch_b
    const-string v0, "RIL_QOS_FILTER_IPV4_TOS"

    goto :goto_0

    :pswitch_c
    const-string v0, "RIL_QOS_FILTER_IPV4_TOS_MASK"

    goto :goto_0

    :pswitch_d
    const-string v0, "RIL_QOS_FILTER_TCP_SOURCE_PORT_START"

    goto :goto_0

    :pswitch_e
    const-string v0, "RIL_QOS_FILTER_TCP_SOURCE_PORT_RANGE"

    goto :goto_0

    :pswitch_f
    const-string v0, "RIL_QOS_FILTER_TCP_DESTINATION_PORT_START"

    goto :goto_0

    :pswitch_10
    const-string v0, "RIL_QOS_FILTER_TCP_DESTINATION_PORT_RANGE"

    goto :goto_0

    :pswitch_11
    const-string v0, "RIL_QOS_FILTER_UDP_SOURCE_PORT_START"

    goto :goto_0

    :pswitch_12
    const-string v0, "RIL_QOS_FILTER_UDP_SOURCE_PORT_RANGE"

    goto :goto_0

    :pswitch_13
    const-string v0, "RIL_QOS_FILTER_UDP_DESTINATION_PORT_START"

    goto :goto_0

    :pswitch_14
    const-string v0, "RIL_QOS_FILTER_UDP_DESTINATION_PORT_RANGE"

    goto :goto_0

    :pswitch_15
    const-string v0, "RIL_QOS_FILTER_IP_NEXT_HEADER_PROTOCOL"

    goto :goto_0

    :pswitch_16
    const-string v0, "RIL_QOS_FILTER_IPV6_SOURCE_ADDR"

    goto :goto_0

    :pswitch_17
    const-string v0, "RIL_QOS_FILTER_IPV6_DESTINATION_ADDR"

    goto :goto_0

    :pswitch_18
    const-string v0, "RIL_QOS_FILTER_IPV6_TRAFFIC_CLASS"

    goto :goto_0

    :pswitch_19
    const-string v0, "RIL_QOS_FILTER_IPV6_FLOW_LABEL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
