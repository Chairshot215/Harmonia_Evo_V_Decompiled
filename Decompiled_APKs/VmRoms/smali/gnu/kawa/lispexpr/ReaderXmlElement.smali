.class public Lgnu/kawa/lispexpr/ReaderXmlElement;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderXmlElement.java"


# static fields
.field static final DEFAULT_ELEMENT_NAMESPACE:Ljava/lang/String; = "[default-element-namespace]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V
    .locals 3
    .parameter "reader"
    .parameter "name"

    .prologue
    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 544
    const/16 v0, 0x3f

    .line 545
    .local v0, ch:C
    const-string v1, "lt"

    if-ne p1, v1, :cond_0

    .line 546
    const/16 v0, 0x3c

    .line 557
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 558
    return-void

    .line 547
    :cond_0
    const-string v1, "gt"

    if-ne p1, v1, :cond_1

    .line 548
    const/16 v0, 0x3e

    goto :goto_0

    .line 549
    :cond_1
    const-string v1, "amp"

    if-ne p1, v1, :cond_2

    .line 550
    const/16 v0, 0x26

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "quot"

    if-ne p1, v1, :cond_3

    .line 552
    const/16 v0, 0x22

    goto :goto_0

    .line 553
    :cond_3
    const-string v1, "apos"

    if-ne p1, v1, :cond_4

    .line 554
    const/16 v0, 0x27

    goto :goto_0

    .line 556
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown enity reference: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static quote(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 3
    .parameter "obj"

    .prologue
    .line 24
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v2, "quote"

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 25
    .local v0, q:Lgnu/mapping/Symbol;
    invoke-static {v0, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    return-object v1
.end method

.method static readCharRef(Lgnu/kawa/lispexpr/LispReader;)V
    .locals 7
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 470
    .local v3, next:I
    const/16 v5, 0x78

    if-ne v3, v5, :cond_1

    .line 472
    const/16 v0, 0x10

    .line 473
    .local v0, base:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 477
    :goto_0
    const/4 v4, 0x0

    .line 478
    .local v4, value:I
    :goto_1
    if-ltz v3, :cond_0

    .line 480
    int-to-char v1, v3

    .line 481
    .local v1, ch:C
    invoke-static {v1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 482
    .local v2, digit:I
    if-gez v2, :cond_2

    .line 490
    .end local v1           #ch:C
    .end local v2           #digit:I
    :cond_0
    const/16 v5, 0x3b

    if-eq v3, v5, :cond_3

    .line 492
    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 493
    const-string v5, "invalid character reference"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 504
    :goto_2
    return-void

    .line 476
    .end local v0           #base:I
    .end local v4           #value:I
    :cond_1
    const/16 v0, 0xa

    .restart local v0       #base:I
    goto :goto_0

    .line 484
    .restart local v1       #ch:C
    .restart local v2       #digit:I
    .restart local v4       #value:I
    :cond_2
    const/high16 v5, 0x800

    if-ge v4, v5, :cond_0

    .line 486
    mul-int/2addr v4, v0

    .line 487
    add-int/2addr v4, v2

    .line 488
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 489
    goto :goto_1

    .line 496
    .end local v1           #ch:C
    .end local v2           #digit:I
    :cond_3
    if-lez v4, :cond_4

    const v5, 0xd7ff

    if-le v4, v5, :cond_6

    :cond_4
    const v5, 0xe000

    if-lt v4, v5, :cond_5

    const v5, 0xfffd

    if-le v4, v5, :cond_6

    :cond_5
    const/high16 v5, 0x1

    if-lt v4, v5, :cond_7

    const v5, 0x10ffff

    if-gt v4, v5, :cond_7

    .line 500
    :cond_6
    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_2

    .line 503
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid character value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;
    .locals 10
    .parameter "reader"
    .parameter "delimiter"
    .parameter "resultTail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 371
    const/4 v0, 0x0

    .local v0, prevWasEnclosed:Z
    move v4, v0

    .line 374
    .end local v0           #prevWasEnclosed:Z
    .local v4, prevWasEnclosed:Z
    :goto_0
    const/4 v1, 0x0

    .line 375
    .local v1, item:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 376
    .local v5, text:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 377
    .local v2, line:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v0

    .line 378
    .local v0, column:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 379
    .local v3, next:I
    if-gez v3, :cond_1

    .line 381
    const-string v1, "unexpected end-of-file"

    .end local v1           #item:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 382
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    .restart local v1       #item:Ljava/lang/Object;
    move v9, v3

    .end local v3           #next:I
    .local v9, next:I
    move v3, v4

    .end local v4           #prevWasEnclosed:Z
    .local v3, prevWasEnclosed:Z
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v5, v1

    move v1, v9

    .line 436
    .end local v9           #next:I
    .local v1, next:I
    :goto_1
    if-eqz v5, :cond_11

    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .end local v1           #next:I
    if-lez v1, :cond_11

    .line 438
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .end local v4           #text:Ljava/lang/String;
    .local v1, text:Ljava/lang/String;
    const/4 v4, 0x0

    iput v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 441
    :goto_2
    if-eqz v1, :cond_0

    .line 445
    sget-object v4, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    invoke-static {v4, v1}, Lgnu/lists/Pair;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 446
    .local v1, tnode:Lgnu/lists/Pair;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v1, v4, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 448
    .local v1, pair:Lgnu/lists/Pair;
    invoke-virtual {p2, v1}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 449
    move-object p2, v1

    .line 451
    .end local v1           #pair:Lgnu/lists/Pair;
    :cond_0
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v5, v1, :cond_f

    .line 461
    return-object p2

    .line 384
    .local v1, item:Ljava/lang/Object;
    .local v3, next:I
    .local v4, prevWasEnclosed:Z
    .restart local v5       #text:Ljava/lang/String;
    :cond_1
    if-ne v3, p1, :cond_5

    .line 386
    const/16 v4, 0x3c

    if-ne p1, v4, :cond_3

    .line 388
    .end local v4           #prevWasEnclosed:Z
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .end local v1           #item:Ljava/lang/Object;
    if-lez v1, :cond_13

    .line 390
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v5           #text:Ljava/lang/String;
    .local v1, text:Ljava/lang/String;
    const/4 v3, 0x0

    iput v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .end local v3           #next:I
    move-object v4, v1

    .line 393
    .end local v1           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 394
    .restart local v3       #next:I
    const/16 v1, 0x2f

    if-ne v3, v1, :cond_2

    .line 395
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    .local v1, item:Ljava/lang/Object;
    move-object v5, v4

    .line 405
    .end local v1           #item:Ljava/lang/Object;
    .end local v4           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    :goto_4
    const/4 v4, 0x0

    .local v4, prevWasEnclosed:Z
    move v9, v3

    .end local v3           #next:I
    .restart local v9       #next:I
    move v3, v4

    .end local v4           #prevWasEnclosed:Z
    .local v3, prevWasEnclosed:Z
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v5, v1

    move v1, v9

    .end local v9           #next:I
    .local v1, next:I
    goto :goto_1

    .line 397
    .end local v1           #next:I
    .local v3, next:I
    :cond_2
    const/4 v1, 0x1

    invoke-static {p0, v3, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v1

    .local v1, item:Ljava/lang/Object;
    move-object v5, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    goto :goto_4

    .line 399
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->checkNext(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 401
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_4

    .line 404
    :cond_4
    sget-object v1, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto :goto_4

    .line 407
    .local v4, prevWasEnclosed:Z
    :cond_5
    const/16 v6, 0x26

    if-ne v3, v6, :cond_b

    .line 409
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 410
    const/16 v6, 0x23

    if-ne v3, v6, :cond_7

    .line 411
    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readCharRef(Lgnu/kawa/lispexpr/LispReader;)V

    .line 425
    .end local v1           #item:Ljava/lang/Object;
    .end local v4           #prevWasEnclosed:Z
    :cond_6
    :goto_5
    const/4 v4, 0x1

    .restart local v4       #prevWasEnclosed:Z
    move v9, v3

    .end local v3           #next:I
    .restart local v9       #next:I
    move v3, v4

    .end local v4           #prevWasEnclosed:Z
    .local v3, prevWasEnclosed:Z
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v5, v1

    move v1, v9

    .end local v9           #next:I
    .local v1, next:I
    goto :goto_1

    .line 412
    .local v1, item:Ljava/lang/Object;
    .local v3, next:I
    .local v4, prevWasEnclosed:Z
    .restart local v5       #text:Ljava/lang/String;
    :cond_7
    const/16 v1, 0x28

    if-eq v3, v1, :cond_8

    .end local v1           #item:Ljava/lang/Object;
    const/16 v1, 0x7b

    if-ne v3, v1, :cond_a

    .line 414
    :cond_8
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-gtz v1, :cond_9

    if-eqz v4, :cond_12

    .line 415
    :cond_9
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .end local v5           #text:Ljava/lang/String;
    .local v1, text:Ljava/lang/String;
    move-object v4, v1

    .line 416
    .end local v1           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_6
    const/4 v1, 0x0

    iput v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 417
    invoke-static {p0, v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v1

    .local v1, item:Ljava/lang/Object;
    move-object v5, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    goto :goto_5

    .line 421
    .end local v1           #item:Ljava/lang/Object;
    .local v4, prevWasEnclosed:Z
    :cond_a
    invoke-static {p0, v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v1

    .line 422
    .restart local v1       #item:Ljava/lang/Object;
    if-eqz v4, :cond_6

    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .end local v4           #prevWasEnclosed:Z
    if-nez v4, :cond_6

    .line 423
    const-string v4, ""

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v5, v4

    .end local v4           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    goto :goto_5

    .line 429
    .local v4, prevWasEnclosed:Z
    :cond_b
    const/16 v6, 0x3c

    if-eq p1, v6, :cond_d

    const/16 v6, 0x9

    if-eq v3, v6, :cond_c

    const/16 v6, 0xa

    if-eq v3, v6, :cond_c

    const/16 v6, 0xd

    if-ne v3, v6, :cond_d

    .line 431
    :cond_c
    const/16 v3, 0x20

    .line 432
    :cond_d
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_e

    .line 433
    const/16 v6, 0x65

    const-string v7, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {p0, v6, v7}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;)V

    .line 434
    :cond_e
    int-to-char v6, v3

    invoke-virtual {p0, v6}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    move v9, v3

    .end local v3           #next:I
    .restart local v9       #next:I
    move v3, v4

    .end local v4           #prevWasEnclosed:Z
    .local v3, prevWasEnclosed:Z
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    move-object v5, v1

    move v1, v9

    .end local v9           #next:I
    .local v1, next:I
    goto/16 :goto_1

    .line 453
    .end local v1           #next:I
    .end local v4           #text:Ljava/lang/String;
    :cond_f
    if-eqz v5, :cond_10

    .line 455
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v5, v1, v4, v2, v0}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v0

    .line 457
    .local v0, pair:Lgnu/lists/Pair;
    invoke-virtual {p2, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 458
    move-object p2, v0

    .end local v0           #pair:Lgnu/lists/Pair;
    :cond_10
    move v4, v3

    .line 460
    .end local v3           #prevWasEnclosed:Z
    .local v4, prevWasEnclosed:Z
    goto/16 :goto_0

    .local v0, column:I
    .restart local v3       #prevWasEnclosed:Z
    .local v4, text:Ljava/lang/String;
    :cond_11
    move-object v1, v4

    .end local v4           #text:Ljava/lang/String;
    .local v1, text:Ljava/lang/String;
    goto/16 :goto_2

    .end local v1           #text:Ljava/lang/String;
    .local v3, next:I
    .local v4, prevWasEnclosed:Z
    .restart local v5       #text:Ljava/lang/String;
    :cond_12
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    goto :goto_6

    .end local v4           #text:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    :cond_13
    move-object v4, v5

    .end local v5           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public static readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 14
    .parameter "reader"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v9, v0, 0x1

    .line 239
    .local v9, startLine:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v0

    const/4 v1, 0x2

    sub-int v8, v0, v1

    .line 240
    .local v8, startColumn:I
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, tag:Ljava/lang/Object;
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v5, v1

    .line 246
    .local v5, startTag:Ljava/lang/String;
    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v10

    .line 249
    .local v10, tagPair:Lgnu/lists/Pair;
    move-object v2, v10

    .line 250
    .local v2, resultTail:Lgnu/lists/Pair;
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 251
    .local v0, namespaceList:Lgnu/lists/LList;
    const/4 v1, 0x0

    .local v1, nsBindings:Lgnu/xml/NamespaceBinding;
    move-object v6, v0

    .end local v0           #namespaceList:Lgnu/lists/LList;
    .local v6, namespaceList:Lgnu/lists/LList;
    move-object v4, v2

    .line 254
    .end local v1           #nsBindings:Lgnu/xml/NamespaceBinding;
    .end local v2           #resultTail:Lgnu/lists/Pair;
    .local v4, resultTail:Lgnu/lists/Pair;
    :goto_1
    const/4 v0, 0x0

    .line 255
    .local v0, sawSpace:Z
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 256
    :goto_2
    if-ltz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 259
    const/4 v0, 0x1

    goto :goto_2

    .line 244
    .end local v4           #resultTail:Lgnu/lists/Pair;
    .end local v5           #startTag:Ljava/lang/String;
    .end local v6           #namespaceList:Lgnu/lists/LList;
    .end local v10           #tagPair:Lgnu/lists/Pair;
    .local v0, tag:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    .line 261
    .local v0, sawSpace:Z
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    .restart local v5       #startTag:Ljava/lang/String;
    .restart local v6       #namespaceList:Lgnu/lists/LList;
    .restart local v10       #tagPair:Lgnu/lists/Pair;
    :cond_1
    if-ltz p1, :cond_2

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_4

    .line 314
    :cond_2
    const/4 v0, 0x0

    .line 315
    .local v0, empty:Z
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_3

    .line 317
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 318
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_9

    .line 319
    const/4 v0, 0x1

    .line 323
    :cond_3
    :goto_3
    if-nez v0, :cond_11

    .line 325
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    .line 327
    .end local v0           #empty:Z
    const-string v0, "missing \'>\' after start element"

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 328
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local p0
    move-object v0, v4

    .end local v4           #resultTail:Lgnu/lists/Pair;
    .local v0, resultTail:Lgnu/lists/Pair;
    move-object v1, p0

    move-object p0, v6

    .line 357
    .end local v5           #startTag:Ljava/lang/String;
    .end local v6           #namespaceList:Lgnu/lists/LList;
    .local p0, namespaceList:Lgnu/lists/LList;
    :goto_4
    return-object v1

    .line 263
    .local v0, sawSpace:Z
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    .restart local v5       #startTag:Ljava/lang/String;
    .restart local v6       #namespaceList:Lgnu/lists/LList;
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    :cond_4
    if-nez v0, :cond_5

    .line 264
    const-string v0, "missing space before attribute"

    .end local v0           #sawSpace:Z
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 265
    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v1

    .line 266
    .local v1, attrName:Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result p1

    .end local p1
    add-int/lit8 p1, p1, 0x1

    .line 267
    .local p1, line:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result p1

    .end local p1           #line:I
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr p1, v0

    .line 268
    .local p1, column:I
    const/4 p1, 0x0

    .line 269
    .local p1, definingNamespace:Ljava/lang/String;
    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_12

    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x0

    aget-char v0, v0, v2

    const/16 v2, 0x78

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x3

    aget-char v0, v0, v2

    const/16 v2, 0x6e

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x4

    aget-char v0, v0, v2

    const/16 v2, 0x73

    if-ne v0, v2, :cond_12

    .line 276
    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 277
    const-string p1, ""

    move-object v3, p1

    .line 282
    .end local p1           #definingNamespace:Ljava/lang/String;
    .local v3, definingNamespace:Ljava/lang/String;
    :goto_5
    const/16 p1, 0x20

    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result p1

    .line 283
    .local p1, ch:I
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    .line 285
    const-string p1, "missing \'=\' after attribute"

    .end local p1           #ch:I
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 287
    :cond_6
    const/16 p1, 0x20

    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result p1

    .line 288
    .restart local p1       #ch:I
    sget-object v0, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v2, v7, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v0

    .line 291
    .local v0, attrList:Lgnu/lists/PairWithPosition;
    move-object v2, v0

    .line 292
    .local v2, attrTail:Lgnu/lists/Pair;
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v7, v11, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 295
    .local v1, attrPair:Lgnu/lists/PairWithPosition;
    invoke-virtual {p0, v2, v1}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    move-object v2, v1

    .line 297
    int-to-char v7, p1

    invoke-static {p0, v7, v2}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    move-result-object v2

    .line 298
    if-eqz v3, :cond_8

    .line 301
    new-instance v0, Lgnu/lists/PairWithPosition;

    .end local v0           #attrList:Lgnu/lists/PairWithPosition;
    invoke-virtual {v1}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #attrTail:Lgnu/lists/Pair;
    invoke-static {v3, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-direct {v0, v1, v2, v6}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v6           #namespaceList:Lgnu/lists/LList;
    .local v0, namespaceList:Lgnu/lists/LList;
    move-object v1, v4

    .end local v3           #definingNamespace:Ljava/lang/String;
    .end local v4           #resultTail:Lgnu/lists/Pair;
    .local v1, resultTail:Lgnu/lists/Pair;
    :goto_6
    move-object v6, v0

    .end local v0           #namespaceList:Lgnu/lists/LList;
    .restart local v6       #namespaceList:Lgnu/lists/LList;
    move-object v4, v1

    .line 313
    .end local v1           #resultTail:Lgnu/lists/Pair;
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    goto/16 :goto_1

    .line 278
    .local v1, attrName:Ljava/lang/Object;
    .local p1, definingNamespace:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x5

    aget-char v0, v0, v2

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_12

    .line 279
    new-instance p1, Ljava/lang/String;

    .end local p1           #definingNamespace:Ljava/lang/String;
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v2, 0x6

    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    const/4 v7, 0x6

    sub-int/2addr v3, v7

    invoke-direct {p1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .restart local p1       #definingNamespace:Ljava/lang/String;
    move-object v3, p1

    .end local p1           #definingNamespace:Ljava/lang/String;
    .restart local v3       #definingNamespace:Ljava/lang/String;
    goto :goto_5

    .line 307
    .local v0, attrList:Lgnu/lists/PairWithPosition;
    .local v1, attrPair:Lgnu/lists/PairWithPosition;
    .restart local v2       #attrTail:Lgnu/lists/Pair;
    .local p1, ch:I
    :cond_8
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #attrPair:Lgnu/lists/PairWithPosition;
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v7, -0x1

    invoke-static {v0, v1, v2, v3, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    .end local v2           #attrTail:Lgnu/lists/Pair;
    .end local v3           #definingNamespace:Ljava/lang/String;
    move-result-object v0

    .line 309
    .local v0, pair:Lgnu/lists/Pair;
    invoke-virtual {v4, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 310
    move-object v0, v0

    .end local v4           #resultTail:Lgnu/lists/Pair;
    .local v0, resultTail:Lgnu/lists/Pair;
    move-object v1, v0

    .end local v0           #resultTail:Lgnu/lists/Pair;
    .local v1, resultTail:Lgnu/lists/Pair;
    move-object v0, v6

    .end local v6           #namespaceList:Lgnu/lists/LList;
    .local v0, namespaceList:Lgnu/lists/LList;
    goto :goto_6

    .line 321
    .end local v1           #resultTail:Lgnu/lists/Pair;
    .local v0, empty:Z
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    .restart local v6       #namespaceList:Lgnu/lists/LList;
    :cond_9
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto/16 :goto_3

    .line 330
    .end local v0           #empty:Z
    :cond_a
    const/16 p1, 0x3c

    invoke-static {p0, p1, v4}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    .end local p1           #ch:I
    move-result-object v7

    .line 331
    .end local v4           #resultTail:Lgnu/lists/Pair;
    .local v7, resultTail:Lgnu/lists/Pair;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 332
    .restart local p1       #ch:I
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 337
    :cond_b
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 338
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 339
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_b

    .line 342
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, endTag:Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 344
    :cond_c
    const/16 v1, 0x65

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v4

    iget v11, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v4, v11

    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #startTag:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "computed start tag closed by \'</"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #endTag:Ljava/lang/String;
    const-string v5, ">\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_7
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 350
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 352
    :cond_e
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result p1

    .line 353
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_f

    .line 354
    const-string v0, "missing \'>\' after end element"

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    :cond_f
    move-object v1, v7

    .line 356
    .end local v7           #resultTail:Lgnu/lists/Pair;
    .restart local v1       #resultTail:Lgnu/lists/Pair;
    :goto_8
    invoke-static {v6}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    .line 357
    .end local v6           #namespaceList:Lgnu/lists/LList;
    .local v0, namespaceList:Lgnu/lists/LList;
    sget-object v2, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    invoke-static {v0, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object p0

    .end local p0           #reader:Lgnu/kawa/lispexpr/LispReader;
    invoke-static {v2, v3, p0, v9, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p0

    move-object v13, v0

    .end local v0           #namespaceList:Lgnu/lists/LList;
    .local v13, namespaceList:Lgnu/lists/LList;
    move-object v0, v1

    .end local v1           #resultTail:Lgnu/lists/Pair;
    .local v0, resultTail:Lgnu/lists/Pair;
    move-object v1, p0

    move-object p0, v13

    .end local v13           #namespaceList:Lgnu/lists/LList;
    .local p0, namespaceList:Lgnu/lists/LList;
    goto/16 :goto_4

    .line 344
    .local v0, endTag:Ljava/lang/String;
    .restart local v5       #startTag:Ljava/lang/String;
    .restart local v6       #namespaceList:Lgnu/lists/LList;
    .restart local v7       #resultTail:Lgnu/lists/Pair;
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\'<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #startTag:Ljava/lang/String;
    const-string v11, ">\' closed by \'</"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #endTag:Ljava/lang/String;
    const-string v5, ">\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    .end local v7           #resultTail:Lgnu/lists/Pair;
    .local v0, empty:Z
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    .restart local v5       #startTag:Ljava/lang/String;
    :cond_11
    move-object v1, v4

    .end local v4           #resultTail:Lgnu/lists/Pair;
    .restart local v1       #resultTail:Lgnu/lists/Pair;
    goto :goto_8

    .end local v0           #empty:Z
    .local v1, attrName:Ljava/lang/Object;
    .restart local v4       #resultTail:Lgnu/lists/Pair;
    .local p1, definingNamespace:Ljava/lang/String;
    :cond_12
    move-object v3, p1

    .end local p1           #definingNamespace:Ljava/lang/String;
    .restart local v3       #definingNamespace:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method static readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 6
    .parameter "reader"
    .parameter "next"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 512
    const-string v2, "?"

    .line 515
    .local v2, result:Ljava/lang/String;
    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 516
    .local v3, saveLength:I
    :goto_0
    if-ltz p1, :cond_0

    .line 518
    int-to-char v0, p1

    .line 519
    .local v0, ch:C
    invoke-static {v0}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    .end local v0           #ch:C
    :cond_0
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_2

    .line 526
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 527
    const-string v4, "invalid entity reference"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 538
    .end local v2           #result:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 521
    .restart local v0       #ch:C
    .restart local v2       #result:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 522
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 523
    goto :goto_0

    .line 531
    .end local v0           #ch:C
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v5, v3

    invoke-direct {v1, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 533
    .local v1, ref:Ljava/lang/String;
    iput v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 534
    invoke-static {p0, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V

    .line 535
    const/4 v2, 0x0

    .local v2, result:Ljava/lang/Object;
    goto :goto_1
.end method

.method static readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 11
    .parameter "reader"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 91
    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 94
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 137
    .end local p0
    :goto_0
    return-object p0

    .line 98
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v5

    .line 99
    .local v5, port:Lgnu/text/LineBufferedReader;
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v7

    .line 100
    .local v7, saveReadState:C
    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v9

    .line 101
    .local v9, startLine:I
    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v8

    .line 104
    .local v8, startColumn:I
    :try_start_0
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v2, "values"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 106
    .local v0, valuesMake:Lgnu/expr/PrimProcedure;
    invoke-virtual {p0, v0, v9, v8}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v4

    .line 107
    .local v4, list:Lgnu/lists/Pair;
    move-object v0, v4

    .line 108
    .local v0, last:Lgnu/lists/Pair;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v6

    .local v6, readTable:Lgnu/kawa/lispexpr/ReadTable;
    move-object v2, v0

    .line 111
    .end local v0           #last:Lgnu/lists/Pair;
    .local v2, last:Lgnu/lists/Pair;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    .line 112
    .local v3, line:I
    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    .line 113
    .local v0, column:I
    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result p1

    .line 114
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 131
    .end local v0           #column:I
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_4

    .line 132
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 137
    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object p0, v0

    goto :goto_0

    .line 116
    .restart local v0       #column:I
    :cond_2
    if-gez p1, :cond_3

    .line 117
    :try_start_1
    const-string v1, "unexpected EOF in list starting here"

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p0, v1, v10, v8}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 119
    :cond_3
    invoke-virtual {v6, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .line 120
    .local v1, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {p0, p1, v1, v6}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, value:Ljava/lang/Object;
    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v10, :cond_1

    .line 123
    invoke-virtual {p0, v1, v6, v3, v0}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1, v3, v0}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v0

    .line 126
    .local v0, pair:Lgnu/lists/Pair;
    invoke-virtual {p0, v2, v0}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    move-object v0, v0

    .end local v2           #last:Lgnu/lists/Pair;
    .local v0, last:Lgnu/lists/Pair;
    move-object v2, v0

    .line 128
    .end local v0           #last:Lgnu/lists/Pair;
    .restart local v2       #last:Lgnu/lists/Pair;
    goto :goto_1

    .line 137
    .end local v1           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    move-object p0, v4

    goto :goto_0

    .end local v2           #last:Lgnu/lists/Pair;
    .end local v3           #line:I
    .end local v4           #list:Lgnu/lists/Pair;
    .end local v6           #readTable:Lgnu/kawa/lispexpr/ReadTable;
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    throw v0
.end method

.method public static readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 13
    .parameter "reader"
    .parameter "ch"
    .parameter "forElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 38
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, file:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v9

    add-int/lit8 v3, v9, 0x1

    .line 40
    .local v3, line:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v1

    .line 41
    .local v1, column:I
    iput v12, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 42
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 44
    const/4 v0, -0x1

    .line 47
    .local v0, colon:I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 48
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 49
    const/16 v9, 0x3a

    if-ne p1, v9, :cond_1

    if-gez v0, :cond_1

    .line 50
    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 57
    if-gez v0, :cond_2

    if-eqz p2, :cond_4

    .line 59
    :cond_2
    iget v9, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v9, v0

    const/4 v10, 0x1

    sub-int v4, v9, v10

    .line 60
    .local v4, llen:I
    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v11, v0, 0x1

    invoke-direct {v9, v10, v11, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, local:Ljava/lang/String;
    if-gez v0, :cond_3

    const-string v9, "[default-element-namespace]"

    move-object v6, v9

    .line 64
    .local v6, prefix:Ljava/lang/String;
    :goto_1
    sget-object v9, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v9, v6}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 66
    .local v7, psym:Lgnu/mapping/Symbol;
    new-instance v9, Lgnu/lists/Pair;

    sget-object v10, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    new-instance v11, Lgnu/lists/Pair;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v11, v5, v12}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12, v3, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .end local v0           #colon:I
    .end local v4           #llen:I
    .end local v5           #local:Ljava/lang/String;
    .end local v6           #prefix:Ljava/lang/String;
    .end local v7           #psym:Lgnu/mapping/Symbol;
    :goto_2
    return-object v9

    .line 62
    .restart local v0       #colon:I
    .restart local v4       #llen:I
    .restart local v5       #local:Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v9, v10, v12, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_1

    .line 73
    .end local v4           #llen:I
    .end local v5           #local:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    .line 74
    .local v8, symbol:Lgnu/mapping/Symbol;
    invoke-static {v8}, Lgnu/kawa/lispexpr/ReaderXmlElement;->quote(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v9

    goto :goto_2

    .line 77
    .end local v0           #colon:I
    .end local v8           #symbol:Lgnu/mapping/Symbol;
    :cond_5
    const/16 v9, 0x7b

    if-eq p1, v9, :cond_6

    const/16 v9, 0x28

    if-ne p1, v9, :cond_7

    .line 79
    :cond_6
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 83
    :cond_7
    const-string v9, "missing element name"

    invoke-virtual {p0, v9}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 84
    const/4 v9, 0x0

    goto :goto_2
.end method

.method static readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 8
    .parameter "reader"
    .parameter "next"
    .parameter "inElementContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result p2

    .end local p2
    add-int/lit8 v3, p2, 0x1

    .line 151
    .local v3, startLine:I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result p2

    const/4 v0, 0x2

    sub-int v4, p2, v0

    .line 152
    .local v4, startColumn:I
    const/16 p2, 0x21

    if-ne p1, p2, :cond_5

    .line 154
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 155
    const/16 p2, 0x2d

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result p1

    const/16 p2, 0x2d

    if-ne p1, p2, :cond_1

    .line 157
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 158
    const-string p2, "-->"

    invoke-virtual {p0, p2}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 159
    const/16 v1, 0x66

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "unexpected end-of-file in XML comment starting here - expected \"-->\""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 161
    .local p0, str:Ljava/lang/String;
    sget-object p2, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    invoke-static {p2, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 227
    .end local p0           #str:Ljava/lang/String;
    :goto_0
    return-object p0

    .line 163
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    :cond_1
    const/16 p2, 0x5b

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x43

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x44

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x41

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x54

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x41

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    const/16 p2, 0x5b

    if-ne p1, p2, :cond_3

    .line 171
    const-string p2, "]]>"

    invoke-virtual {p0, p2}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 172
    const/16 v1, 0x66

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "unexpected end-of-file in CDATA starting here - expected \"]]>\""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    :cond_2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 175
    .local p0, str:Ljava/lang/String;
    sget-object p2, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    invoke-static {p2, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 176
    .local p0, exp:Lgnu/lists/Pair;
    goto :goto_0

    .line 179
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    :cond_3
    const/16 v1, 0x66

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 182
    :goto_1
    if-ltz p1, :cond_4

    const/16 p2, 0x3e

    if-eq p1, p2, :cond_4

    const/16 p2, 0xa

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    .line 184
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_1

    .line 186
    :cond_4
    const/4 p0, 0x0

    .local p0, exp:Ljava/lang/Object;
    goto :goto_0

    .line 189
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    :cond_5
    const/16 p2, 0x3f

    if-ne p1, p2, :cond_b

    .line 191
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 192
    if-ltz p1, :cond_6

    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 193
    :cond_6
    const-string p2, "missing target after \'<?\'"

    invoke-virtual {p0, p2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 196
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 197
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 198
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 201
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, target:Ljava/lang/String;
    const/4 p2, 0x0

    .line 203
    .local p2, nspaces:I
    :goto_2
    if-ltz p1, :cond_8

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    add-int/lit8 p2, p2, 0x1

    .line 206
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_2

    .line 208
    :cond_8
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 209
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v6

    .line 212
    .local v6, saveReadState:C
    :try_start_0
    const-string v0, "?>"

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 213
    const/16 v1, 0x66

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "unexpected end-of-file looking for \"?>\""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_9
    invoke-virtual {p0, v6}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    .line 220
    if-nez p2, :cond_a

    iget p2, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .end local p2           #nspaces:I
    if-lez p2, :cond_a

    .line 221
    const-string p2, "target must be followed by space or \'?>\'"

    invoke-virtual {p0, p2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 222
    :cond_a
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object p0

    .line 223
    .local p0, content:Ljava/lang/String;
    sget-object p2, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    invoke-static {p2, v7, p0}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    .line 224
    .local p0, exp:Lgnu/lists/Pair;
    goto/16 :goto_0

    .line 218
    .local p0, reader:Lgnu/kawa/lispexpr/LispReader;
    .restart local p2       #nspaces:I
    :catchall_0
    move-exception p1

    .end local p1
    invoke-virtual {p0, v6}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    throw p1

    .line 226
    .end local v6           #saveReadState:C
    .end local v7           #target:Ljava/lang/String;
    .end local p2           #nspaces:I
    .restart local p1
    :cond_b
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object p0

    .local p0, exp:Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method static skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I
    .locals 1
    .parameter "reader"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 566
    :goto_0
    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    return p1

    .line 568
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    goto :goto_0
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 18
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v1, v0

    .line 19
    .local v1, reader:Lgnu/kawa/lispexpr/LispReader;
    invoke-virtual {v1}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
