.class public Lcom/futuredial/fbus/FBusSMS;
.super Ljava/lang/Object;
.source "FBusSMS.java"

# interfaces
.implements Lcom/futuredial/IParser;


# static fields
.field public static final CALCU_TOKEN:I = 0x100

.field public static final DERR_SUCCESS:I = 0x0

.field public static final DERR_UNKNOWN:I = 0x1

.field private static final ENCODING_TYPE_7BIT:I = 0x1

.field private static final ENCODING_TYPE_UNICODE:I = 0x2

.field public static final LogTag:Ljava/lang/String; = "FBusSMS"

.field public static final MODULE_CALENDAR:I = 0x2

.field public static final MODULE_PHONEBOOK:I = 0x1

.field public static final MODULE_SMS:I = 0x3

.field private static final PACK_MODE_1:I = 0x1

.field private static final PACK_MODE_2:I = 0x2


# instance fields
.field private final I999001:I

.field private final I999002:I

.field private final I999003:I

.field m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

.field private m_iHasRead:I

.field private m_iSMSTotal:I


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const v0, 0xf3e59

    iput v0, p0, Lcom/futuredial/fbus/FBusSMS;->I999001:I

    .line 53
    const v0, 0xf3e5a

    iput v0, p0, Lcom/futuredial/fbus/FBusSMS;->I999002:I

    .line 54
    const v0, 0xf3e5b

    iput v0, p0, Lcom/futuredial/fbus/FBusSMS;->I999003:I

    .line 32
    new-instance v0, Lcom/futuredial/atparser/CRecsProcContext;

    const-string v1, "nokia_sms_combine"

    invoke-direct {v0, v1}, Lcom/futuredial/atparser/CRecsProcContext;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusSMS;->m_MuliProc:Lcom/futuredial/atparser/CRecsProcContext;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/fbus/FBusSMS;->m_iHasRead:I

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/futuredial/fbus/FBusSMS;->m_iSMSTotal:I

    .line 36
    return-void
.end method

.method private DecodePhoneNumber([BILcom/futuredial/publicobj/Item;)I
    .locals 15
    .parameter "buffer"
    .parameter "iStart"
    .parameter "item"

    .prologue
    .line 712
    const/4 v5, 0x0

    .line 714
    .local v5, iRet:I
    aget-byte v10, p1, p2

    and-int/lit16 v3, v10, 0xff

    .line 715
    .local v3, iLen:I
    move-object/from16 v0, p1

    array-length v10, v0

    add-int v11, p2, v3

    if-ge v10, v11, :cond_0

    .line 717
    const/16 v5, 0x2712

    move v6, v5

    .line 762
    .end local v5           #iRet:I
    .local v6, iRet:I
    :goto_0
    return v6

    .line 721
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_0
    const-string v8, ""

    .line 723
    .local v8, strNum:Ljava/lang/String;
    add-int/lit8 v10, p2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v4, v10, 0xff

    .line 724
    .local v4, iNumTag:I
    const/16 v10, 0x6f

    if-eq v4, v10, :cond_1

    const/16 v10, 0x91

    if-ne v4, v10, :cond_2

    .line 725
    :cond_1
    const-string v8, "+"

    .line 729
    :cond_2
    add-int/lit8 v1, p2, 0x2

    .line 730
    .local v1, at:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 731
    aget-byte v10, p1, v1

    and-int/lit16 v2, v10, 0xff

    .line 732
    .local v2, iCurNum:I
    and-int/lit8 v9, v2, 0xf

    .line 733
    .local v9, x:I
    const/16 v10, 0xa

    if-ge v9, v10, :cond_6

    .line 734
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%c"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v9, 0x30

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 740
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 741
    if-lt v7, v3, :cond_8

    .line 755
    .end local v2           #iCurNum:I
    .end local v9           #x:I
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 757
    const/4 v10, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v8}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    :cond_5
    move v6, v5

    .line 762
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto :goto_0

    .line 735
    .end local v6           #iRet:I
    .restart local v2       #iCurNum:I
    .restart local v5       #iRet:I
    .restart local v9       #x:I
    :cond_6
    const/16 v10, 0xa

    if-ne v9, v10, :cond_7

    .line 736
    const-string v8, "*"

    goto :goto_2

    .line 737
    :cond_7
    const/16 v10, 0xb

    if-ne v9, v10, :cond_3

    .line 738
    const-string v8, "#"

    goto :goto_2

    .line 744
    :cond_8
    shr-int/lit8 v10, v2, 0x4

    and-int/lit8 v9, v10, 0xf

    .line 745
    const/16 v10, 0xa

    if-ge v9, v10, :cond_a

    .line 746
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%c"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v9, 0x30

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 752
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 730
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 747
    :cond_a
    const/16 v10, 0xa

    if-ne v9, v10, :cond_b

    .line 748
    const-string v8, "*"

    goto :goto_3

    .line 749
    :cond_b
    const/16 v10, 0xb

    if-ne v9, v10, :cond_9

    .line 750
    const-string v8, "#"

    goto :goto_3
