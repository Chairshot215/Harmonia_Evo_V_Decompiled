.class public Lcom/android/htccontacts/model/EntityDeltaTransfer;
.super Ljava/lang/Object;
.source "EntityDeltaTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/model/EntityDeltaTransfer$SIMProcessDataTransfer;,
        Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "EntityDeltaTransfer"

    sput-object v0, Lcom/android/htccontacts/model/EntityDeltaTransfer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    return-void
.end method

.method public static canInsertType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;I)Z
    .locals 4
    .parameter "state"
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 372
    invoke-static {p0, p1}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v2

    .line 373
    .local v2, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 374
    .local v0, editType:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v3, v0, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    if-ne v3, p2, :cond_0

    .line 375
    const/4 v3, 0x1

    .line 378
    .end local v0           #editType:Lcom/android/htccontacts/model/AccountType$EditType;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static copyDataKind(Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;)V
    .locals 31
    .parameter "mimetype"
    .parameter "srcDataKind"
    .parameter "dstDataKind"
    .parameter "sourceDelta"
    .parameter "targetDelta"
    .parameter "dataProcessor"

    .prologue
    .line 175
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v28

    .line 177
    .local v28, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_e

    .line 179
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 180
    .local v24, srcTypeColumn:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v25, v0

    .line 181
    .local v25, srcTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    .line 184
    .local v23, srcFieldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 185
    .local v14, dstTypeColumn:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 186
    .local v15, dstTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 188
    .local v13, dstFieldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    if-eqz v14, :cond_4

    const/16 v18, 0x1

    .line 189
    .local v18, hasDstTypeColumn:Z
    :goto_0
    if-eqz v24, :cond_5

    const/16 v19, 0x1

    .line 191
    .local v19, hasSrcTypeColumn:Z
    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 193
    .local v26, srcValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v26 .. v26}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v29

    if-nez v29, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 197
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v5, after:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 200
    new-instance v5, Landroid/content/ContentValues;

    .end local v5           #after:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 203
    .restart local v5       #after:Landroid/content/ContentValues;
    :cond_1
    const-string v29, "mimetype"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/16 v22, 0x0

    .line 207
    .local v22, isHasValidData:Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 208
    .local v17, field:Lcom/android/htccontacts/model/AccountType$EditField;
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 210
    .local v12, dstColumn:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 212
    if-eqz v18, :cond_3

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    .line 216
    :cond_3
    const-string v29, "data15"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 217
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 218
    .local v7, bytes:[B
    if-eqz v7, :cond_2

    array-length v0, v7

    move/from16 v29, v0

    if-lez v29, :cond_2

    .line 219
    const/16 v22, 0x1

    .line 220
    invoke-virtual {v5, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3

    .line 188
    .end local v5           #after:Landroid/content/ContentValues;
    .end local v7           #bytes:[B
    .end local v12           #dstColumn:Ljava/lang/String;
    .end local v17           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v18           #hasDstTypeColumn:Z
    .end local v19           #hasSrcTypeColumn:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isHasValidData:Z
    .end local v26           #srcValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 189
    .restart local v18       #hasDstTypeColumn:Z
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 224
    .restart local v5       #after:Landroid/content/ContentValues;
    .restart local v12       #dstColumn:Ljava/lang/String;
    .restart local v17       #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .restart local v19       #hasSrcTypeColumn:Z
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #isHasValidData:Z
    .restart local v26       #srcValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_6
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, data:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 226
    const/16 v22, 0x1

    .line 227
    invoke-virtual {v5, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 233
    .end local v10           #data:Ljava/lang/String;
    .end local v12           #dstColumn:Ljava/lang/String;
    .end local v17           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    :cond_7
    if-eqz v22, :cond_0

    .line 237
    if-eqz v18, :cond_d

    .line 238
    const/16 v27, 0x0

    .line 239
    .local v27, typeValue:Ljava/lang/Integer;
    if-eqz v19, :cond_a

    .line 240
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 262
    :goto_4
    if-eqz v27, :cond_8

    .line 265
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->removeEmptyUpdateableValueDelta(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Ljava/lang/String;I)V

    .line 268
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->canInsertType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;I)Z

    move-result v9

    .line 269
    .local v9, canIsertType:Z
    if-eqz v9, :cond_0

    .line 270
    move-object/from16 v0, v27

    invoke-virtual {v5, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    .end local v9           #canIsertType:Z
    .end local v27           #typeValue:Ljava/lang/Integer;
    :cond_8
    if-eqz p5, :cond_9

    .line 290
    invoke-virtual/range {p4 .. p4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v11

    .line 291
    .local v11, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v29, "account_type"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, accountType:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-interface {v0, v4, v1, v5}, Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;->processDataTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 293
    sget-object v29, Lcom/android/htccontacts/model/EntityDeltaTransfer;->TAG:Ljava/lang/String;

    const-string v30, "processing"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v4           #accountType:Ljava/lang/String;
    .end local v11           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_9
    invoke-static {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 296
    .local v16, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 297
    sget-object v29, Lcom/android/htccontacts/model/EntityDeltaTransfer;->TAG:Ljava/lang/String;

    const-string v30, "copy entry"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 245
    .end local v16           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v27       #typeValue:Ljava/lang/Integer;
    :cond_a
    const/16 v29, -0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->removeEmptyUpdateableValueDelta(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Ljava/lang/String;I)V

    .line 248
    const/16 v29, 0x0

    const/high16 v30, -0x8000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/model/EntityModifier;->getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v6

    .line 249
    .local v6, bestType:Lcom/android/htccontacts/model/AccountType$EditType;
    if-nez v6, :cond_b

    .line 251
    const/16 v29, 0x1

    const/high16 v30, -0x8000

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/model/EntityModifier;->getBestValidType(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;ZI)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v6

    .line 254
    :cond_b
    if-nez v6, :cond_c

    .line 255
    invoke-static/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->obtainDefaultType(Lcom/android/htccontacts/model/DataKind;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    goto/16 :goto_4

    .line 258
    :cond_c
    iget v0, v6, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    goto/16 :goto_4

    .line 279
    .end local v6           #bestType:Lcom/android/htccontacts/model/AccountType$EditType;
    .end local v27           #typeValue:Ljava/lang/Integer;
    :cond_d
    const/16 v29, -0x1

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->removeEmptyUpdateableValueDelta(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Ljava/lang/String;I)V

    .line 282
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v8

    .line 283
    .local v8, canInsert:Z
    if-nez v8, :cond_8

    goto/16 :goto_2

    .line 301
    .end local v5           #after:Landroid/content/ContentValues;
    .end local v8           #canInsert:Z
    .end local v13           #dstFieldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    .end local v14           #dstTypeColumn:Ljava/lang/String;
    .end local v15           #dstTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    .end local v18           #hasDstTypeColumn:Z
    .end local v19           #hasSrcTypeColumn:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isHasValidData:Z
    .end local v23           #srcFieldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    .end local v24           #srcTypeColumn:Ljava/lang/String;
    .end local v25           #srcTypeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    .end local v26           #srcValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_e
    return-void
.end method

.method private static ensureStructuredOrPhoneticName(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    if-nez p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 146
    :cond_1
    const-string v4, "data3"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data2"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data6"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data4"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "data5"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    move v0, v3

    .line 152
    .local v0, hasStructuredName:Z
    :goto_1
    const-string v4, "data9"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "data7"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "data8"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "phonetic_name"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    move v1, v3

    .line 158
    .local v1, hasStructuredPhoneticName:Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    .end local v0           #hasStructuredName:Z
    .end local v1           #hasStructuredPhoneticName:Z
    :cond_5
    move v0, v2

    .line 146
    goto :goto_1

    .restart local v0       #hasStructuredName:Z
    :cond_6
    move v1, v2

    .line 152
    goto :goto_2
.end method

.method private static ignoreTransfer(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 105
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static obtainDefaultType(Lcom/android/htccontacts/model/DataKind;)I
    .locals 5
    .parameter "srcDataKind"

    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 358
    .local v3, typeList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, defaultType:I
    if-eqz v3, :cond_1

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 361
    .local v2, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget-object v4, v2, Lcom/android/htccontacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 362
    iget v0, v2, Lcom/android/htccontacts/model/AccountType$EditType;->rawValue:I

    .line 367
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_1
    return v0
.end method

.method private static onlySupportTransfer(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimetype"

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public static processDisplaynameToEntityDeltaStructedName(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDelta;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sourceDelta"
    .parameter "displayName"

    .prologue
    .line 120
    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {p1, v4}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 121
    .local v3, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v2, 0x0

    .line 122
    .local v2, nameValue:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 124
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    move-object v2, v0

    .line 130
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v2, :cond_3

    .line 132
    iget-object v4, v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-nez v4, :cond_2

    .line 133
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iput-object v4, v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-static {v4, p2, v5}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->spliteFullNameToContentValues(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 139
    :cond_3
    return-void
.end method

.method private static removeEmptyUpdateableValueDelta(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;Ljava/lang/String;I)V
    .locals 11
    .parameter "targetDelta"
    .parameter "dataKind"
    .parameter "mimetype"
    .parameter "type"

    .prologue
    .line 305
    invoke-virtual {p0, p2}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 306
    .local v8, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    iget-object v2, p1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 308
    .local v2, fieldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditField;>;"
    if-eqz v8, :cond_6

    .line 309
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 310
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 314
    const/4 v3, 0x0

    .line 316
    .local v3, hasEmpty:Z
    if-ltz p3, :cond_1

    .line 317
    iget-object v10, p1, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 318
    .local v6, intValue:Ljava/lang/Integer;
    if-eqz v6, :cond_0

    .line 322
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, p3, :cond_0

    .line 327
    .end local v6           #intValue:Ljava/lang/Integer;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 328
    .local v1, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v10, v1, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 329
    iget-object v9, v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 331
    .local v9, values:Landroid/content/ContentValues;
    iget-object v10, v1, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 332
    iget-object v10, v1, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 333
    .local v7, obj:Ljava/lang/Object;
    if-eqz v7, :cond_4

    .line 334
    const/4 v3, 0x0

    .line 347
    .end local v1           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_3
    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 338
    .restart local v1       #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .restart local v7       #obj:Ljava/lang/Object;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v3, 0x1

    .line 340
    goto :goto_1

    .line 342
    .end local v7           #obj:Ljava/lang/Object;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 352
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v1           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v3           #hasEmpty:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_6
    return-void
.end method

.method private static spliteFullNameToContentValues(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "resolver"
    .parameter "fullName"
    .parameter "outValues"

    .prologue
    .line 164
    invoke-static {p0, p1}, Lcom/android/htccontacts/util/NameUtility;->splitToFullName(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 165
    .local v0, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 168
    const-string v1, "data1"

    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static transferToNewEntityDelta(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;)Z
    .locals 17
    .parameter "context"
    .parameter "sourceContactsSource"
    .parameter "sourceDelta"
    .parameter "targetContactsSource"
    .parameter "targetDelta"
    .parameter "dataProcessor"

    .prologue
    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 40
    .local v15, srcDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {p4 .. p4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 42
    .local v9, dstDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "starred"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 44
    .local v16, starred:I
    const-string v4, "account_type"

    invoke-virtual {v15, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 45
    .local v13, srcAccountType:Ljava/lang/String;
    const-string v4, "account_type"

    invoke-virtual {v9, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, dstAccountType:Ljava/lang/String;
    const-string v4, "data_set"

    invoke-virtual {v15, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, srcDataSet:Ljava/lang/String;
    const-string v4, "data_set"

    invoke-virtual {v9, v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, dstDataSet:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 52
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v12

    .line 53
    .local v12, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v12, :cond_4

    .line 54
    invoke-virtual {v12, v13, v14}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object p1

    .line 63
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_0
    if-nez p3, :cond_1

    .line 64
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v12

    .line 65
    .restart local v12       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    if-eqz v12, :cond_5

    .line 66
    invoke-virtual {v12, v7, v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object p3

    .line 75
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_1
    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    const-string v4, "starred"

    move/from16 v0, v16

    invoke-virtual {v9, v4, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 80
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/htccontacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 82
    .local v11, mimetypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    .local v1, mimetype:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v2

    .line 84
    .local v2, srcDataKind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v3

    .line 86
    .local v3, dstDataKind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/htccontacts/model/DataKind;->editable:Z

    if-eqz v4, :cond_3

    .line 90
    invoke-static {v1}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->ignoreTransfer(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 94
    invoke-static {v1}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->onlySupportTransfer(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 98
    invoke-static/range {v1 .. v6}, Lcom/android/htccontacts/model/EntityDeltaTransfer;->copyDataKind(Ljava/lang/String;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDeltaTransfer$ProcessDataTransfer;)V

    goto :goto_0

    .line 59
    .end local v1           #mimetype:Ljava/lang/String;
    .end local v2           #srcDataKind:Lcom/android/htccontacts/model/DataKind;
    .end local v3           #dstDataKind:Lcom/android/htccontacts/model/DataKind;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #mimetypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_4
    const/4 v4, 0x0

    .line 101
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :goto_1
    return v4

    .line 71
    .restart local v12       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 101
    .end local v12           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #mimetypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    const/4 v4, 0x1

    goto :goto_1
.end method
