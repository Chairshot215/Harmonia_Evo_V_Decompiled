.class public Lcom/futuredial/vxx/vcalendar/VCalRecurrence;
.super Ljava/lang/Object;
.source "VCalRecurrence.java"


# instance fields
.field private strDayOfMonth:Ljava/lang/String;

.field private strDayOfYear:Ljava/lang/String;

.field private strEndTime:Ljava/lang/String;

.field private strInstance:Ljava/lang/String;

.field private strInterval:Ljava/lang/String;

.field private strMonthOfYear:Ljava/lang/String;

.field private strRecurType:Ljava/lang/String;

.field private strRepeatTime:Ljava/lang/String;

.field private strStartTime:Ljava/lang/String;

.field private strWeekFlag:Ljava/lang/String;

.field private strWeekMask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ResetRecurrence()V

    .line 13
    return-void
.end method

.method private ParseDaily(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 363
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 364
    const-string v2, "1"

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 365
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, iSeparatingCharPos:I
    if-eq v0, v4, :cond_1

    .line 368
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 369
    add-int/lit8 v0, v0, 0x1

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, strTemp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 376
    iput-object v1, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 383
    .end local v1           #strTemp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    goto :goto_0
.end method

.method private ParseMinuteOp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    .line 357
    return-void
.end method

.method private ParseMonthlyByDay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/16 v8, 0x54

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 309
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 310
    const-string v3, "0"

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 311
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 312
    .local v1, iSeparatingCharPos:I
    if-eq v1, v5, :cond_3

    .line 314
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 315
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, iSecondSeparatingCharPos:I
    if-eq v0, v5, :cond_2

    .line 318
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 324
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    .line 326
    :cond_0
    const-string v2, ""

    .line 327
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 333
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 347
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    const-string v4, "+"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    .line 353
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :goto_1
    return-void

    .line 338
    .restart local v0       #iSecondSeparatingCharPos:I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .restart local v2       #strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 344
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    goto :goto_0

    .line 351
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    goto :goto_1
.end method

.method private ParseMonthlyByPos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 220
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 221
    const-string v4, "1"

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 222
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, iSeparatingCharPos:I
    if-eq v1, v6, :cond_b

    .line 225
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 226
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, iSecondSeparatingCharPos:I
    if-eq v0, v6, :cond_a

    .line 229
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    .line 230
    add-int/lit8 v0, v0, 0x1

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, strSpare:Ljava/lang/String;
    const/4 v2, 0x0

    .line 235
    .local v2, iWeekMask:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_8

    .line 237
    const-string v4, "SU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 239
    or-int/lit8 v2, v2, 0x1

    .line 270
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_7

    .line 272
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 241
    :cond_1
    const-string v4, "MO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 245
    :cond_2
    const-string v4, "TU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 249
    :cond_3
    const-string v4, "WE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 253
    :cond_4
    const-string v4, "TH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 257
    :cond_5
    const-string v4, "FR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    or-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 261
    :cond_6
    const-string v4, "SA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 263
    or-int/lit8 v2, v2, 0x40

    goto :goto_1

    .line 276
    :cond_7
    const-string v3, ""

    goto :goto_2

    .line 284
    :cond_8
    if-eqz v2, :cond_9

    .line 286
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekMask:Ljava/lang/String;

    .line 289
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_a

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_a

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_a

    .line 294
    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 297
    .end local v2           #iWeekMask:I
    .end local v3           #strSpare:Ljava/lang/String;
    :cond_a
    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    const-string v5, "+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    .line 303
    .end local v0           #iSecondSeparatingCharPos:I
    :goto_3
    return-void

    .line 301
    :cond_b
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    goto :goto_3
.end method

.method private ParseWeekly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 389
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 390
    const-string v3, "1"

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 391
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, iSeparatingCharPos:I
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, strSpare:Ljava/lang/String;
    const/4 v1, 0x0

    .line 397
    .local v1, iWeekMask:I
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_8

    .line 399
    const-string v3, "SU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    or-int/lit8 v1, v1, 0x1

    .line 432
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_7

    .line 434
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 403
    :cond_1
    const-string v3, "MO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    or-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 407
    :cond_2
    const-string v3, "TU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    or-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 411
    :cond_3
    const-string v3, "WE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    or-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 415
    :cond_4
    const-string v3, "TH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 417
    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    .line 419
    :cond_5
    const-string v3, "FR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 421
    or-int/lit8 v1, v1, 0x20

    goto :goto_1

    .line 423
    :cond_6
    const-string v3, "SA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 425
    or-int/lit8 v1, v1, 0x40

    goto :goto_1

    .line 438
    :cond_7
    const-string v2, ""

    goto :goto_2

    .line 446
    :cond_8
    if-nez v1, :cond_9

    .line 449
    const/16 v1, 0x3e

    .line 453
    :cond_9
    if-eqz v1, :cond_a

    .line 455
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekMask:Ljava/lang/String;

    .line 458
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_b

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_b

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 463
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 465
    :cond_b
    return-void
.end method

.method private ParseYearlyByDay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/16 v8, 0x54

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 521
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 522
    const-string v3, "1"

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 523
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 524
    .local v1, iSeparatingCharPos:I
    if-eq v1, v5, :cond_3

    .line 526
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 527
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 528
    .local v0, iSecondSeparatingCharPos:I
    if-eq v0, v5, :cond_2

    .line 530
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 536
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfYear:Ljava/lang/String;

    .line 539
    :cond_0
    const-string v2, ""

    .line 540
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 546
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 565
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 551
    .restart local v0       #iSecondSeparatingCharPos:I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    .restart local v2       #strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 557
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfYear:Ljava/lang/String;

    goto :goto_0

    .line 563
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    goto :goto_0
.end method

.method private ParseYearlyByMonth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "strRecurValue"
    .parameter "strSeparatingChar"

    .prologue
    const/16 v8, 0x54

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 471
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 472
    const-string v3, "0"

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 473
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 474
    .local v1, iSeparatingCharPos:I
    if-eq v1, v5, :cond_3

    .line 476
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 477
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 478
    .local v0, iSecondSeparatingCharPos:I
    if-eq v0, v5, :cond_2

    .line 480
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_0

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 486
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strMonthOfYear:Ljava/lang/String;

    .line 489
    :cond_0
    const-string v2, ""

    .line 490
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 496
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 515
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 501
    .restart local v0       #iSecondSeparatingCharPos:I
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 502
    .restart local v2       #strTemp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v7, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 507
    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strMonthOfYear:Ljava/lang/String;

    goto :goto_0

    .line 513
    .end local v0           #iSecondSeparatingCharPos:I
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public AddRecurrenceToItem(Ljava/lang/String;Ljava/util/HashMap;Lcom/futuredial/publicobj/Item;)V
    .locals 5
    .parameter "strRecurTag"
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/futuredial/publicobj/Item;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, hmVCalTagToID:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strStartTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";STARTTIME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strStartTime:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 107
    .end local v0           #fieldID:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";ENDTIME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 116
    .end local v0           #fieldID:Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRepeatTime:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";REPEATTIME"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRepeatTime:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lcom/futuredial/publicobj/Item;->AddFieldString(ILjava/lang/String;)Z

    .line 125
    .end local v0           #fieldID:Ljava/lang/Integer;
    :cond_2
    new-instance v2, Lcom/futuredial/publicobj/Field;

    invoke-direct {v2}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 126
    .local v2, fieldRecur:Lcom/futuredial/publicobj/Field;
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";TYPE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 135
    .end local v0           #fieldID:Ljava/lang/Integer;
    :cond_3
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";DAYOFMONTH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 138
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 140
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 141
    .local v1, fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 142
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 146
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_4
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strMonthOfYear:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";MONTHOFYEAR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 151
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 152
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strMonthOfYear:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 153
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 157
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_5
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfYear:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";DAYOFYEAR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 160
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_6

    .line 162
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 163
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfYear:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 164
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 169
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_6
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";INSTANCE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 172
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_7

    .line 174
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 175
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 176
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 180
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_7
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";WEEKFLAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 183
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_8

    .line 185
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 186
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 187
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 191
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_8
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekMask:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";WEEKMASK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_9

    .line 196
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 197
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekMask:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 198
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 202
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_9
    iget-object v3, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";INTERVAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .restart local v0       #fieldID:Ljava/lang/Integer;
    if-eqz v0, :cond_a

    .line 207
    new-instance v1, Lcom/futuredial/publicobj/Field;

    invoke-direct {v1}, Lcom/futuredial/publicobj/Field;-><init>()V

    .line 208
    .restart local v1       #fieldProperty:Lcom/futuredial/publicobj/Field;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/futuredial/publicobj/Field;->SetStringData(ILjava/lang/String;)Z

    .line 209
    invoke-virtual {v2, v1}, Lcom/futuredial/publicobj/Field;->AddProperty(Lcom/futuredial/publicobj/Field;)Z

    .line 213
    .end local v0           #fieldID:Ljava/lang/Integer;
    .end local v1           #fieldProperty:Lcom/futuredial/publicobj/Field;
    :cond_a
    invoke-virtual {p3, v2}, Lcom/futuredial/publicobj/Item;->AddField(Lcom/futuredial/publicobj/Field;)Z

    .line 214
    return-void
.end method

.method public InitRecurrence(Ljava/lang/String;)Z
    .locals 4
    .parameter "strRecurValue"

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, bRet:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    const-string v1, " "

    .line 54
    .local v1, strSeparatingChar:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 56
    const-string v1, "."

    .line 59
    :cond_2
    const-string v2, "MP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 61
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseMonthlyByPos(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 90
    const-string v2, ""

    iput-object v2, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_4
    const-string v2, "MD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseMonthlyByDay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    const-string v2, "M"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseMinuteOp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_6
    const-string v2, "D"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseDaily(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_7
    const-string v2, "W"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 77
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseWeekly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_8
    const-string v2, "YM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 81
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseYearlyByMonth(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_9
    const-string v2, "YD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    invoke-direct {p0, p1, v1}, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->ParseYearlyByDay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ResetRecurrence()V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRecurType:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strStartTime:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strEndTime:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfMonth:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strMonthOfYear:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strDayOfYear:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekFlag:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strWeekMask:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInterval:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strInstance:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/vxx/vcalendar/VCalRecurrence;->strRepeatTime:Ljava/lang/String;

    .line 42
    return-void
.end method
