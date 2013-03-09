.class public Lcom/futuredial/fbus/NokiaObexSMS;
.super Ljava/lang/Object;
.source "NokiaObexSMS.java"

# interfaces
.implements Lcom/futuredial/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/fbus/NokiaObexSMS$Message;
    }
.end annotation


# static fields
.field private static final LogTag:Ljava/lang/String; = "NokiaObexSMS"


# instance fields
.field private final I999001:I

.field private final I999002:I

.field private final I999003:I

.field private m_bLSMSHasSameID:Z

.field private m_iBoxType:I

.field private m_iLastLSMSID:Ljava/lang/Integer;

.field private m_iStartIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->I999001:I

    .line 73
    const v0, 0xf3e5a

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->I999002:I

    .line 74
    const v0, 0xf3e5b

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->I999003:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;

    .line 60
    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iBoxType:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    .line 64
    return-void
.end method

.method private GetNodeAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "node"
    .parameter "attributename"

    .prologue
    .line 1302
    const-string v2, ""

    .line 1304
    .local v2, sAttribute:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1305
    .local v1, nnmAttributes:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v1, :cond_0

    .line 1307
    invoke-interface {v1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1308
    .local v0, ndAttr:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 1310
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 1314
    .end local v0           #ndAttr:Lorg/w3c/dom/Node;
    :cond_0
    return-object v2
.end method

.method private ParseOneSMS(ILjava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 21
    .parameter "iBoxType"
    .parameter "strSMSName"
    .parameter "smsBuffer"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 779
    const-string v18, "NokiaObexSMS"

    const-string v19, "enter functino ParseOneSMS"

    invoke-static/range {v18 .. v19}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const/4 v10, 0x1

    .line 781
    .local v10, iRet:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v6, v0

    .line 783
    .local v6, iBufferLen:I
    const/4 v7, 0x6

    .line 785
    .local v7, iCursor:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v7

    shl-int/lit8 v18, v18, 0x8

    const v19, 0xff00

    and-int v18, v18, v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x7

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    or-int v9, v18, v19

    .line 786
    .local v9, iPDUDataLen:I
    add-int/lit8 v7, v7, 0x2

    .line 787
    add-int/lit8 v7, v7, 0x2

    .line 789
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v7

    shl-int/lit8 v18, v18, 0x8

    const v19, 0xff00

    and-int v18, v18, v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0xb

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    .line 790
    .local v11, iSMSDataLen:I
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    .line 792
    const/16 v18, 0x2712

    .line 884
    :goto_0
    return v18

    .line 794
    :cond_0
    add-int/lit8 v7, v7, 0x2

    .line 795
    add-int/lit8 v7, v7, 0x52

    .line 797
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v4, arrayNum:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x51

    .line 801
    new-array v14, v9, [B

    .line 802
    .local v14, pdu:[B
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v7, v14, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    add-int/lit16 v7, v9, 0xaf

    .line 805
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_7

    .line 807
    add-int/lit8 v18, v7, 0x3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 809
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, 0x1

    aget-byte v18, v18, v19

    shl-int/lit8 v18, v18, 0x8

    const v19, 0xff00

    and-int v18, v18, v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, 0x2

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v12, v18, v19

    .line 810
    .local v12, iSpareDataLen:I
    add-int/lit8 v7, v7, 0x3

    .line 811
    add-int v18, v7, v12

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 813
    const/4 v8, 0x0

    .line 816
    .local v8, iFieldTag:I
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v7

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 817
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v7, 0x1

    aget-byte v18, v18, v19

    shl-int/lit8 v18, v18, 0x8

    const v19, 0xff00

    and-int v18, v18, v19

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, 0x2

    aget-byte v19, v19, v20

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v12, v18, v19

    .line 818
    add-int/lit8 v7, v7, 0x3

    .line 819
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v8, v0, :cond_2

    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v12, v0, :cond_3

    add-int v18, v7, v12

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    .line 823
    :try_start_0
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v12, -0x2

    const-string v20, "UNICODE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v7, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 824
    .local v17, strTempNum:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 826
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v17           #strTempNum:Ljava/lang/String;
    :cond_3
    add-int/2addr v7, v12

    .line 837
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 847
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v0, v8, :cond_7

    .line 849
    const/16 v18, 0x2711

    goto/16 :goto_0

    .line 829
    :catch_0
    move-exception v5

    .line 831
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    const-string v18, "NokiaObexSMS"

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    const/16 v18, 0x2716

    goto/16 :goto_0

    .line 841
    .end local v5           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    add-int/lit8 v18, v7, 0x3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 843
    const/16 v18, 0x2712

    goto/16 :goto_0

    .line 854
    .end local v8           #iFieldTag:I
    :cond_5
    const/16 v18, 0x2712

    goto/16 :goto_0

    .line 859
    .end local v12           #iSpareDataLen:I
    :cond_6
    const/16 v18, 0x2712

    goto/16 :goto_0

    .line 863
    :cond_7
    new-instance v13, Lcom/futuredial/fbus/NokiaObexSMS$Message;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/futuredial/fbus/NokiaObexSMS$Message;-><init>(Lcom/futuredial/fbus/NokiaObexSMS;)V

    .line 864
    .local v13, msg:Lcom/futuredial/fbus/NokiaObexSMS$Message;
    invoke-static {v14}, Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;->createFromPdu([B)Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;

    move-result-object v15

    .line 865
    .local v15, sms:Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;
    if-nez v15, :cond_8

    .line 867
    const-string v18, "NokiaObexSMS"

    const-string v19, "fail in parsing PDU"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v18, 0x2715

    goto/16 :goto_0

    .line 871
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/futuredial/fbus/NokiaObexSMS;->ParseSMSTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 872
    .local v16, strSMSTime:Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v4, v1, v15}, Lcom/futuredial/fbus/NokiaObexSMS$Message;->InitializeMessage(ILjava/util/ArrayList;Ljava/lang/String;Lcom/futuredial/atparser/utils/PDUparser/SmsMessage;)V

    .line 873
    iget-boolean v0, v13, Lcom/futuredial/fbus/NokiaObexSMS$Message;->m_bLongMsg:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 875
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Lcom/futuredial/fbus/NokiaObexSMS$Message;->AddMessageToItem(Lcom/futuredial/publicobj/ItemArray;)V

    .line 882
    :goto_1
    const/4 v10, 0x0

    .line 883
    const-string v18, "NokiaObexSMS"

    const-string v19, "exit function ParseOneSMS"

    invoke-static/range {v18 .. v19}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v10

    .line 884
    goto/16 :goto_0

    .line 879
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/futuredial/fbus/NokiaObexSMS$Message;->AddMessageToItem(Lcom/futuredial/publicobj/ItemArray;)V

    goto :goto_1
.end method

.method private ParseSMSTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "strSMSName"

    .prologue
    const/16 v8, 0x10

    .line 1435
    const-string v5, ""

    .line 1436
    .local v5, strTime:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_0

    move-object v6, v5

    .line 1452
    .end local v5           #strTime:Ljava/lang/String;
    .local v6, strTime:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1439
    .end local v6           #strTime:Ljava/lang/String;
    .restart local v5       #strTime:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1440
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    const-string v7, "1980-01-01 08:00:00"

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1441
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/16 v9, 0x8

    const/16 v10, 0x10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long v3, v7, v9

    .line 1442
    .local v3, lTime:J
    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1443
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1444
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, "T"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v5

    .line 1452
    .end local v5           #strTime:Ljava/lang/String;
    .restart local v6       #strTime:Ljava/lang/String;
    goto :goto_0

    .line 1446
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v3           #lTime:J
    .end local v6           #strTime:Ljava/lang/String;
    .restart local v5       #strTime:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1448
    .local v2, e:Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    move-object v6, v5

    .line 1449
    .end local v5           #strTime:Ljava/lang/String;
    .restart local v6       #strTime:Ljava/lang/String;
    goto :goto_0
.end method

.method private ParseServiceMsg(ILjava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 15
    .parameter "iBoxType"
    .parameter "strSMSName"
    .parameter "smsBuffer"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 713
    const-string v12, "NokiaObexSMS"

    const-string v13, "enter function ParseServiceMsg"

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v4, 0x1

    .line 718
    .local v4, iRet:I
    const/16 v3, 0xc6

    .line 720
    .local v3, iCursor:I
    move v5, v3

    .line 721
    .local v5, iTitleEnd:I
    :goto_0
    add-int/lit8 v12, v5, 0x1

    :try_start_0
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v13, v13

    if-ge v12, v13, :cond_0

    .line 723
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v12, v12, v5

    if-nez v12, :cond_2

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v13, v5, 0x1

    aget-byte v12, v12, v13

    if-nez v12, :cond_2

    .line 733
    :cond_0
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v5, v3

    const-string v14, "UTF-16"

    invoke-direct {v10, v12, v3, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 735
    .local v10, strTitle:Ljava/lang/String;
    add-int/lit8 v3, v5, 0x2

    .line 737
    move v2, v3

    .line 738
    .local v2, iAddressEnd:I
    :goto_1
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    array-length v13, v13

    if-ge v12, v13, :cond_1

    .line 740
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v12, v12, v2

    if-nez v12, :cond_3

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v13, v2, 0x1

    aget-byte v12, v12, v13

    if-nez v12, :cond_3

    .line 750
    :cond_1
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    sub-int v13, v2, v3

    const-string v14, "UTF-16"

    invoke-direct {v7, v12, v3, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 753
    .local v7, strAddress:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 755
    .local v8, strContent:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/futuredial/fbus/NokiaObexSMS;->ParseSMSTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 757
    .local v9, strSMSTime:Ljava/lang/String;
    new-instance v6, Lcom/futuredial/fbus/NokiaObexSMS$Message;

    invoke-direct {v6, p0}, Lcom/futuredial/fbus/NokiaObexSMS$Message;-><init>(Lcom/futuredial/fbus/NokiaObexSMS;)V

    .line 758
    .local v6, msg:Lcom/futuredial/fbus/NokiaObexSMS$Message;
    const-string v12, ""

    move/from16 v0, p1

    invoke-virtual {v6, v0, v12, v9, v8}, Lcom/futuredial/fbus/NokiaObexSMS$Message;->InitializeMessage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/futuredial/fbus/NokiaObexSMS$Message;->AddMessageToItem(Lcom/futuredial/publicobj/ItemArray;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    const/4 v4, 0x0

    .line 772
    .end local v2           #iAddressEnd:I
    .end local v6           #msg:Lcom/futuredial/fbus/NokiaObexSMS$Message;
    .end local v7           #strAddress:Ljava/lang/String;
    .end local v8           #strContent:Ljava/lang/String;
    .end local v9           #strSMSTime:Ljava/lang/String;
    .end local v10           #strTitle:Ljava/lang/String;
    :goto_2
    const-string v12, "NokiaObexSMS"

    const-string v13, "exit function ParseServiceMsg"

    invoke-static {v12, v13}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return v4

    .line 728
    :cond_2
    :try_start_1
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v11, v12, v5

    .line 729
    .local v11, temp:B
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v14, v5, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v12, v5

    .line 730
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v13, v5, 0x1

    aput-byte v11, v12, v13

    .line 731
    add-int/lit8 v5, v5, 0x2

    .line 732
    goto/16 :goto_0

    .line 745
    .end local v11           #temp:B
    .restart local v2       #iAddressEnd:I
    .restart local v10       #strTitle:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    aget-byte v11, v12, v2

    .line 746
    .restart local v11       #temp:B
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v14, v2, 0x1

    aget-byte v13, v13, v14

    aput-byte v13, v12, v2

    .line 747
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    add-int/lit8 v13, v2, 0x1

    aput-byte v11, v12, v13
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 748
    add-int/lit8 v2, v2, 0x2

    .line 749
    goto/16 :goto_1

    .line 764
    .end local v2           #iAddressEnd:I
    .end local v10           #strTitle:Ljava/lang/String;
    .end local v11           #temp:B
    :catch_0
    move-exception v1

    .line 766
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 767
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 768
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private PrintByteAsHexString(Ljava/lang/String;[B)V
    .locals 7
    .parameter "strType"
    .parameter "binData"

    .prologue
    const/16 v6, 0x9

    .line 1319
    if-eqz p2, :cond_0

    array-length v4, p2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    const-string v3, ""

    .line 1324
    .local v3, strHex:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 1326
    const/16 v4, 0xa0

    if-lt v1, v4, :cond_3

    .line 1328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n ... ... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1360
    :cond_2
    invoke-static {p1, v3}, Lcom/futuredial/config/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1331
    :cond_3
    rem-int/lit8 v4, v1, 0x10

    if-nez v4, :cond_4

    .line 1333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1335
    :cond_4
    aget-byte v4, p2, v1

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    and-int/lit8 v0, v4, 0xf

    .line 1336
    .local v0, h:I
    aget-byte v4, p2, v1

    and-int/lit8 v2, v4, 0xf

    .line 1337
    .local v2, l:I
    if-gt v0, v6, :cond_5

    .line 1339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x30

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1347
    :goto_2
    if-gt v2, v6, :cond_6

    .line 1349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1356
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1343
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x37

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1353
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x37

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private ResetLSMSID(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 14
    .parameter "iaUnCompleted"

    .prologue
    const v13, 0xf3e5b

    const v12, 0xf3e59

    .line 1540
    iget-boolean v10, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v10

    iget v11, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    if-le v10, v11, :cond_6

    .line 1542
    const/4 v3, 0x1

    .line 1543
    .local v3, iAutoLSMSID:I
    const/4 v4, 0x0

    .line 1544
    .local v4, iCurLSMSCount:I
    :goto_0
    iget v10, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    invoke-virtual {p1}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 1546
    iget v10, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    invoke-virtual {p1, v10}, Lcom/futuredial/publicobj/ItemArray;->GetItemAt(I)Lcom/futuredial/publicobj/Item;

    move-result-object v5

    .line 1548
    .local v5, item:Lcom/futuredial/publicobj/Item;
    const/4 v1, 0x0

    .line 1549
    .local v1, fieldLSMSID:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v5, v12}, Lcom/futuredial/publicobj/Item;->getFields(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1550
    .local v2, fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    const/4 v6, 0x0

    .local v6, m:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, nCount:I
    :goto_1
    if-ge v6, v8, :cond_0

    .line 1552
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/futuredial/publicobj/Field;

    .line 1553
    .local v9, tempField:Lcom/futuredial/publicobj/Field;
    if-eqz v9, :cond_2

    iget-object v10, v9, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 1555
    move-object v1, v9

    .line 1560
    .end local v9           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1544
    :cond_1
    :goto_2
    iget v10, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    goto :goto_0

    .line 1550
    .restart local v9       #tempField:Lcom/futuredial/publicobj/Field;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1565
    .end local v9           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_3
    invoke-virtual {v1, v12, v3}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 1566
    add-int/lit8 v4, v4, 0x1

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, fieldLSMSCount:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v5, v13}, Lcom/futuredial/publicobj/Item;->getFields(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1570
    const/4 v7, 0x0

    .local v7, n:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    if-ge v7, v8, :cond_4

    .line 1572
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/futuredial/publicobj/Field;

    .line 1573
    .restart local v9       #tempField:Lcom/futuredial/publicobj/Field;
    if-eqz v9, :cond_5

    iget-object v10, v9, Lcom/futuredial/publicobj/Field;->m_nID:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_5

    .line 1575
    move-object v0, v9

    .line 1580
    .end local v9           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_4
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/futuredial/publicobj/Field;->GetInt()I

    move-result v10

    if-lt v4, v10, :cond_1

    .line 1582
    add-int/lit8 v3, v3, 0x1

    .line 1583
    const/4 v4, 0x0

    goto :goto_2

    .line 1570
    .restart local v9       #tempField:Lcom/futuredial/publicobj/Field;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1587
    .end local v0           #fieldLSMSCount:Lcom/futuredial/publicobj/Field;
    .end local v1           #fieldLSMSID:Lcom/futuredial/publicobj/Field;
    .end local v2           #fieldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/futuredial/publicobj/Field;>;"
    .end local v3           #iAutoLSMSID:I
    .end local v4           #iCurLSMSCount:I
    .end local v5           #item:Lcom/futuredial/publicobj/Item;
    .end local v6           #m:I
    .end local v7           #n:I
    .end local v8           #nCount:I
    .end local v9           #tempField:Lcom/futuredial/publicobj/Field;
    :cond_6
    return-void
.end method

.method private Str2UnicodeByte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1404
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1406
    new-array v0, v7, [B

    .line 1429
    :cond_0
    :goto_0
    return-object v0

    .line 1410
    :cond_1
    :try_start_0
    const-string v6, "UNICODE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1411
    .local v2, byteTempBuffer:[B
    array-length v6, v2

    if-gt v6, v8, :cond_2

    move-object v0, v5

    .line 1413
    goto :goto_0

    .line 1415
    :cond_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    new-array v0, v6, [B

    .line 1416
    .local v0, byteDataBuffer:[B
    const/4 v6, 0x2

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    invoke-static {v2, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1417
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    .line 1419
    aget-byte v1, v0, v4

    .line 1420
    .local v1, byteTemp:B
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v0, v4

    .line 1421
    add-int/lit8 v6, v4, 0x1

    aput-byte v1, v0, v6
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    add-int/lit8 v4, v4, 0x1

    .line 1417
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1426
    .end local v0           #byteDataBuffer:[B
    .end local v1           #byteTemp:B
    .end local v2           #byteTempBuffer:[B
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 1428
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v6, "NokiaObexSMS"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/futuredial/config/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 1429
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/futuredial/fbus/NokiaObexSMS;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/futuredial/fbus/NokiaObexSMS;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/futuredial/fbus/NokiaObexSMS;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    return v0
.end method

.method static synthetic access$102(Lcom/futuredial/fbus/NokiaObexSMS;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    return p1
.end method

.method private binHex2byte(Ljava/lang/String;)[B
    .locals 9
    .parameter "strData"

    .prologue
    const/16 v8, 0x66

    const/16 v7, 0x46

    const/16 v6, 0x39

    .line 1367
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 1368
    .local v3, ret:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1370
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1371
    .local v0, c1:I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1372
    .local v1, c2:I
    if-gt v0, v6, :cond_2

    .line 1374
    add-int/lit8 v0, v0, -0x30

    .line 1384
    :cond_0
    :goto_1
    if-gt v1, v6, :cond_4

    .line 1386
    add-int/lit8 v1, v1, -0x30

    .line 1396
    :cond_1
    :goto_2
    div-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v0, 0x4

    or-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 1397
    add-int/lit8 v2, v2, 0x2

    .line 1398
    goto :goto_0

    .line 1376
    :cond_2
    if-gt v0, v7, :cond_3

    .line 1378
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 1380
    :cond_3
    if-gt v0, v8, :cond_0

    .line 1382
    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    .line 1388
    :cond_4
    if-gt v0, v7, :cond_5

    .line 1390
    add-int/lit8 v1, v1, -0x37

    goto :goto_2

    .line 1392
    :cond_5
    if-gt v0, v8, :cond_1

    .line 1394
    add-int/lit8 v1, v1, -0x57

    goto :goto_2

    .line 1399
    .end local v0           #c1:I
    .end local v1           #c2:I
    :cond_6
    return-object v3
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 2
    .parameter "iaUnCompleted"

    .prologue
    .line 1528
    invoke-direct {p0, p1}, Lcom/futuredial/fbus/NokiaObexSMS;->ResetLSMSID(Lcom/futuredial/publicobj/ItemArray;)V

    .line 1530
    new-instance v0, Lcom/futuredial/atparser/CRecsProcContext;

    const-string v1, "nokia_sms_combine"

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/CRecsProcContext;-><init>(Ljava/lang/String;)V

    .line 1531
    .local v0, muliProc:Lcom/futuredial/atparser/CRecsProcContext;
    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0, p1}, Lcom/futuredial/atparser/CRecsProcContext;->proc_records(Lcom/futuredial/publicobj/ItemArray;)Z

    .line 1535
    :cond_0
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    const/4 v2, -0x1

    .line 1457
    const/4 v0, 0x0

    .line 1459
    .local v0, iRet:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    .line 1460
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;

    .line 1461
    iput v2, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iBoxType:I

    .line 1462
    const/4 v1, 0x0

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    .line 1463
    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1522
    const/4 v0, 0x0

    .line 1523
    .local v0, iRet:I
    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 13
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1468
    const/4 v9, 0x1

    .line 1469
    .local v9, iRet:I
    const/4 v1, 0x3

    move/from16 v0, p3

    if-gt v0, v1, :cond_0

    .line 1471
    const/16 v9, 0x2712

    move v10, v9

    .line 1517
    .end local v9           #iRet:I
    .local v10, iRet:I
    :goto_0
    return v10

    .line 1474
    .end local v10           #iRet:I
    .restart local v9       #iRet:I
    :cond_0
    const/4 v1, 0x0

    aget-byte v2, p2, v1

    .line 1475
    .local v2, iBoxType:I
    iget v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iBoxType:I

    if-eq v2, v1, :cond_1

    .line 1477
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/futuredial/fbus/NokiaObexSMS;->ResetLSMSID(Lcom/futuredial/publicobj/ItemArray;)V

    .line 1479
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_bLSMSHasSameID:Z

    .line 1480
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iLastLSMSID:Ljava/lang/Integer;

    .line 1481
    iput v2, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iBoxType:I

    .line 1482
    invoke-virtual/range {p5 .. p5}, Lcom/futuredial/publicobj/ItemArray;->GetItemCount()I

    move-result v1

    iput v1, p0, Lcom/futuredial/fbus/NokiaObexSMS;->m_iStartIndex:I

    .line 1484
    :cond_1
    const/4 v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    const v5, 0xff00

    and-int/2addr v1, v5

    const/4 v5, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int v8, v1, v5

    .line 1485
    .local v8, iNameLen:I
    add-int/lit8 v1, v8, 0x3

    move/from16 v0, p3

    if-gt v0, v1, :cond_2

    .line 1487
    const/16 v9, 0x2712

    move v10, v9

    .line 1488
    .end local v9           #iRet:I
    .restart local v10       #iRet:I
    goto :goto_0

    .line 1492
    .end local v10           #iRet:I
    .restart local v9       #iRet:I
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v1, 0x3

    const-string v5, "UTF-8"

    invoke-direct {v3, p2, v1, v8, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    .local v3, strSMSName:Ljava/lang/String;
    new-instance v4, Lcom/futuredial/bluetooth/ByteArrayData;

    invoke-direct {v4}, Lcom/futuredial/bluetooth/ByteArrayData;-><init>()V

    .line 1501
    .local v4, smsBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    add-int/lit8 v1, p3, -0x3

    sub-int v11, v1, v8

    .line 1502
    .local v11, iSmsDataLen:I
    new-array v1, v11, [B

    iput-object v1, v4, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    .line 1503
    add-int/lit8 v1, v8, 0x3

    iget-object v5, v4, Lcom/futuredial/bluetooth/ByteArrayData;->buffer:[B

    const/4 v6, 0x0

    invoke-static {p2, v1, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1505
    new-instance v12, Lcom/futuredial/publicobj/Item;

    invoke-direct {v12}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1507
    .local v12, item:Lcom/futuredial/publicobj/Item;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x14

    if-le v1, v5, :cond_3

    const/16 v1, 0x14

    const/16 v5, 0x15

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    move-object v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1509
    invoke-direct/range {v1 .. v6}, Lcom/futuredial/fbus/NokiaObexSMS;->ParseServiceMsg(ILjava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    .line 1511
    const/4 v9, 0x0

    :goto_1
    move v10, v9

    .line 1517
    .end local v9           #iRet:I
    .restart local v10       #iRet:I
    goto :goto_0

    .line 1493
    .end local v3           #strSMSName:Ljava/lang/String;
    .end local v4           #smsBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .end local v10           #iRet:I
    .end local v11           #iSmsDataLen:I
    .end local v12           #item:Lcom/futuredial/publicobj/Item;
    .restart local v9       #iRet:I
    :catch_0
    move-exception v7

    .line 1495
    .local v7, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1496
    const/4 v9, 0x1

    move v10, v9

    .line 1497
    .end local v9           #iRet:I
    .restart local v10       #iRet:I
    goto/16 :goto_0

    .end local v7           #e:Ljava/io/UnsupportedEncodingException;
    .end local v10           #iRet:I
    .restart local v3       #strSMSName:Ljava/lang/String;
    .restart local v4       #smsBuffer:Lcom/futuredial/bluetooth/ByteArrayData;
    .restart local v9       #iRet:I
    .restart local v11       #iSmsDataLen:I
    .restart local v12       #item:Lcom/futuredial/publicobj/Item;
    :cond_3
    move-object v1, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 1515
    invoke-direct/range {v1 .. v6}, Lcom/futuredial/fbus/NokiaObexSMS;->ParseOneSMS(ILjava/lang/String;Lcom/futuredial/bluetooth/ByteArrayData;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I

    move-result v9

    goto :goto_1
.end method
