.class public Lcom/futuredial/fbus/FBusCalendar;
.super Ljava/lang/Object;
.source "FBusCalendar.java"

# interfaces
.implements Lcom/futuredial/IParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;,
        Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;,
        Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;,
        Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
    }
.end annotation


# static fields
.field public static final CALCU_TOKEN:I = 0x100

.field public static final DERR_SUCCESS:I = 0x0

.field public static final DERR_UNKNOWN:I = 0x1

.field public static final LOGTAG:Ljava/lang/String; = "FBusCalendarParser"

.field public static final LONG_CALCU_TOKEN:J = 0x100L

.field public static final MODULE_CALENDAR:I = 0x2

.field public static final MODULE_MESSAGE:I = 0x3

.field public static final MODULE_PHONEBOOK:I = 0x1


# instance fields
.field private bFirstDataPackage:Z

.field private m_arListEventID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_arListToDoID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_bGetTimeZone:Z

.field private m_strTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/fbus/FBusCalendar;->bFirstDataPackage:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/futuredial/fbus/FBusCalendar;->m_bGetTimeZone:Z

    .line 32
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/futuredial/fbus/FBusCalendar;->m_strTimeZone:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusCalendar;->m_arListEventID:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/fbus/FBusCalendar;->m_arListToDoID:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private GetTimeZone([B)V
    .locals 7
    .parameter "buffer"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    iput-boolean v5, p0, Lcom/futuredial/fbus/FBusCalendar;->m_bGetTimeZone:Z

    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, nRet:I
    array-length v2, p1

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 256
    iput-boolean v6, p0, Lcom/futuredial/fbus/FBusCalendar;->m_bGetTimeZone:Z

    .line 258
    const/16 v2, 0x5b

    aget-byte v0, p1, v2

    .line 259
    .local v0, b:B
    and-int/lit8 v2, v0, 0x7f

    packed-switch v2, :pswitch_data_0

    .line 337
    :pswitch_0
    const/4 v1, 0x0

    .line 338
    iput-boolean v5, p0, Lcom/futuredial/fbus/FBusCalendar;->m_bGetTimeZone:Z

    .line 341
    :goto_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 343
    neg-int v1, v1

    .line 347
    .end local v0           #b:B
    :cond_0
    const-string v3, "%s%02d:%02d"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    if-gez v1, :cond_1

    const-string v2, "-"

    :goto_1
    aput-object v2, v4, v5

    div-int/lit8 v2, v1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/4 v2, 0x2

    rem-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/fbus/FBusCalendar;->m_strTimeZone:Ljava/lang/String;

    .line 348
    return-void

    .line 262
    .restart local v0       #b:B
    :pswitch_1
    const/4 v1, 0x0

    .line 263
    goto :goto_0

    .line 265
    :pswitch_2
    const/16 v1, 0x1e

    .line 266
    goto :goto_0

    .line 268
    :pswitch_3
    const/16 v1, 0x3c

    .line 269
    goto :goto_0

    .line 271
    :pswitch_4
    const/16 v1, 0x5a

    .line 272
    goto :goto_0

    .line 274
    :pswitch_5
    const/16 v1, 0x78

    .line 275
    goto :goto_0

    .line 277
    :pswitch_6
    const/16 v1, 0x96

    .line 278
    goto :goto_0

    .line 280
    :pswitch_7
    const/16 v1, 0xb4

    .line 281
    goto :goto_0

    .line 283
    :pswitch_8
    const/16 v1, 0xd2

    .line 284
    goto :goto_0

    .line 286
    :pswitch_9
    const/16 v1, 0xf0

    .line 287
    goto :goto_0

    .line 289
    :pswitch_a
    const/16 v1, 0x10e

    .line 290
    goto :goto_0

    .line 292
    :pswitch_b
    const/16 v1, 0x12c

    .line 293
    goto :goto_0

    .line 295
    :pswitch_c
    const/16 v1, 0x14a

    .line 296
    goto :goto_0

    .line 298
    :pswitch_d
    const/16 v1, 0x168

    .line 299
    goto :goto_0

    .line 301
    :pswitch_e
    const/16 v1, 0x186

    .line 302
    goto :goto_0

    .line 304
    :pswitch_f
    const/16 v1, 0x1a4

    .line 305
    goto :goto_0

    .line 307
    :pswitch_10
    const/16 v1, 0x1c2

    .line 308
    goto :goto_0

    .line 310
    :pswitch_11
    const/16 v1, 0x1e0

    .line 311
    goto :goto_0

    .line 313
    :pswitch_12
    const/16 v1, 0x1fe

    .line 314
    goto :goto_0

    .line 316
    :pswitch_13
    const/16 v1, 0x21c

    .line 317
    goto :goto_0

    .line 319
    :pswitch_14
    const/16 v1, 0x23a

    .line 320
    goto :goto_0

    .line 322
    :pswitch_15
    const/16 v1, 0x258

    .line 323
    goto :goto_0

    .line 325
    :pswitch_16
    const/16 v1, 0x276

    .line 326
    goto :goto_0

    .line 328
    :pswitch_17
    const/16 v1, 0x294

    .line 329
    goto :goto_0

    .line 331
    :pswitch_18
    const/16 v1, 0x2b2

    .line 332
    goto :goto_0

    .line 334
    :pswitch_19
    const/16 v1, 0x2d0

    .line 335
    goto :goto_0

    .line 347
    .end local v0           #b:B
    :cond_1
    const-string v2, "+"

    goto :goto_1

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
    .end packed-switch
.end method

.method private ParseOneCalendar(Z[BLcom/futuredial/fbus/FBusConfig;Lcom/futuredial/publicobj/Item;)Z
    .locals 28
    .parameter "bEvent"
    .parameter "buffer"
    .parameter "fbusConfig"
    .parameter "item"

    .prologue
    .line 793
    const/4 v5, 0x0

    .line 794
    .local v5, bRet:Z
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x14

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    move v6, v5

    .line 1051
    .end local v5           #bRet:Z
    .local v6, bRet:I
    :goto_0
    return v6

    .line 796
    .end local v6           #bRet:I
    .restart local v5       #bRet:Z
    :cond_0
    const/16 v25, 0x13

    aget-byte v25, p2, v25

    move/from16 v0, v25

    add-int/lit16 v0, v0, 0x100

    move/from16 v25, v0

    move/from16 v0, v25

    rem-int/lit16 v13, v0, 0x100

    .line 797
    .local v13, iFieldCount:I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v13, v0, :cond_1

    move v6, v5

    .restart local v6       #bRet:I
    goto :goto_0

    .line 798
    .end local v6           #bRet:I
    :cond_1
    const/4 v10, 0x0

    .line 800
    .local v10, fieldActualCount:I
    const/16 v20, 0x0

    .line 801
    .local v20, repeatField:Lcom/futuredial/publicobj/Field;
    const/16 v18, 0x0

    .line 802
    .local v18, intervalField:Lcom/futuredial/publicobj/Field;
    const/16 v24, 0x0

    .line 803
    .local v24, weekMaskField:Lcom/futuredial/publicobj/Field;
    const/4 v8, 0x0

    .line 804
    .local v8, dayofmonthField:Lcom/futuredial/publicobj/Field;
    const/16 v19, 0x0

    .line 805
    .local v19, monthofyearField:Lcom/futuredial/publicobj/Field;
    const-string v21, "1"

    .line 806
    .local v21, strInstance:Ljava/lang/String;
    const/4 v15, 0x0

    .line 808
    .local v15, iRecurType:I
    const/16 v11, 0x14

    .local v11, iCursor:I
    :goto_1
    :pswitch_0
    add-int/lit8 v25, v11, 0x4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 810
    new-instance v7, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1, v11}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 811
    .local v7, baseFieldInfo:Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iFieldLen:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$000(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    add-int v25, v25, v11

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_2

    move v6, v5

    .line 813
    .restart local v6       #bRet:I
    goto :goto_0

    .line 815
    .end local v6           #bRet:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 816
    move v12, v11

    .line 817
    .local v12, iFieldBegin:I
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iFieldLen:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$000(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    add-int v11, v11, v25

    .line 819
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iMainType:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$100(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    packed-switch v25, :pswitch_data_0

    goto :goto_1

    .line 822
    :pswitch_1
    new-instance v9, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v12}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 823
    .local v9, dwordFieldInfo:Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$200(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    packed-switch v25, :pswitch_data_1

    :pswitch_2
    goto :goto_1

    .line 828
    :pswitch_3
    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_2

    goto :goto_1

    .line 831
    :pswitch_4
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto :goto_1

    .line 834
    :pswitch_5
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto :goto_1

    .line 843
    :pswitch_6
    new-instance v20, Lcom/futuredial/publicobj/Field;

    .end local v20           #repeatField:Lcom/futuredial/publicobj/Field;
    invoke-direct/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 844
    .restart local v20       #repeatField:Lcom/futuredial/publicobj/Field;
    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_3

    goto/16 :goto_1

    .line 847
    :pswitch_7
    const/16 v25, 0xd3

    const/16 v26, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 848
    const-string v21, "0"

    .line 849
    const/4 v15, 0x4

    .line 850
    goto/16 :goto_1

    .line 852
    :pswitch_8
    const/16 v25, 0xd3

    const/16 v26, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 853
    const-string v21, "0"

    .line 854
    const/4 v15, 0x3

    .line 855
    goto/16 :goto_1

    .line 857
    :pswitch_9
    const/16 v25, 0xd3

    const/16 v26, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 858
    const/4 v15, 0x2

    .line 859
    goto/16 :goto_1

    .line 861
    :pswitch_a
    const/16 v25, 0xd3

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 862
    const/4 v15, 0x1

    .line 863
    goto/16 :goto_1

    .line 869
    :pswitch_b
    new-instance v18, Lcom/futuredial/publicobj/Field;

    .end local v18           #intervalField:Lcom/futuredial/publicobj/Field;
    invoke-direct/range {v18 .. v18}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 870
    .restart local v18       #intervalField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd5

    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    goto/16 :goto_1

    .line 873
    :pswitch_c
    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_4

    :pswitch_d
    goto/16 :goto_1

    .line 876
    :pswitch_e
    const/16 v25, 0xce

    const/16 v26, 0x2

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 879
    :pswitch_f
    const/16 v25, 0xce

    const/16 v26, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 882
    :pswitch_10
    const/16 v25, 0xce

    const/16 v26, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 889
    :pswitch_11
    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_5

    goto/16 :goto_1

    .line 892
    :pswitch_12
    const/16 v25, 0xca

    const/16 v26, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 895
    :pswitch_13
    const/16 v25, 0xca

    const/16 v26, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 902
    :pswitch_14
    const/16 v25, 0x6b

    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 905
    :pswitch_15
    const/16 v25, 0xd0

    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldIntData(II)Z

    goto/16 :goto_1

    .line 908
    :pswitch_16
    const/16 v16, 0x0

    .line 909
    .local v16, iWeekMask:I
    #getter for: Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->m_lFieldValue:J
    invoke-static {v9}, Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;->access$300(Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;)J

    move-result-wide v25

    move-wide/from16 v0, v25

    long-to-int v14, v0

    .line 910
    .local v14, iFieldValue:I
    and-int/lit8 v25, v14, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 912
    or-int/lit8 v16, v16, 0x2

    .line 914
    :cond_3
    and-int/lit8 v25, v14, 0x2

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 916
    or-int/lit8 v16, v16, 0x4

    .line 918
    :cond_4
    and-int/lit8 v25, v14, 0x4

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 920
    or-int/lit8 v16, v16, 0x8

    .line 922
    :cond_5
    and-int/lit8 v25, v14, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 924
    or-int/lit8 v16, v16, 0x10

    .line 926
    :cond_6
    and-int/lit8 v25, v14, 0x10

    const/16 v26, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 928
    or-int/lit8 v16, v16, 0x20

    .line 930
    :cond_7
    and-int/lit8 v25, v14, 0x20

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 932
    or-int/lit8 v16, v16, 0x40

    .line 934
    :cond_8
    and-int/lit8 v25, v14, 0x40

    const/16 v26, 0x40

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 936
    or-int/lit8 v16, v16, 0x1

    .line 938
    :cond_9
    new-instance v24, Lcom/futuredial/publicobj/Field;

    .end local v24           #weekMaskField:Lcom/futuredial/publicobj/Field;
    invoke-direct/range {v24 .. v24}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 939
    .restart local v24       #weekMaskField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd4

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    goto/16 :goto_1

    .line 946
    .end local v9           #dwordFieldInfo:Lcom/futuredial/fbus/FBusCalendar$DWordFieldInfo;
    .end local v14           #iFieldValue:I
    .end local v16           #iWeekMask:I
    :pswitch_17
    new-instance v22, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 947
    .local v22, textFieldInfo:Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$200(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    packed-switch v25, :pswitch_data_6

    goto/16 :goto_1

    .line 950
    :pswitch_18
    const/16 v25, 0xb

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->access$400(Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 953
    :pswitch_19
    const/16 v25, 0xc

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->access$400(Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 956
    :pswitch_1a
    const/16 v25, 0xd

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->access$400(Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 959
    :pswitch_1b
    const/16 v25, 0x10

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->m_strFieldValue:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;->access$400(Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 966
    .end local v22           #textFieldInfo:Lcom/futuredial/fbus/FBusCalendar$TextFieldInfo;
    :pswitch_1c
    new-instance v23, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;-><init>(Lcom/futuredial/fbus/FBusCalendar;[BI)V

    .line 967
    .local v23, timeFieldInfo:Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;
    #getter for: Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->m_iSubType:I
    invoke-static {v7}, Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;->access$200(Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;)I

    move-result v25

    packed-switch v25, :pswitch_data_7

    goto/16 :goto_1

    .line 970
    :pswitch_1d
    const/16 v25, 0x65

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 971
    const/16 v25, 0x67

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 973
    new-instance v8, Lcom/futuredial/publicobj/Field;

    .end local v8           #dayofmonthField:Lcom/futuredial/publicobj/Field;
    invoke-direct {v8}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 974
    .restart local v8       #dayofmonthField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd1

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iDay:I
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$600(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 975
    new-instance v19, Lcom/futuredial/publicobj/Field;

    .end local v19           #monthofyearField:Lcom/futuredial/publicobj/Field;
    invoke-direct/range {v19 .. v19}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 976
    .restart local v19       #monthofyearField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xd2

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_iMonth:I
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$700(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)I

    move-result v26

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    goto/16 :goto_1

    .line 979
    :pswitch_1e
    const/16 v25, 0x66

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 983
    :pswitch_1f
    new-instance v3, Lcom/futuredial/publicobj/Field;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 984
    .local v3, alarmField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xc9

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 985
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 986
    .local v4, alarmTimeField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0x69

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 987
    invoke-virtual {v3, v4}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 988
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_1

    .line 993
    .end local v3           #alarmField:Lcom/futuredial/publicobj/Field;
    .end local v4           #alarmTimeField:Lcom/futuredial/publicobj/Field;
    :pswitch_20
    new-instance v3, Lcom/futuredial/publicobj/Field;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 994
    .restart local v3       #alarmField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0xc9

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/publicobj/Field;->SetIntData(II)Z

    .line 995
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 996
    .restart local v4       #alarmTimeField:Lcom/futuredial/publicobj/Field;
    const/16 v25, 0x69

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 997
    invoke-virtual {v3, v4}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 998
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_1

    .line 1002
    .end local v3           #alarmField:Lcom/futuredial/publicobj/Field;
    .end local v4           #alarmTimeField:Lcom/futuredial/publicobj/Field;
    :pswitch_21
    const/16 v25, 0x68

    #getter for: Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->m_strTimeValue:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;->access$500(Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 1010
    .end local v7           #baseFieldInfo:Lcom/futuredial/fbus/FBusCalendar$CalBaseFieldInfo;
    .end local v12           #iFieldBegin:I
    .end local v23           #timeFieldInfo:Lcom/futuredial/fbus/FBusCalendar$TimeFieldInfo;
    :cond_a
    if-eqz v20, :cond_e

    .line 1013
    new-instance v17, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v17 .. v17}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 1014
    .local v17, instField:Lcom/futuredial/publicobj/Field;
    if-eqz v17, :cond_b

    .line 1016
    const/16 v25, 0xd8

    move-object/from16 v0, v17

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 1017
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 1020
    :cond_b
    if-eqz v18, :cond_c

    .line 1022
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 1024
    :cond_c
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v15, v0, :cond_11

    if-eqz v24, :cond_11

    .line 1026
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 1037
    :cond_d
    :goto_2
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 1040
    .end local v17           #instField:Lcom/futuredial/publicobj/Field;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/futuredial/fbus/FBusCalendar;->m_bGetTimeZone:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 1042
    const/16 v25, 0xda

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/futuredial/fbus/FBusCalendar;->m_strTimeZone:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p4

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 1045
    :cond_f
    if-ne v13, v10, :cond_10

    .line 1047
    const/4 v5, 0x1

    :cond_10
    move v6, v5

    .line 1051
    .restart local v6       #bRet:I
    goto/16 :goto_0

    .line 1028
    .end local v6           #bRet:I
    .restart local v17       #instField:Lcom/futuredial/publicobj/Field;
    :cond_11
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v15, v0, :cond_12

    if-eqz v8, :cond_12

    .line 1030
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto :goto_2

    .line 1032
    :cond_12
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v15, v0, :cond_d

    if-eqz v19, :cond_d

    .line 1034
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto :goto_2

    .line 819
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_17
        :pswitch_1c
    .end packed-switch

    .line 823
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_11
        :pswitch_2
        :pswitch_2
        :pswitch_14
        :pswitch_15
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_16
    .end packed-switch

    .line 828
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 844
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 873
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_10
    .end packed-switch

    .line 889
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 947
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 967
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 1126
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1084
    .local v0, iRet:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/futuredial/fbus/FBusCalendar;->bFirstDataPackage:Z

    .line 1086
    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, iRet:I
    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 5
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 1091
    const-string v2, "FBusCalendarParser"

    const-string v3, "enter function parse"

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v0, 0x0

    .line 1094
    .local v0, iRet:I
    iget-boolean v2, p0, Lcom/futuredial/fbus/FBusCalendar;->bFirstDataPackage:Z

    if-eqz v2, :cond_0

    .line 1096
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/futuredial/fbus/FBusCalendar;->bFirstDataPackage:Z

    .line 1097
    invoke-direct {p0, p2}, Lcom/futuredial/fbus/FBusCalendar;->GetTimeZone([B)V

    .line 1112
    :goto_0
    const-string v2, "FBusCalendarParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exit function parse and return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/futuredial/config/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return v0

    .line 1101
    :cond_0
    new-instance v1, Lcom/futuredial/publicobj/Item;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Item;-><init>()V

    .line 1102
    .local v1, item:Lcom/futuredial/publicobj/Item;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3, v1}, Lcom/futuredial/fbus/FBusCalendar;->ParseOneCalendar(Z[BLcom/futuredial/fbus/FBusConfig;Lcom/futuredial/publicobj/Item;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    invoke-virtual {p4, v1}, Lcom/futuredial/publicobj/ItemArray;->AddItem(Lcom/futuredial/publicobj/Item;)Z

    goto :goto_0

    .line 1108
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
