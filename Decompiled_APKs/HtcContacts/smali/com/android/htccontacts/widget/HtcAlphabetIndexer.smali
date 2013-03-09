.class public Lcom/android/htccontacts/widget/HtcAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "HtcAlphabetIndexer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcAlphabetIndexer"

.field private static final bIsEnableYomiganaPorting:Z

.field private static final sSections:[Ljava/lang/String;

.field private static final sSectionsLength:I


# instance fields
.field protected mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabetLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/htccontacts/HtcFeatureList;->YOMIGANA_SBM:Z

    sput-boolean v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->bIsEnableYomiganaPorting:Z

    .line 23
    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u3042"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u304b"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u3055"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u305f"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u306a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u306f"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u307e"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u3084"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u3089"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u308f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSectionsLength:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "cursor"
    .parameter "sortedColumnIndex"
    .parameter "alphabet"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 46
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 48
    return-void
.end method

.method private getSectionCode(Ljava/lang/String;I)I
    .locals 8
    .parameter "str"
    .parameter "nIndex"

    .prologue
    const/16 v7, 0x41

    .line 129
    invoke-static {p1}, Lcom/android/htccontacts/util/YomiganaUtils;->convertPhoneticNameToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, letter:C
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, strSort:Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 133
    .local v3, nSortCode:I
    const/16 v4, 0x41

    .local v4, nStart:C
    const/16 v1, 0x5a

    .line 134
    .local v1, nEnd:C
    const/16 v6, 0x19

    add-int/lit8 v2, v6, 0x1

    .line 136
    .local v2, nOffset:I
    if-ge v3, v7, :cond_1

    .line 149
    .end local v3           #nSortCode:I
    :cond_0
    :goto_0
    return v3

    .line 140
    .restart local v3       #nSortCode:I
    :cond_1
    if-lt v3, v7, :cond_2

    const/16 v6, 0x5a

    if-le v3, v6, :cond_0

    .line 146
    :cond_2
    const/16 v6, 0x3042

    if-lt v3, v6, :cond_3

    const/16 v6, 0x3093

    if-le v3, v6, :cond_0

    .line 149
    :cond_3
    sget-object v6, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    const/16 v7, 0x1a

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    goto :goto_0
.end method

.method private getSectionCodePoint(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 117
    sget-object v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getPositionForJapaneseSection(I)I
    .locals 17
    .parameter "sectionIndex"

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 238
    .local v11, stringMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 239
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v5, -0x1

    .line 241
    .local v5, nUsedColumnType:I
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-eqz v14, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 242
    :cond_0
    const/4 v13, 0x0

    .line 327
    :cond_1
    :goto_0
    return v13

    .line 246
    :cond_2
    if-gtz p1, :cond_3

    .line 247
    const/4 v13, 0x0

    goto :goto_0

    .line 250
    :cond_3
    sget v14, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSectionsLength:I

    move/from16 v0, p1

    if-lt v0, v14, :cond_4

    .line 251
    sget v14, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSectionsLength:I

    add-int/lit8 p1, v14, -0x1

    .line 254
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 256
    .local v9, savedCursorPos:I
    sget-object v14, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    aget-object v12, v14, p1

    .line 257
    .local v12, targetLetter:Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 261
    .local v4, key:I
    const/high16 v14, -0x8000

    invoke-virtual {v11, v4, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 262
    .local v13, tmp:I
    const/high16 v14, -0x8000

    if-ne v14, v13, :cond_1

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 268
    .local v3, end:I
    const/4 v6, 0x0

    .line 272
    .local v6, pos:I
    sget-object v14, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    add-int/lit8 v15, p1, -0x1

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 273
    .local v7, prevLetter:I
    const/high16 v14, -0x8000

    invoke-virtual {v11, v7, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 274
    .local v8, prevLetterPos:I
    const/high16 v14, -0x8000

    if-eq v8, v14, :cond_5

    .line 275
    move v6, v8

    .line 280
    :cond_5
    :goto_1
    sub-int v14, v3, v6

    const/16 v15, 0x64

    if-le v14, v15, :cond_9

    .line 281
    add-int v14, v3, v6

    div-int/lit8 v13, v14, 0x2

    .line 282
    invoke-interface {v2, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 285
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSortName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, sort_name:Ljava/lang/String;
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_8

    .line 290
    :cond_7
    const-string v14, "HtcAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(Yomigana) sort_name is null or its length is 0. index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 292
    add-int/lit8 v13, v13, 0x1

    .line 296
    if-lt v13, v3, :cond_6

    .line 297
    :cond_8
    if-ne v13, v3, :cond_c

    .line 308
    .end local v10           #sort_name:Ljava/lang/String;
    :cond_9
    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    if-nez v14, :cond_f

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSortName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    .line 310
    .restart local v10       #sort_name:Ljava/lang/String;
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_e

    .line 314
    :cond_a
    const-string v14, "HtcAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(Yomigana) sort_name is null or its length is 0. index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_b
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 300
    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSectionCode(Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, codePoint:I
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSectionCodePoint(I)I

    move-result v14

    if-ge v1, v14, :cond_d

    .line 302
    move v6, v13

    goto :goto_1

    .line 304
    :cond_d
    move v3, v13

    goto/16 :goto_1

    .line 317
    .end local v1           #codePoint:I
    :cond_e
    const-string v14, "HtcAlphabetIndexer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(Yomigana) sort_name is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSectionCode(Ljava/lang/String;I)I

    move-result v1

    .line 320
    .restart local v1       #codePoint:I
    invoke-direct/range {p0 .. p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getSectionCodePoint(I)I

    move-result v14

    if-lt v1, v14, :cond_b

    .line 325
    .end local v1           #codePoint:I
    .end local v10           #sort_name:Ljava/lang/String;
    :cond_f
    invoke-virtual {v11, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v13, v6

    .line 327
    goto/16 :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 17
    .parameter "sectionIndex"

    .prologue
    .line 334
    sget-boolean v15, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->bIsEnableYomiganaPorting:Z

    if-eqz v15, :cond_1

    .line 336
    const-string v15, "HtcAlphabetIndexer"

    const-string v16, "getPositionForJapaneseSection"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual/range {p0 .. p1}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->getPositionForJapaneseSection(I)I

    move-result v9

    .line 443
    :cond_0
    :goto_0
    return v9

    .line 341
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 342
    .local v1, alphaMap:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 344
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-eqz v15, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 345
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 349
    :cond_3
    if-gtz p1, :cond_4

    .line 350
    const/4 v9, 0x0

    goto :goto_0

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    move/from16 v0, p1

    if-lt v0, v15, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v15, -0x1

    .line 356
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 358
    .local v12, savedCursorPos:I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 359
    .local v2, count:I
    const/4 v13, 0x0

    .line 360
    .local v13, start:I
    move v6, v2

    .line 363
    .local v6, end:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 364
    .local v8, letter:C
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v14

    .line 365
    .local v14, targetLetter:Ljava/lang/String;
    move v7, v8

    .line 367
    .local v7, key:I
    const/high16 v15, -0x8000

    const/high16 v16, -0x8000

    move/from16 v0, v16

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .local v9, pos:I
    if-eq v15, v9, :cond_6

    .line 371
    if-gez v9, :cond_0

    .line 372
    neg-int v9, v9

    .line 373
    move v6, v9

    .line 381
    :cond_6
    if-lez p1, :cond_7

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v16, p1, -0x1

    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 384
    .local v10, prevLetter:I
    const/high16 v15, -0x8000

    invoke-virtual {v1, v10, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 385
    .local v11, prevLetterPos:I
    const/high16 v15, -0x8000

    if-eq v11, v15, :cond_7

    .line 386
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 392
    .end local v10           #prevLetter:I
    .end local v11           #prevLetterPos:I
    :cond_7
    add-int v15, v6, v13

    div-int/lit8 v9, v15, 0x2

    .line 394
    :goto_1
    if-ge v9, v6, :cond_9

    .line 396
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mColumnIndex:I

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, curName:Ljava/lang/String;
    if-nez v3, :cond_8

    const-string v3, ""

    .line 399
    :cond_8
    if-nez v3, :cond_b

    .line 400
    if-nez v9, :cond_a

    .line 441
    .end local v3           #curName:Ljava/lang/String;
    :cond_9
    :goto_2
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 403
    .restart local v3       #curName:Ljava/lang/String;
    :cond_a
    add-int/lit8 v9, v9, -0x1

    .line 404
    goto :goto_1

    .line 407
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 408
    .local v5, diff:I
    if-eqz v5, :cond_e

    .line 420
    if-gez v5, :cond_c

    .line 421
    add-int/lit8 v13, v9, 0x1

    .line 422
    if-lt v13, v2, :cond_d

    .line 423
    move v9, v2

    .line 424
    goto :goto_2

    .line 427
    :cond_c
    move v6, v9

    .line 439
    :cond_d
    :goto_3
    add-int v15, v13, v6

    div-int/lit8 v9, v15, 0x2

    .line 440
    goto :goto_1

    .line 431
    :cond_e
    if-eq v13, v9, :cond_9

    .line 436
    move v6, v9

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 89
    :cond_1
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->bIsEnableYomiganaPorting:Z

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "HtcAlphabetIndexer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSectionForPosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0

    .line 97
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->bIsEnableYomiganaPorting:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "HtcAlphabetIndexer"

    const-string v1, "getSections"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->sSections:[Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSortName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 113
    iget v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/AlphabetIndexer;->onChanged()V

    .line 71
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 72
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/AlphabetIndexer;->onInvalidated()V

    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 81
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/AlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/widget/HtcAlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 63
    return-void
.end method
