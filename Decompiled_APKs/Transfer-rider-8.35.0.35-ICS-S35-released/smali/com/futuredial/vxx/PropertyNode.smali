.class public Lcom/futuredial/vxx/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paramMap:Landroid/content/ContentValues;

.field public paramMap_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_bytes:[B

.field public propValue_vector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BLandroid/content/ContentValues;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter "propName"
    .parameter "propValue"
    .parameter
    .parameter "propValue_bytes"
    .parameter "paramMap"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/content/ContentValues;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, propValue_vector:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p6, paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p7, propGroupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    .line 76
    :goto_0
    if-eqz p2, :cond_1

    .line 77
    iput-object p2, p0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    .line 81
    :goto_1
    if-eqz p3, :cond_2

    .line 82
    iput-object p3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 86
    :goto_2
    iput-object p4, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    .line 87
    if-eqz p5, :cond_3

    .line 88
    iput-object p5, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 92
    :goto_3
    if-eqz p6, :cond_4

    .line 93
    iput-object p6, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 97
    :goto_4
    if-eqz p7, :cond_5

    .line 98
    iput-object p7, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 102
    :goto_5
    return-void

    .line 74
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    goto :goto_0

    .line 79
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    goto :goto_2

    .line 90
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    goto :goto_3

    .line 95
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    goto :goto_4

    .line 100
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    goto :goto_5
.end method

.method public static decode(Ljava/lang/String;)Lcom/futuredial/vxx/PropertyNode;
    .locals 32
    .parameter "encodedString"

    .prologue
    .line 258
    new-instance v24, Lcom/futuredial/vxx/PropertyNode;

    invoke-direct/range {v24 .. v24}, Lcom/futuredial/vxx/PropertyNode;-><init>()V

    .line 259
    .local v24, propertyNode:Lcom/futuredial/vxx/PropertyNode;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 260
    .local v26, trimed:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v29

    if-nez v29, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v24

    .line 263
    :cond_1
    const-string v29, "],"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, elems:[Ljava/lang/String;
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v13           #len$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_9

    aget-object v6, v3, v11

    .line 266
    .local v6, elem:Ljava/lang/String;
    const/16 v29, 0x5b

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 267
    .local v12, index:I
    const/16 v29, 0x0

    add-int/lit8 v30, v12, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 268
    .local v19, name:Ljava/lang/String;
    const-string v29, "(?<!\\\\),"

    invoke-static/range {v29 .. v29}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v23

    .line 269
    .local v23, pattern:Ljava/util/regex/Pattern;
    add-int/lit8 v29, v12, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v28

    .line 270
    .local v28, values:[Ljava/lang/String;
    const-string v29, "propName"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 271
    const/16 v29, 0x0

    aget-object v29, v28, v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    .line 265
    .end local v11           #i$:I
    :cond_2
    :goto_2
    add-int/lit8 v10, v11, 0x1

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_1

    .line 272
    :cond_3
    const-string v29, "propGroupSet"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 273
    move-object/from16 v4, v28

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_3
    if-ge v10, v14, :cond_2

    aget-object v27, v4, v10

    .line 274
    .local v27, value:Ljava/lang/String;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 276
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v27           #value:Ljava/lang/String;
    .restart local v11       #i$:I
    :cond_4
    const-string v29, "paramMap"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 277
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    .line 278
    .local v21, paramMap:Landroid/content/ContentValues;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    move-object/from16 v22, v0

    .line 279
    .local v22, paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v4, v28

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_4
    if-ge v10, v14, :cond_2

    aget-object v27, v4, v10

    .line 280
    .restart local v27       #value:Ljava/lang/String;
    const-string v29, "="

    const/16 v30, 0x2

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    .line 281
    .local v25, tmp:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v17, v25, v29

    .line 285
    .local v17, mapKey:Ljava/lang/String;
    const/16 v29, 0x1

    aget-object v29, v25, v29

    const-string v30, "\\\\,"

    const-string v31, ","

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "\\\\\\\\"

    const-string v31, "\\\\"

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 287
    .local v18, mapValue:Ljava/lang/String;
    const-string v29, "TYPE"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 288
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 279
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 290
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 293
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .end local v17           #mapKey:Ljava/lang/String;
    .end local v18           #mapValue:Ljava/lang/String;
    .end local v21           #paramMap:Landroid/content/ContentValues;
    .end local v22           #paramMap_TYPE:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25           #tmp:[Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    .restart local v11       #i$:I
    :cond_6
    const-string v29, "propValue"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v5, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v16, v0

    .line 296
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    array-length v15, v0

    .line 297
    .local v15, length:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_6
    if-ge v9, v15, :cond_8

    .line 298
    aget-object v29, v28, v9

    const-string v30, "\\\\,"

    const-string v31, ","

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "\\\\\\\\"

    const-string v31, "\\\\"

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 301
    .local v20, normValue:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v29, v15, -0x1

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 304
    const-string v29, ";"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 307
    .end local v20           #normValue:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    goto/16 :goto_2

    .line 313
    .end local v5           #builder:Ljava/lang/StringBuilder;
    .end local v6           #elem:Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #index:I
    .end local v15           #length:I
    .end local v16           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #name:Ljava/lang/String;
    .end local v23           #pattern:Ljava/util/regex/Pattern;
    .end local v28           #values:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    move-object/from16 v29, v0

    const-string v30, "ENCODING"

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, encoding:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v29, "BASE64"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_a

    const-string v29, "B"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 317
    :cond_a
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    goto/16 :goto_0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 13

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 172
    const-string v10, "propName:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v7

    .line 177
    .local v7, size:I
    if-lez v7, :cond_3

    .line 178
    iget-object v6, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 179
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "propGroup:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, i:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, group:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v10, v7, -0x1

    if-ge v3, v10, :cond_1

    .line 186
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v2           #group:Ljava/lang/String;
    :cond_2
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 194
    :cond_4
    iget-object v9, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 195
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "paramMap:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v7

    .line 197
    const/4 v3, 0x0

    .line 198
    .restart local v3       #i:I
    invoke-virtual {v9}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 203
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v10, "="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\\\"

    const-string v12, "\\\\\\\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    add-int/lit8 v10, v7, -0x1

    if-ge v3, v10, :cond_5

    .line 215
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    iget-object v6, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 221
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v7

    .line 222
    if-lez v3, :cond_7

    if-lez v7, :cond_7

    .line 223
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_7
    const/4 v3, 0x0

    .line 226
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 227
    .local v8, type:Ljava/lang/String;
    const-string v10, "TYPE="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v10, "\\\\"

    const-string v11, "\\\\\\\\"

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v10, v7, -0x1

    if-ge v3, v10, :cond_8

    .line 232
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 236
    .end local v8           #type:Ljava/lang/String;
    :cond_9
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_a
    iget-object v10, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 240
    if-lez v7, :cond_d

    .line 241
    const-string v10, "propValue:["

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v5, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    .line 243
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v7, :cond_c

    .line 244
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "\\\\"

    const-string v12, "\\\\\\\\"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    const-string v12, "\\\\,"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v10, v7, -0x1

    if-ge v3, v10, :cond_b

    .line 248
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 251
    :cond_c
    const-string v10, "],"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .end local v3           #i:I
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    instance-of v3, p1, Lcom/futuredial/vxx/PropertyNode;

    if-nez v3, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 110
    check-cast v0, Lcom/futuredial/vxx/PropertyNode;

    .line 112
    .local v0, node:Lcom/futuredial/vxx/PropertyNode;
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 123
    goto :goto_0

    .line 126
    :cond_2
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    iget-object v4, v0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, v0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, ", paramMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, ", propmMap_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, ", propGroupSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 152
    const-string v1, ", propValue_vector size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    if-eqz v1, :cond_1

    .line 156
    const-string v1, ", propValue_bytes size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue_bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    const-string v1, ", propValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/futuredial/vxx/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
