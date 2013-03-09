.class public Lcom/futuredial/vxx/vcard/VCardParser;
.super Ljava/lang/Object;
.source "VCardParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCardParser"

.field public static final VERSION_VCARD21:Ljava/lang/String; = "vcard2.1"

.field public static final VERSION_VCARD21_INT:I = 0x1

.field public static final VERSION_VCARD30:Ljava/lang/String; = "vcard3.0"

.field public static final VERSION_VCARD30_INT:I = 0x2

.field public static mContext:Landroid/content/Context;

.field public static mIncorrectField:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mParser:Lcom/futuredial/vxx/vcard/VCardParser_V21;

.field mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mParser:Lcom/futuredial/vxx/vcard/VCardParser_V21;

    .line 48
    iput-object v0, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private TransformNodeToItemVBKM(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V
    .locals 5
    .parameter "objVxxConfig"
    .parameter "node"
    .parameter "item"

    .prologue
    .line 452
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p2, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, nCount:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 454
    iget-object v3, p2, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/vxx/PropertyNode;

    .line 455
    .local v2, propnode:Lcom/futuredial/vxx/PropertyNode;
    iget-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v4, "FDINCORRECTFIELD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 452
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    iget-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v4, "TITLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_1

    .line 466
    :cond_2
    iget-object v3, v2, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    const-string v4, "URL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    const/4 v3, 0x2

    iget-object v4, v2, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_1

    .line 471
    .end local v2           #propnode:Lcom/futuredial/vxx/PropertyNode;
    :cond_3
    return-void
.end method

.method private TransformNodeToItemVCard(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V
    .locals 27
    .parameter "objVxxConfig"
    .parameter "node"
    .parameter "item"

    .prologue
    .line 211
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, nCount:I
    :goto_0
    if-ge v8, v12, :cond_f

    .line 213
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/futuredial/vxx/VNode;->propList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/futuredial/vxx/PropertyNode;

    .line 214
    .local v14, propnode:Lcom/futuredial/vxx/PropertyNode;
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "FDINCORRECTFIELD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_0

    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1

    .line 211
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v15, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    .line 222
    .local v15, sFieldTag:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToParam:Ljava/util/HashMap;

    move-object/from16 v24, v0

    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 223
    .local v16, sTagTypeParam:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 225
    const-string v24, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 226
    .local v23, typearray:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_3

    .line 228
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 v24, v0

    aget-object v25, v23, v10

    invoke-interface/range {v24 .. v25}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 230
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 231
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v23, v10

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 226
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 237
    .end local v10           #j:I
    .end local v23           #typearray:[Ljava/lang/String;
    :cond_3
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "N"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_6

    .line 239
    const/4 v11, 0x0

    .local v11, k:I
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .local v13, nCountsize:I
    :goto_3
    if-ge v11, v13, :cond_0

    .line 241
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 242
    .local v18, strNameField:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_5

    .line 239
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 246
    :cond_5
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 247
    .local v22, subNameID:Ljava/lang/Integer;
    packed-switch v11, :pswitch_data_0

    .line 267
    :goto_5
    if-eqz v22, :cond_4

    .line 269
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p3

    move/from16 v1, v24

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto :goto_4

    .line 250
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";LN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subNameID:Ljava/lang/Integer;
    check-cast v22, Ljava/lang/Integer;

    .line 251
    .restart local v22       #subNameID:Ljava/lang/Integer;
    goto :goto_5

    .line 253
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";FN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subNameID:Ljava/lang/Integer;
    check-cast v22, Ljava/lang/Integer;

    .line 254
    .restart local v22       #subNameID:Ljava/lang/Integer;
    goto :goto_5

    .line 256
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";MIDDLENAME"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subNameID:Ljava/lang/Integer;
    check-cast v22, Ljava/lang/Integer;

    .line 257
    .restart local v22       #subNameID:Ljava/lang/Integer;
    goto :goto_5

    .line 259
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";TITLE"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subNameID:Ljava/lang/Integer;
    check-cast v22, Ljava/lang/Integer;

    .line 260
    .restart local v22       #subNameID:Ljava/lang/Integer;
    goto/16 :goto_5

    .line 262
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";SUFFIX"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #subNameID:Ljava/lang/Integer;
    check-cast v22, Ljava/lang/Integer;

    .line 263
    .restart local v22       #subNameID:Ljava/lang/Integer;
    goto/16 :goto_5

    .line 273
    .end local v11           #k:I
    .end local v13           #nCountsize:I
    .end local v18           #strNameField:Ljava/lang/String;
    .end local v22           #subNameID:Ljava/lang/Integer;
    :cond_6
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "ADR"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_a

    .line 275
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 288
    .local v9, iFieldID:Ljava/lang/Integer;
    if-eqz v9, :cond_0

    .line 290
    new-instance v3, Lcom/futuredial/publicobj/Field;

    invoke-direct {v3}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 291
    .local v3, addField:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const-string v25, ""

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 293
    const/4 v11, 0x0

    .restart local v11       #k:I
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .restart local v13       #nCountsize:I
    :goto_6
    if-ge v11, v13, :cond_9

    .line 295
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 296
    .local v17, strAdrField:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_8

    .line 293
    :cond_7
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 300
    :cond_8
    new-instance v20, Lcom/futuredial/publicobj/Field;

    invoke-direct/range {v20 .. v20}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 301
    .local v20, subField:Lcom/futuredial/publicobj/Field;
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 302
    .local v21, subFieldID:Ljava/lang/Integer;
    packed-switch v11, :pswitch_data_1

    .line 328
    :goto_8
    if-eqz v21, :cond_7

    .line 330
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 331
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto :goto_7

    .line 305
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";POST"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 306
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto :goto_8

    .line 308
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";EXTENDED"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 309
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto :goto_8

    .line 311
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";STREET"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 312
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto :goto_8

    .line 314
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";LOCALITY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 315
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto/16 :goto_8

    .line 317
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";REGION"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 318
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto/16 :goto_8

    .line 320
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";POSTAL"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 321
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto/16 :goto_8

    .line 323
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";COUNTRY"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #subFieldID:Ljava/lang/Integer;
    check-cast v21, Ljava/lang/Integer;

    .line 324
    .restart local v21       #subFieldID:Ljava/lang/Integer;
    goto/16 :goto_8

    .line 334
    .end local v17           #strAdrField:Ljava/lang/String;
    .end local v20           #subField:Lcom/futuredial/publicobj/Field;
    .end local v21           #subFieldID:Ljava/lang/Integer;
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_1

    .line 337
    .end local v3           #addField:Lcom/futuredial/publicobj/Field;
    .end local v9           #iFieldID:Ljava/lang/Integer;
    .end local v11           #k:I
    .end local v13           #nCountsize:I
    :cond_a
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "ORG"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_e

    .line 339
    new-instance v6, Lcom/futuredial/publicobj/Field;

    invoke-direct {v6}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 340
    .local v6, field:Lcom/futuredial/publicobj/Field;
    const/16 v24, 0xfc1

    const-string v25, ""

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 341
    const/4 v11, 0x0

    .restart local v11       #k:I
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .restart local v13       #nCountsize:I
    :goto_9
    if-ge v11, v13, :cond_d

    .line 343
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 344
    .local v19, strOrgField:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_c

    .line 341
    :cond_b
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 348
    :cond_c
    packed-switch v11, :pswitch_data_2

    goto :goto_a

    .line 351
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";FIRM"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 352
    .local v7, firmid:Ljava/lang/Integer;
    if-eqz v7, :cond_b

    .line 354
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    goto :goto_a

    .line 358
    .end local v7           #firmid:Ljava/lang/Integer;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";DEPARTMENT"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 359
    .local v5, departmentid:Ljava/lang/Integer;
    if-eqz v5, :cond_b

    .line 361
    new-instance v4, Lcom/futuredial/publicobj/Field;

    invoke-direct {v4}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 362
    .local v4, departmentfield:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 363
    invoke-virtual {v6, v4}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    goto :goto_a

    .line 370
    .end local v4           #departmentfield:Lcom/futuredial/publicobj/Field;
    .end local v5           #departmentid:Ljava/lang/Integer;
    .end local v19           #strOrgField:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    goto/16 :goto_1

    .line 374
    .end local v6           #field:Lcom/futuredial/publicobj/Field;
    .end local v11           #k:I
    .end local v13           #nCountsize:I
    :cond_e
    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    .line 376
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/futuredial/vxx/VxxConfig;->hmVCardTagToID:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 377
    .restart local v9       #iFieldID:Ljava/lang/Integer;
    if-eqz v9, :cond_0

    .line 379
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    iget-object v0, v14, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p3

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    goto/16 :goto_1

    .line 384
    .end local v9           #iFieldID:Ljava/lang/Integer;
    .end local v14           #propnode:Lcom/futuredial/vxx/PropertyNode;
    .end local v15           #sFieldTag:Ljava/lang/String;
    .end local v16           #sTagTypeParam:Ljava/lang/String;
    :cond_f
    return-void

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 348
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 4
    .parameter "vcardStr"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 68
    const-string v2, "\nVERSION:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, verIdx:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 70
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 82
    .end local v0           #verIdx:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcard2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Lcom/futuredial/vxx/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;-><init>()V

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mParser:Lcom/futuredial/vxx/vcard/VCardParser_V21;

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v3, "vcard3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    new-instance v2, Lcom/futuredial/vxx/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/futuredial/vxx/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mParser:Lcom/futuredial/vxx/vcard/VCardParser_V21;

    .line 86
    :cond_2
    return-void

    .line 72
    .restart local v0       #verIdx:I
    :cond_3
    const-string v2, "\n"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, verStr:Ljava/lang/String;
    const-string v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 75
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_4
    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 77
    const-string v2, "vcard3.0"

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_5
    const-string v2, "vcard2.1"

    iput-object v2, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z
    .locals 4
    .parameter "vcardStr"
    .parameter "builder"
    .parameter "bVerifyVCard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/vcard/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcard/VCardParser;->judgeVersion(Ljava/lang/String;)V

    .line 187
    if-eqz p3, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/futuredial/vxx/vcard/VCardParser;->verifyVCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mParser:Lcom/futuredial/vxx/vcard/VCardParser_V21;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3, p2}, Lcom/futuredial/vxx/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z

    move-result v0

    .line 194
    .local v0, isSuccess:Z
    if-nez v0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    const-string v2, "vcard2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const-string v1, "VCardParser"

    const-string v2, "Parse failed for vCard 2.1 parser. Try to use 3.0 parser."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "vcard3.0"

    invoke-direct {p0, v1}, Lcom/futuredial/vxx/vcard/VCardParser;->setVersion(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/futuredial/vxx/vcard/VCardParser;->parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 204
    :cond_1
    new-instance v1, Lcom/futuredial/vxx/vcard/VCardException;

    const-string v2, "parse failed.(even use 3.0 parser)"

    invoke-direct {v1, v2}, Lcom/futuredial/vxx/vcard/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/futuredial/vxx/vcard/VCardParser;->mVersion:Ljava/lang/String;

    .line 169
    return-void
.end method

.method private verifyVCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "vcardStr"

    .prologue
    const/16 v13, 0x3d

    const/16 v12, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 98
    const-string v9, "\r\n"

    const-string v10, "\n"

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, strlist:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v6, v21str:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 102
    .local v1, bQuotedPrintable:Z
    const/4 v0, 0x0

    .line 103
    .local v0, bEndByEqual:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v5

    if-ge v2, v9, :cond_d

    .line 104
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 106
    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    aget-object v9, v5, v2

    aget-object v10, v5, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1

    .line 108
    aget-object v9, v5, v2

    aget-object v10, v5, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, strTemp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_0

    sget-boolean v9, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    if-eqz v9, :cond_0

    .line 110
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .end local v4           #strTemp:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    aget-object v4, v5, v2

    .line 116
    .restart local v4       #strTemp:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_2

    sget-boolean v9, Lcom/futuredial/vxx/VxxParser;->bQPBWBlank:Z

    if-eqz v9, :cond_2

    .line 117
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x0

    .line 122
    goto :goto_1

    .line 124
    .end local v4           #strTemp:Ljava/lang/String;
    :cond_3
    aget-object v9, v5, v2

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_4

    aget-object v9, v5, v2

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    aget-object v9, v5, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_8

    .line 125
    :cond_4
    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v5, v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_5

    .line 126
    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 128
    :cond_5
    aget-object v9, v5, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 131
    aget-object v9, v5, v2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_6

    .line 132
    aget-object v9, v5, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 135
    :cond_6
    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 139
    :cond_7
    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 142
    :cond_8
    aget-object v9, v5, v2

    aget-object v10, v5, v2

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, sPropNameAndParam:Ljava/lang/String;
    const-string v9, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_a

    move v1, v8

    .line 144
    :goto_2
    if-eqz v1, :cond_9

    .line 146
    aget-object v9, v5, v2

    aget-object v10, v5, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_b

    move v0, v7

    .line 148
    :cond_9
    :goto_3
    if-eqz v1, :cond_c

    if-eqz v0, :cond_c

    .line 150
    aget-object v9, v5, v2

    aget-object v10, v5, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    move v1, v7

    .line 143
    goto :goto_2

    :cond_b
    move v0, v8

    .line 146
    goto :goto_3

    .line 154
    :cond_c
    aget-object v9, v5, v2

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 158
    .end local v3           #sPropNameAndParam:Ljava/lang/String;
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public ParseOneVCard(Lcom/futuredial/vxx/VxxConfig;Ljava/lang/String;Lcom/futuredial/publicobj/Item;ZZ)Z
    .locals 8
    .parameter "objVxxConfig"
    .parameter "vcardStr"
    .parameter "item"
    .parameter "bVerifyVCard"
    .parameter "bParsingVCard"

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 392
    .local v0, bRet:Z
    :try_start_0
    iget-object v5, p1, Lcom/futuredial/vxx/VxxConfig;->sQPCharsetVCard:Ljava/lang/String;

    sput-object v5, Lcom/futuredial/vxx/VDataBuilder;->sDefaultCharsetForQP:Ljava/lang/String;

    .line 393
    new-instance v1, Lcom/futuredial/vxx/VDataBuilder;

    iget-object v5, p1, Lcom/futuredial/vxx/VxxConfig;->sDefCharsetVCard:Ljava/lang/String;

    iget-object v6, p1, Lcom/futuredial/vxx/VxxConfig;->sCharsetFFWEVCard:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/futuredial/vxx/VDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 394
    .local v1, builder:Lcom/futuredial/vxx/VDataBuilder;
    const-string v5, "VCardParser::ParseOneVCard"

    const-string v6, "begin to parse vcard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v5, "\u0000"

    const-string v6, ""

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 397
    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 398
    invoke-direct {p0, p2, v1, p4}, Lcom/futuredial/vxx/vcard/VCardParser;->parse(Ljava/lang/String;Lcom/futuredial/vxx/VDataBuilder;Z)Z

    move-result v0

    .line 400
    if-eqz v0, :cond_4

    .line 402
    const-string v5, "VCardParser::ParseOneVCard"

    const-string v6, "succeed in parsing vcard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v5, v1, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 406
    iget-object v5, v1, Lcom/futuredial/vxx/VDataBuilder;->vNodeList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/vxx/VNode;

    .line 407
    .local v4, node:Lcom/futuredial/vxx/VNode;
    if-eqz p5, :cond_1

    .line 409
    invoke-direct {p0, p1, v4, p3}, Lcom/futuredial/vxx/vcard/VCardParser;->TransformNodeToItemVCard(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V

    .line 418
    .end local v4           #node:Lcom/futuredial/vxx/VNode;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 420
    const/16 v6, 0x232d

    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v6, v5}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    .end local v3           #i:I
    .restart local v4       #node:Lcom/futuredial/vxx/VNode;
    :cond_1
    invoke-direct {p0, p1, v4, p3}, Lcom/futuredial/vxx/vcard/VCardParser;->TransformNodeToItemVBKM(Lcom/futuredial/vxx/VxxConfig;Lcom/futuredial/vxx/VNode;Lcom/futuredial/publicobj/Item;)V
    :try_end_0
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 429
    .end local v1           #builder:Lcom/futuredial/vxx/VDataBuilder;
    .end local v4           #node:Lcom/futuredial/vxx/VNode;
    :catch_0
    move-exception v2

    .line 431
    .local v2, e:Lcom/futuredial/vxx/vcard/VCardException;
    invoke-virtual {v2}, Lcom/futuredial/vxx/vcard/VCardException;->printStackTrace()V

    .line 432
    const-string v5, "VCardParser::ParseOneVCard"

    invoke-virtual {v2}, Lcom/futuredial/vxx/vcard/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/futuredial/vxx/vcard/VCardException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    const/4 v0, 0x0

    .line 442
    .end local v2           #e:Lcom/futuredial/vxx/vcard/VCardException;
    :goto_2
    if-nez v0, :cond_2

    .line 444
    const-string v5, "VCardParser::ParseOneVCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail in parsing vcard: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_2
    return v0

    .line 422
    .restart local v1       #builder:Lcom/futuredial/vxx/VDataBuilder;
    .restart local v3       #i:I
    :cond_3
    :try_start_1
    sget-object v5, Lcom/futuredial/vxx/vcard/VCardParser;->mIncorrectField:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 435
    .end local v1           #builder:Lcom/futuredial/vxx/VDataBuilder;
    .end local v3           #i:I
    :catch_1
    move-exception v2

    .line 437
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    const-string v5, "VCardParser::ParseOneVCard"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    const/4 v0, 0x0

    goto :goto_2

    .line 426
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #builder:Lcom/futuredial/vxx/VDataBuilder;
    :cond_4
    :try_start_2
    const-string v5, "VCardParser::ParseOneVCard"

    const-string v6, "fail in parsing vcard"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/futuredial/vxx/vcard/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
