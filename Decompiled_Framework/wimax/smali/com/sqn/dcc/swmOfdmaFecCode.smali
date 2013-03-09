.class public Lcom/sqn/dcc/swmOfdmaFecCode;
.super Ljava/lang/Object;
.source "swmOfdmaFecCode.java"


# static fields
.field public static final SWM_OFDMA_FEC_CODE_QTY:I = 0x35

.field public static final SWM_OFDMA_FEC_CODE_RVD14:I = 0xe

.field public static final SWM_OFDMA_QAM16_BTC_3_5:I = 0x9

.field public static final SWM_OFDMA_QAM16_BTC_4_5:I = 0xa

.field public static final SWM_OFDMA_QAM16_CCOI_1_2:I = 0x2e

.field public static final SWM_OFDMA_QAM16_CCOI_3_4:I = 0x2f

.field public static final SWM_OFDMA_QAM16_CC_1_2:I = 0x2

.field public static final SWM_OFDMA_QAM16_CC_3_4:I = 0x3

.field public static final SWM_OFDMA_QAM16_CTC_1_2:I = 0x10

.field public static final SWM_OFDMA_QAM16_CTC_3_4:I = 0x11

.field public static final SWM_OFDMA_QAM16_LDPC_1_2:I = 0x20

.field public static final SWM_OFDMA_QAM16_LDPC_2_3_A:I = 0x21

.field public static final SWM_OFDMA_QAM16_LDPC_2_3_B:I = 0x28

.field public static final SWM_OFDMA_QAM16_LDPC_3_4_A:I = 0x22

.field public static final SWM_OFDMA_QAM16_LDPC_3_4_B:I = 0x29

.field public static final SWM_OFDMA_QAM16_LDPC_5_6:I = 0x33

.field public static final SWM_OFDMA_QAM16_ZT_CC_1_2:I = 0x18

.field public static final SWM_OFDMA_QAM16_ZT_CC_3_4:I = 0x19

.field public static final SWM_OFDMA_QAM64_BTC_4_5:I = 0xc

.field public static final SWM_OFDMA_QAM64_BTC_5_8:I = 0xb

.field public static final SWM_OFDMA_QAM64_CCOI_2_3:I = 0x30

.field public static final SWM_OFDMA_QAM64_CCOI_3_4:I = 0x31

.field public static final SWM_OFDMA_QAM64_CC_1_2:I = 0x4

.field public static final SWM_OFDMA_QAM64_CC_2_3:I = 0x5

.field public static final SWM_OFDMA_QAM64_CC_3_4:I = 0x6

.field public static final SWM_OFDMA_QAM64_CTC_1_2:I = 0x12

.field public static final SWM_OFDMA_QAM64_CTC_2_3:I = 0x13

.field public static final SWM_OFDMA_QAM64_CTC_3_4:I = 0x14

.field public static final SWM_OFDMA_QAM64_CTC_5_6:I = 0x15

.field public static final SWM_OFDMA_QAM64_LDPC_1_2:I = 0x23

.field public static final SWM_OFDMA_QAM64_LDPC_2_3_A:I = 0x24

.field public static final SWM_OFDMA_QAM64_LDPC_2_3_B:I = 0x2a

.field public static final SWM_OFDMA_QAM64_LDPC_3_4_A:I = 0x25

.field public static final SWM_OFDMA_QAM64_LDPC_3_4_B:I = 0x2b

.field public static final SWM_OFDMA_QAM64_LDPC_5_6:I = 0x34

.field public static final SWM_OFDMA_QAM64_ZT_CC_1_2:I = 0x1a

.field public static final SWM_OFDMA_QAM64_ZT_CC_2_3:I = 0x1b

.field public static final SWM_OFDMA_QAM64_ZT_CC_3_4:I = 0x1c

.field public static final SWM_OFDMA_QPSK_BTC_1_2:I = 0x7

.field public static final SWM_OFDMA_QPSK_BTC_3_4:I = 0x8

.field public static final SWM_OFDMA_QPSK_CCOI_1_2:I = 0x2c

.field public static final SWM_OFDMA_QPSK_CCOI_3_4:I = 0x2d

.field public static final SWM_OFDMA_QPSK_CC_1_2:I = 0x0

.field public static final SWM_OFDMA_QPSK_CC_3_4:I = 0x1

.field public static final SWM_OFDMA_QPSK_CTC_1_2:I = 0xd

.field public static final SWM_OFDMA_QPSK_CTC_3_4:I = 0xf

.field public static final SWM_OFDMA_QPSK_LDPC_1_2:I = 0x1d

.field public static final SWM_OFDMA_QPSK_LDPC_2_3_A:I = 0x1e

.field public static final SWM_OFDMA_QPSK_LDPC_2_3_B:I = 0x26

.field public static final SWM_OFDMA_QPSK_LDPC_3_4_A:I = 0x1f

.field public static final SWM_OFDMA_QPSK_LDPC_3_4_B:I = 0x27

.field public static final SWM_OFDMA_QPSK_LDPC_5_6:I = 0x32

.field public static final SWM_OFDMA_QPSK_ZT_CC_1_2:I = 0x16

.field public static final SWM_OFDMA_QPSK_ZT_CC_3_4:I = 0x17


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFecCode;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmOfdmaFecCode;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmOfdmaFecCode;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/sqn/dcc/swmOfdmaFecCode;->value:I

    const/4 v0, 0x0

    goto :goto_0
.end method
