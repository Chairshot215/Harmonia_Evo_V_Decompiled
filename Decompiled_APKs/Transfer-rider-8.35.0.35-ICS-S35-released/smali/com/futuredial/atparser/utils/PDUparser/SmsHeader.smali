.class public Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;,
        Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;,
        Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    }
.end annotation


# static fields
.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_16_BIT:I = 0x5

.field public static final ELT_ID_APPLICATION_PORT_ADDRESSING_8_BIT:I = 0x4

.field public static final ELT_ID_CHARACTER_SIZE_WVG_OBJECT:I = 0x19

.field public static final ELT_ID_COMPRESSION_CONTROL:I = 0x16

.field public static final ELT_ID_CONCATENATED_16_BIT_REFERENCE:I = 0x8

.field public static final ELT_ID_CONCATENATED_8_BIT_REFERENCE:I = 0x0

.field public static final ELT_ID_ENHANCED_VOICE_MAIL_INFORMATION:I = 0x23

.field public static final ELT_ID_EXTENDED_OBJECT:I = 0x14

.field public static final ELT_ID_EXTENDED_OBJECT_DATA_REQUEST_CMD:I = 0x1a

.field public static final ELT_ID_HYPERLINK_FORMAT_ELEMENT:I = 0x21

.field public static final ELT_ID_LARGE_ANIMATION:I = 0xe

.field public static final ELT_ID_LARGE_PICTURE:I = 0x10

.field public static final ELT_ID_OBJECT_DISTR_INDICATOR:I = 0x17

.field public static final ELT_ID_PREDEFINED_ANIMATION:I = 0xd

.field public static final ELT_ID_PREDEFINED_SOUND:I = 0xb

.field public static final ELT_ID_REPLY_ADDRESS_ELEMENT:I = 0x22

.field public static final ELT_ID_REUSED_EXTENDED_OBJECT:I = 0x15

.field public static final ELT_ID_RFC_822_EMAIL_HEADER:I = 0x20

.field public static final ELT_ID_SMALL_ANIMATION:I = 0xf

.field public static final ELT_ID_SMALL_PICTURE:I = 0x11

.field public static final ELT_ID_SMSC_CONTROL_PARAMS:I = 0x6

.field public static final ELT_ID_SPECIAL_SMS_MESSAGE_INDICATION:I = 0x1

.field public static final ELT_ID_STANDARD_WVG_OBJECT:I = 0x18

.field public static final ELT_ID_TEXT_FORMATTING:I = 0xa

.field public static final ELT_ID_UDH_SOURCE_INDICATION:I = 0x7

.field public static final ELT_ID_USER_DEFINED_SOUND:I = 0xc

.field public static final ELT_ID_USER_PROMPT_INDICATOR:I = 0x13

.field public static final ELT_ID_VARIABLE_PICTURE:I = 0x12

.field public static final ELT_ID_WIRELESS_CTRL_MSG_PROTOCOL:I = 0x9

.field public static final PORT_WAP_PUSH:I = 0xb84

.field public static final PORT_WAP_WSP:I = 0x23f0


# instance fields
.field public concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

.field public miscEltList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;",
            ">;"
        }
    .end annotation
.end field

.field public portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .line 100
    return-void
.end method

.method public static fromByteArray([B)Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 109
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    .local v2, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;

    invoke-direct {v6}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;-><init>()V

    .line 111
    .local v6, smsHeader:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    if-lez v7, :cond_1

    .line 120
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 121
    .local v1, id:I
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 124
    .local v3, length:I
    packed-switch v1, :pswitch_data_0

    .line 162
    :pswitch_0
    new-instance v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;

    invoke-direct {v4}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;-><init>()V

    .line 163
    .local v4, miscElt:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;
    iput v1, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->id:I

    .line 164
    new-array v7, v3, [B

    iput-object v7, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->data:[B

    .line 165
    iget-object v7, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->data:[B

    invoke-virtual {v2, v7, v9, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 166
    iget-object v7, v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    .end local v4           #miscElt:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;
    :pswitch_1
    new-instance v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;-><init>()V

    .line 127
    .local v0, concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    .line 128
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    .line 129
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    .line 130
    iput-boolean v10, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->isEightBits:Z

    .line 131
    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    iget v8, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    if-gt v7, v8, :cond_0

    .line 133
    iput-object v0, v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    goto :goto_0

    .line 137
    .end local v0           #concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
    :pswitch_2
    new-instance v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;-><init>()V

    .line 138
    .restart local v0       #concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    .line 139
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    .line 140
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    .line 141
    iput-boolean v9, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->isEightBits:Z

    .line 142
    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    if-eqz v7, :cond_0

    iget v7, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    iget v8, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    if-gt v7, v8, :cond_0

    .line 144
    iput-object v0, v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    goto/16 :goto_0

    .line 148
    .end local v0           #concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
    :pswitch_3
    new-instance v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;-><init>()V

    .line 149
    .local v5, portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    .line 150
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    iput v7, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    .line 151
    iput-boolean v10, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->areEightBits:Z

    .line 152
    iput-object v5, v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 155
    .end local v5           #portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    :pswitch_4
    new-instance v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    invoke-direct {v5}, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;-><init>()V

    .line 156
    .restart local v5       #portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    .line 157
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    .line 158
    iput-boolean v9, v5, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->areEightBits:Z

    .line 159
    iput-object v5, v6, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    goto/16 :goto_0

    .line 169
    .end local v1           #id:I
    .end local v3           #length:I
    .end local v5           #portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    :cond_1
    return-object v6

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static toByteArray(Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;)[B
    .locals 8
    .parameter "smsHeader"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 178
    iget-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 181
    const/4 v5, 0x0

    .line 221
    :goto_0
    return-object v5

    .line 184
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x8c

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 185
    .local v3, outStream:Ljava/io/ByteArrayOutputStream;
    iget-object v0, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    .line 186
    .local v0, concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;
    if-eqz v0, :cond_1

    .line 187
    iget-boolean v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->isEightBits:Z

    if-eqz v5, :cond_3

    .line 188
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 190
    iget v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    :goto_1
    iget v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    iget v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    .line 201
    .local v4, portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    if-eqz v4, :cond_2

    .line 202
    iget-boolean v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->areEightBits:Z

    if-eqz v5, :cond_4

    .line 203
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 216
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;

    .line 217
    .local v2, miscElt:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;
    iget v5, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->id:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 218
    iget-object v5, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->data:[B

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    iget-object v5, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->data:[B

    iget-object v6, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;->data:[B

    array-length v6, v6

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 192
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #miscElt:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$MiscElt;
    .end local v4           #portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 194
    iget v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    iget v5, v0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 208
    .restart local v4       #portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;
    :cond_4
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 209
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 210
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    ushr-int/lit8 v5, v5, 0x8

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 213
    iget v5, v4, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 221
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto/16 :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "UserDataHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, "{ ConcatRef "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    if-nez v1, :cond_0

    .line 230
    const-string v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_0
    const-string v1, ", PortAddrs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v1, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    if-nez v1, :cond_1

    .line 240
    const-string v1, "unset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :goto_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 232
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ refNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", seqNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", isEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->concatRef:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;

    iget-boolean v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$ConcatRef;->isEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ destPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", areEightBits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader;->portAddrs:Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;

    iget-boolean v2, v2, Lcom/futuredial/atparser/utils/PDUparser/SmsHeader$PortAddrs;->areEightBits:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