.end method

.method private DecodeSmsTime_Order([BIILcom/futuredial/publicobj/Item;)I
    .locals 10
    .parameter "buffer"
    .parameter "iStart"
    .parameter "iLen"
    .parameter "item"

    .prologue
    const/4 v9, 0x5

    .line 649
    const/4 v0, 0x0

    .line 651
    .local v0, iRet:I
    const/4 v5, 0x7

    if-lt p3, v5, :cond_0

    array-length v5, p1

    add-int v6, p2, p3

    if-ge v5, v6, :cond_1

    .line 653
    :cond_0
    const/16 v0, 0x2712

    move v1, v0

    .line 666
    .end local v0           #iRet:I
    .local v1, iRet:I
    :goto_0
    return v1

    .line 657
    .end local v1           #iRet:I
    .restart local v0       #iRet:I
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, iStart:I
    aget-byte v5, p1, p2

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    add-int/lit8 p2, v2, 0x1

    .end local v2           #iStart:I
    .restart local p2
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 658
    .local v3, iYear:I
    const-string v5, "%04d%02d%02dT%02d%02d%02dZ"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #iStart:I
    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    add-int/lit8 p2, v2, 0x1

    .end local v2           #iStart:I
    .restart local p2
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #iStart:I
    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    add-int/lit8 p2, v2, 0x1

    .end local v2           #iStart:I
    .restart local p2
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v2, p2, 0x1

    .end local p2
    .restart local v2       #iStart:I
    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 664
    .local v4, strTime:Ljava/lang/String;
    invoke-virtual {p4, v9, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move p2, v2

    .end local v2           #iStart:I
    .restart local p2
    move v1, v0

    .line 666
    .end local v0           #iRet:I
    .restart local v1       #iRet:I
    goto :goto_0
.end method

.method private DecodeSmsTime_Reversion([BIILcom/futuredial/publicobj/Item;)I
    .locals 16
    .parameter "buffer"
    .parameter "iStart"
    .parameter "iLen"
    .parameter "item"

    .prologue
    .line 672
    const/4 v5, 0x0

    .line 674
    .local v5, iRet:I
    const/4 v12, 0x6

    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    move-object/from16 v0, p1

    array-length v12, v0

    add-int v13, p2, p3

    if-ge v12, v13, :cond_1

    .line 676
    :cond_0
    const/16 v5, 0x2712

    move v6, v5

    .line 707
    .end local v5           #iRet:I
    .local v6, iRet:I
    :goto_0
    return v6

    .line 681
    .end local v6           #iRet:I
    .restart local v5       #iRet:I
    :cond_1
    add-int/lit8 v8, p2, 0x1

    .end local p2
    .local v8, iStart:I
    aget-byte v12, p1, p2

    and-int/lit16 v9, v12, 0xff

    .line 682
    .local v9, iTemp:I
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    add-int/lit16 v12, v12, 0x7d0

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v10, v12, v13

    .line 684
    .local v10, iYear:I
    add-int/lit8 p2, v8, 0x1

    .end local v8           #iStart:I
    .restart local p2
    aget-byte v12, p1, v8

    and-int/lit16 v9, v12, 0xff

    .line 685
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v4, v12, v13

    .line 687
    .local v4, iMonth:I
    add-int/lit8 v8, p2, 0x1

    .end local p2
    .restart local v8       #iStart:I
    aget-byte v12, p1, p2

    and-int/lit16 v9, v12, 0xff

    .line 688
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v1, v12, v13

    .line 690
    .local v1, iDay:I
    add-int/lit8 p2, v8, 0x1

    .end local v8           #iStart:I
    .restart local p2
    aget-byte v12, p1, v8

    and-int/lit16 v9, v12, 0xff

    .line 691
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v2, v12, v13

    .line 693
    .local v2, iHour:I
    add-int/lit8 v8, p2, 0x1

    .end local p2
    .restart local v8       #iStart:I
    aget-byte v12, p1, p2

    and-int/lit16 v9, v12, 0xff

    .line 694
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v3, v12, v13

    .line 696
    .local v3, iMinute:I
    add-int/lit8 p2, v8, 0x1

    .end local v8           #iStart:I
    .restart local p2
    aget-byte v12, p1, v8

    and-int/lit16 v9, v12, 0xff

    .line 697
    and-int/lit8 v12, v9, 0xf

    mul-int/lit8 v12, v12, 0xa

    shr-int/lit8 v13, v9, 0x4

    and-int/lit8 v13, v13, 0xf

    add-int v7, v12, v13

    .line 699
    .local v7, iSecond:I
    const-string v12, "%04d%02d%02dT%02d%02d%02dZ"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 705
    .local v11, strTime:Ljava/lang/String;
    const/4 v12, 0x5

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v11}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    move v6, v5

    .line 707
    .end local v5           #iRet:I
    .restart local v6       #iRet:I
    goto/16 :goto_0
.end method

.method private ParseMsgContent([BIIZLcom/futuredial/publicobj/Item;)I
    .locals 14
    .parameter "buffer"
    .parameter "iStart"
    .parameter "iEncoding"
    .parameter "bPartOfLongMsg"
    .parameter "item"

    .prologue
    .line 767
    const/4 v7, 0x0

    .line 770
    .local v7, iRet:I
    add-int/lit8 v12, p2, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v2, v12, 0xff

    .line 771
    .local v2, iFieldLen:I
    if-lez v2, :cond_5

    .line 773
    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v12, v0, :cond_3

    .line 777
    if-eqz p4, :cond_2

    .line 779
    add-int/lit8 v12, p2, 0x7

    aget-byte v12, p1, v12

    and-int/lit16 v4, v12, 0xff

    .line 780
    .local v4, iLSMSGroupID:I
    const v12, 0xf3e59

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v4}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 781
    add-int/lit8 v12, p2, 0x8

    aget-byte v12, p1, v12

    and-int/lit16 v3, v12, 0xff

    .line 782
    .local v3, iLSMSCount:I
    const v12, 0xf3e5b

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v3}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 783
    add-int/lit8 v12, p2, 0x9

    aget-byte v12, p1, v12

    and-int/lit16 v5, v12, 0xff

    .line 784
    .local v5, iLSMSSubID:I
    const v12, 0xf3e5a

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v5}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 786
    add-int/lit8 v12, p2, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v9, v12, 0xff

    .line 787
    .local v9, lengthSeptets:I
    add-int/lit8 v12, p2, 0x4

    invoke-static {p1, v12, v9}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    .line 788
    .local v10, strMsg:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x7

    if-le v12, v13, :cond_0

    .line 790
    const/4 v12, 0x7

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 792
    :cond_0
    const/4 v12, 0x7

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v10}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .end local v3           #iLSMSCount:I
    .end local v4           #iLSMSGroupID:I
    .end local v5           #iLSMSSubID:I
    .end local v9           #lengthSeptets:I
    .end local v10           #strMsg:Ljava/lang/String;
    :cond_1
    :goto_0
    move v8, v7

    .line 862
    .end local v7           #iRet:I
    .local v8, iRet:I
    :goto_1
    return v8

    .line 796
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_2
    const v12, 0xf3e59

    const/4 v13, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 797
    const v12, 0xf3e5b

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 798
    const v12, 0xf3e5a

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 800
    add-int/lit8 v12, p2, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v9, v12, 0xff

    .line 801
    .restart local v9       #lengthSeptets:I
    add-int/lit8 v12, p2, 0x4

    invoke-static {p1, v12, v9}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    .line 802
    .restart local v10       #strMsg:Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v10}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_0

    .line 805
    .end local v9           #lengthSeptets:I
    .end local v10           #strMsg:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v12, v0, :cond_1

    .line 808
    add-int/lit8 v12, p2, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v6, v12, 0xff

    .line 810
    .local v6, iMsgLen:I
    if-eqz p4, :cond_4

    .line 813
    add-int/lit8 v6, v6, -0x6

    .line 815
    add-int/lit8 v12, p2, 0x7

    aget-byte v12, p1, v12

    and-int/lit16 v4, v12, 0xff

    .line 816
    .restart local v4       #iLSMSGroupID:I
    const v12, 0xf3e59

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v4}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 817
    add-int/lit8 v12, p2, 0x8

    aget-byte v12, p1, v12

    and-int/lit16 v3, v12, 0xff

    .line 818
    .restart local v3       #iLSMSCount:I
    const v12, 0xf3e5b

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v3}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 819
    add-int/lit8 v12, p2, 0x9

    aget-byte v12, p1, v12

    and-int/lit16 v5, v12, 0xff

    .line 820
    .restart local v5       #iLSMSSubID:I
    const v12, 0xf3e5a

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v5}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 825
    :try_start_0
    new-instance v11, Ljava/lang/String;

    add-int/lit8 v12, p2, 0xa

    const-string v13, "UNICODE"

    invoke-direct {v11, p1, v12, v6, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 826
    .local v11, strSMS:Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    .end local v11           #strSMS:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 830
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 831
    const/4 v7, 0x1

    move v8, v7

    .line 832
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto :goto_1

    .line 837
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v3           #iLSMSCount:I
    .end local v4           #iLSMSGroupID:I
    .end local v5           #iLSMSSubID:I
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_4
    const v12, 0xf3e59

    const/4 v13, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 838
    const v12, 0xf3e5b

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 839
    const v12, 0xf3e5a

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 843
    :try_start_1
    new-instance v11, Ljava/lang/String;

    add-int/lit8 v12, p2, 0x4

    const-string v13, "UNICODE"

    invoke-direct {v11, p1, v12, v6, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 844
    .restart local v11       #strSMS:Ljava/lang/String;
    const/4 v12, 0x7

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v11}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 846
    .end local v11           #strSMS:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 848
    .restart local v1       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 849
    const/4 v7, 0x1

    move v8, v7

    .line 850
    .end local v7           #iRet:I
    .restart local v8       #iRet:I
    goto/16 :goto_1

    .line 857
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v6           #iMsgLen:I
    .end local v8           #iRet:I
    .restart local v7       #iRet:I
    :cond_5
    const v12, 0xf3e59

    const/4 v13, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 858
    const v12, 0xf3e5b

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 859
    const v12, 0xf3e5a

    const/4 v13, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12, v13}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_0
.end method

.method private ParseSMS([BLcom/futuredial/publicobj/Item;)I
    .locals 18
    .parameter "buffer"
    .parameter "item"

    .prologue
    .line 499
    const/4 v15, 0x0

    .line 502
    .local v15, iRet:I
    const/16 v3, 0x15

    aget-byte v3, p1, v3

    and-int/lit16 v11, v3, 0xff

    .line 503
    .local v11, iDataLen:I
    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v4, 0x16

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v11, 0x14

    move-object/from16 v0, p1

    array-length v4, v0

    if-eq v3, v4, :cond_1

    .line 505
    :cond_0
    const/16 v15, 0x2712

    move/from16 v16, v15

    .line 642
    .end local v15           #iRet:I
    .local v16, iRet:I
    :goto_0
    return v16

    .line 509
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_1
    const/4 v10, 0x1

    .line 510
    .local v10, iBoxType:I
    const/16 v3, 0xd

    aget-byte v3, p1, v3

    packed-switch v3, :pswitch_data_0

    .line 520
    :goto_1
    const/4 v7, 0x0

    .line 522
    .local v7, bPartOfLongMsg:Z
    const/16 v3, 0x16

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_2

    .line 523
    const/4 v7, 0x1

    .line 526
    :cond_2
    const/16 v17, 0x0

    .line 527
    .local v17, iStatus:I
    const/4 v3, 0x1

    if-ne v10, v3, :cond_3

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 528
    const/16 v17, 0x1

    .line 530
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v10}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 531
    const/4 v3, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 535
    const/4 v14, 0x1

    .line 537
    .local v14, iPackMode:I
    const/16 v3, 0x14

    aget-byte v3, p1, v3

    if-nez v3, :cond_5

    .line 539
    const/4 v14, 0x1

    .line 548
    :cond_4
    :goto_2
    const/4 v6, 0x1

    .line 549
    .local v6, iEncodingType:I
    const/16 v5, 0x1c

    .line 550
    .local v5, iIndex:I
    const/4 v3, 0x1

    if-ne v14, v3, :cond_8

    .line 552
    const/16 v3, 0x19

    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/futuredial/fbus/FBusSMS;->DecodeSmsTime_Reversion([BIILcom/futuredial/publicobj/Item;)I

    move-result v15

    .line 553
    if-eqz v15, :cond_6

    move/from16 v16, v15

    .line 555
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto :goto_0

    .line 513
    .end local v5           #iIndex:I
    .end local v6           #iEncodingType:I
    .end local v7           #bPartOfLongMsg:Z
    .end local v14           #iPackMode:I
    .end local v16           #iRet:I
    .end local v17           #iStatus:I
    .restart local v15       #iRet:I
    :pswitch_0
    const/4 v10, 0x1

    .line 515
    :pswitch_1
    const/4 v10, 0x3

    .line 517
    :pswitch_2
    const/4 v10, 0x2

    goto :goto_1

    .line 541
    .restart local v7       #bPartOfLongMsg:Z
    .restart local v14       #iPackMode:I
    .restart local v17       #iStatus:I
    :cond_5
    const/16 v3, 0x14

    aget-byte v3, p1, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 543
    const/4 v14, 0x2

    goto :goto_2

    .line 557
    .restart local v5       #iIndex:I
    .restart local v6       #iEncodingType:I
    :cond_6
    const/16 v5, 0x24

    .line 560
    const/16 v3, 0x18

    aget-byte v3, p1, v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 562
    const/4 v6, 0x2

    .line 574
    :cond_7
    :goto_3
    const/4 v9, 0x1

    .line 575
    .local v9, bNoContentField:Z
    :goto_4
    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p1

    array-length v4, v0

    if-ge v3, v4, :cond_c

    .line 577
    add-int/lit8 v3, v5, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v13, v3, 0xff

    .line 579
    .local v13, iLen:I
    move-object/from16 v0, p1

    array-length v3, v0

    add-int v4, v5, v13

    if-ge v3, v4, :cond_9

    .line 581
    const/16 v15, 0x2712

    move/from16 v16, v15

    .line 582
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 568
    .end local v9           #bNoContentField:Z
    .end local v13           #iLen:I
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_8
    const/16 v3, 0x19

    aget-byte v3, p1, v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 570
    const/4 v6, 0x2

    goto :goto_3

    .line 585
    .restart local v9       #bNoContentField:Z
    .restart local v13       #iLen:I
    :cond_9
    aget-byte v3, p1, v5

    and-int/lit16 v12, v3, 0xff

    .line 586
    .local v12, iFieldTag:I
    packed-switch v12, :pswitch_data_1

    .line 632
    :cond_a
    :goto_5
    :pswitch_3
    add-int/2addr v5, v13

    .line 633
    goto :goto_4

    :pswitch_4
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    .line 590
    invoke-direct/range {v3 .. v8}, Lcom/futuredial/fbus/FBusSMS;->ParseMsgContent([BIIZLcom/futuredial/publicobj/Item;)I

    move-result v15

    .line 591
    if-eqz v15, :cond_b

    move/from16 v16, v15

    .line 593
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 595
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_b
    const/4 v9, 0x0

    .line 596
    goto :goto_5

    .line 600
    :pswitch_5
    add-int/lit8 v3, v5, 0x3

    aget-byte v3, p1, v3

    if-lez v3, :cond_a

    .line 602
    add-int/lit8 v3, v5, 0x2

    aget-byte v3, p1, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 604
    add-int/lit8 v3, v5, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/futuredial/fbus/FBusSMS;->DecodePhoneNumber([BILcom/futuredial/publicobj/Item;)I

    move-result v15

    .line 605
    if-eqz v15, :cond_a

    move/from16 v16, v15

    .line 607
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 619
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :pswitch_6
    const/4 v3, 0x2

    if-le v13, v3, :cond_a

    .line 621
    add-int/lit8 v3, v5, 0x2

    add-int/lit8 v4, v13, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/futuredial/fbus/FBusSMS;->DecodeSmsTime_Order([BIILcom/futuredial/publicobj/Item;)I

    move-result v15

    .line 622
    if-eqz v15, :cond_a

    move/from16 v16, v15

    .line 624
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 635
    .end local v12           #iFieldTag:I
    .end local v13           #iLen:I
    .end local v16           #iRet:I
    .restart local v15       #iRet:I
    :cond_c
    if-eqz v9, :cond_d

    .line 637
    const v3, 0xf3e59

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 638
    const v3, 0xf3e5b

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    .line 639
    const v3, 0xf3e5a

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    :cond_d
    move/from16 v16, v15

    .line 642
    .end local v15           #iRet:I
    .restart local v16       #iRet:I
    goto/16 :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 586
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 908
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 879
    .local v0, iRet:I
    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, iRet:I
    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 3
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, iRet:I
    new-instance v1, Lcom/futuredial/publicobj/Item;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 887
    .local v1, item:Lcom/futuredial/publicobj/Item;
    invoke-direct {p0, p2, v1}, Lcom/futuredial/fbus/FBusSMS;->ParseSMS([BLcom/futuredial/publicobj/Item;)I

    move-result v2

    if-nez v2, :cond_0

    .line 889
    invoke-virtual {p4, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    .line 896
    :goto_0
    return v0

    .line 893
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
