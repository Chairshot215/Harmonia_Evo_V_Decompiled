.class public abstract Lcom/futuredial/vxx/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# static fields
.field public static DEFAULT_CHARSET:Ljava/lang/String;


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Lcom/futuredial/vxx/VBuilder;

.field protected final mDefaultEncoding:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "ISO-8859-1"

    sput-object v0, Lcom/futuredial/vxx/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    .line 42
    iput-object v0, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/futuredial/vxx/VParser;->PARSE_ERROR:I

    .line 46
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/futuredial/vxx/VParser;->mDefaultEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "offset"

    .prologue
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v1, word:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 523
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1

    .line 524
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    add-int/lit8 p1, p1, 0x1

    .line 529
    goto :goto_0

    .line 530
    .end local v0           #ch:C
    :catch_0
    move-exception v2

    .line 533
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 509
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 510
    :cond_1
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLetterOrDigit(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 487
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v0

    .line 489
    :cond_1
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 491
    :cond_2
    const/16 v1, 0x41

    if-lt p1, v1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 493
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrintable(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 500
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    .line 501
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;Lcom/futuredial/vxx/VBuilder;)Z
    .locals 1
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Lcom/futuredial/vxx/VParser;->DEFAULT_CHARSET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/futuredial/vxx/VParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/futuredial/vxx/VBuilder;)Z
    .locals 4
    .parameter "is"
    .parameter "encoding"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/futuredial/vxx/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    iput-object p3, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    .line 81
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 83
    .local v2, sum:I
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->start()V

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/VParser;->parseVFile(I)I

    move-result v1

    .line 88
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2

    .line 95
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuilder:Lcom/futuredial/vxx/VBuilder;

    invoke-interface {v3}, Lcom/futuredial/vxx/VBuilder;->end()V

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 91
    :cond_2
    add-int/2addr v0, v1

    .line 92
    add-int/2addr v2, v1

    goto :goto_0

    .line 98
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected parse8bit(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, index:I
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 313
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 316
    .end local v0           #index:I
    :cond_0
    return v0
.end method

.method protected parseBase64(I)I
    .locals 6
    .parameter "offset"

    .prologue
    .line 429
    const/4 v3, 0x0

    .line 433
    .local v3, sum:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 435
    .local v0, ch:C
    const/16 v4, 0xd

    if-ne v0, v4, :cond_0

    .line 436
    const-string v4, "\r\n\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 437
    .local v2, ret:I
    add-int/2addr v3, v2

    .line 448
    add-int/lit8 v3, v3, -0x2

    move v4, v3

    .line 449
    .end local v0           #ch:C
    .end local v2           #ret:I
    :goto_1
    return v4

    .line 441
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 442
    add-int/lit8 p1, p1, 0x1

    .line 444
    goto :goto_0

    .line 445
    .end local v0           #ch:C
    :catch_0
    move-exception v1

    .line 446
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected parseCharsetVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 631
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 633
    .local v1, sum:I
    const-string v3, "us-ascii"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 634
    if-eq v0, v2, :cond_1

    .line 635
    add-int/2addr v1, v0

    move v2, v1

    .line 711
    :cond_0
    :goto_0
    return v2

    .line 639
    :cond_1
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 640
    if-eq v0, v2, :cond_2

    .line 641
    add-int/2addr v1, v0

    move v2, v1

    .line 642
    goto :goto_0

    .line 645
    :cond_2
    const-string v3, "iso-8859-2"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 646
    if-eq v0, v2, :cond_3

    .line 647
    add-int/2addr v1, v0

    move v2, v1

    .line 648
    goto :goto_0

    .line 651
    :cond_3
    const-string v3, "iso-8859-3"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 652
    if-eq v0, v2, :cond_4

    .line 653
    add-int/2addr v1, v0

    move v2, v1

    .line 654
    goto :goto_0

    .line 657
    :cond_4
    const-string v3, "iso-8859-4"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 658
    if-eq v0, v2, :cond_5

    .line 659
    add-int/2addr v1, v0

    move v2, v1

    .line 660
    goto :goto_0

    .line 663
    :cond_5
    const-string v3, "iso-8859-5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 664
    if-eq v0, v2, :cond_6

    .line 665
    add-int/2addr v1, v0

    move v2, v1

    .line 666
    goto :goto_0

    .line 669
    :cond_6
    const-string v3, "iso-8859-6"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 670
    if-eq v0, v2, :cond_7

    .line 671
    add-int/2addr v1, v0

    move v2, v1

    .line 672
    goto :goto_0

    .line 675
    :cond_7
    const-string v3, "iso-8859-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 676
    if-eq v0, v2, :cond_8

    .line 677
    add-int/2addr v1, v0

    move v2, v1

    .line 678
    goto :goto_0

    .line 681
    :cond_8
    const-string v3, "iso-8859-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 682
    if-eq v0, v2, :cond_9

    .line 683
    add-int/2addr v1, v0

    move v2, v1

    .line 684
    goto :goto_0

    .line 687
    :cond_9
    const-string v3, "iso-8859-9"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 688
    if-eq v0, v2, :cond_a

    .line 689
    add-int/2addr v1, v0

    move v2, v1

    .line 690
    goto :goto_0

    .line 693
    :cond_a
    const-string v3, "UTF-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 694
    if-eq v0, v2, :cond_b

    .line 695
    add-int/2addr v1, v0

    move v2, v1

    .line 696
    goto :goto_0

    .line 699
    :cond_b
    const-string v3, "UTF-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 700
    if-eq v0, v2, :cond_c

    .line 701
    add-int/2addr v1, v0

    move v2, v1

    .line 702
    goto :goto_0

    .line 705
    :cond_c
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseXWord(I)I

    move-result v0

    .line 706
    if-eq v0, v2, :cond_0

    .line 707
    add-int/2addr v1, v0

    move v2, v1

    .line 708
    goto/16 :goto_0
.end method

.method protected parseCrlf(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 52
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    .local v0, ch:C
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 58
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 59
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected parseLangVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 719
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 721
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseTag(I)I

    move-result v0

    .line 722
    if-ne v2, v0, :cond_0

    .line 743
    :goto_0
    return v2

    .line 725
    :cond_0
    add-int/2addr p1, v0

    .line 726
    add-int/2addr v1, v0

    .line 729
    :goto_1
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 730
    if-ne v2, v0, :cond_2

    :cond_1
    move v2, v1

    .line 743
    goto :goto_0

    .line 733
    :cond_2
    add-int/2addr p1, v0

    .line 734
    add-int/2addr v1, v0

    .line 736
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseTag(I)I

    move-result v0

    .line 737
    if-eq v2, v0, :cond_1

    .line 740
    add-int/2addr p1, v0

    .line 741
    add-int/2addr v1, v0

    goto :goto_1
.end method

.method protected parseOctet(I)I
    .locals 11
    .parameter "offset"

    .prologue
    const/16 v10, 0x39

    const/16 v9, 0x30

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 379
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v4, 0x0

    .line 381
    .local v4, sum:I
    const-string v6, "="

    invoke-virtual {p0, p1, v6, v7}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 382
    if-ne v5, v1, :cond_1

    const-string v6, "\r"

    invoke-virtual {p0, p1, v6, v7}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v6

    if-ne v6, v5, :cond_1

    const-string v6, "\n"

    invoke-virtual {p0, p1, v6, v7}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 386
    iget-object v5, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, strLeft:Ljava/lang/String;
    iget-object v5, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, strRight:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    move v5, v4

    .line 421
    .end local v2           #strLeft:Ljava/lang/String;
    .end local v3           #strRight:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 391
    :cond_1
    if-eq v5, v1, :cond_0

    .line 393
    add-int/2addr p1, v1

    .line 394
    add-int/2addr v4, v1

    .line 397
    :try_start_0
    iget-object v6, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 398
    .local v0, ch:I
    if-eq v0, v8, :cond_2

    const/16 v6, 0x9

    if-ne v0, v6, :cond_3

    .line 399
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    goto :goto_0

    .line 400
    :cond_3
    if-lt v0, v9, :cond_4

    if-le v0, v10, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v0, v6, :cond_0

    const/16 v6, 0x46

    if-gt v0, v6, :cond_0

    .line 401
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 402
    add-int/lit8 v4, v4, 0x1

    .line 403
    iget-object v6, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 404
    if-lt v0, v9, :cond_6

    if-le v0, v10, :cond_7

    :cond_6
    const/16 v6, 0x41

    if-lt v0, v6, :cond_8

    const/16 v6, 0x46

    if-gt v0, v6, :cond_8

    .line 405
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 406
    goto :goto_0

    .line 408
    :cond_8
    const/16 v6, 0x3d

    if-ne v0, v6, :cond_0

    .line 409
    add-int/lit8 p1, p1, 0x1

    .line 410
    add-int/lit8 v4, v4, 0x1

    .line 411
    iget-object v6, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 412
    if-ne v0, v8, :cond_0

    .line 413
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 414
    goto :goto_0

    .line 418
    .end local v0           #ch:I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected parsePEncodingVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 586
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 588
    .local v1, sum:I
    const-string v3, "7BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 589
    if-eq v0, v2, :cond_1

    .line 590
    const-string v2, "7BIT"

    iput-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 591
    add-int/2addr v1, v0

    move v2, v1

    .line 623
    :cond_0
    :goto_0
    return v2

    .line 595
    :cond_1
    const-string v3, "8BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 596
    if-eq v0, v2, :cond_2

    .line 597
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 598
    add-int/2addr v1, v0

    move v2, v1

    .line 599
    goto :goto_0

    .line 602
    :cond_2
    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 603
    if-eq v0, v2, :cond_3

    .line 604
    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 605
    add-int/2addr v1, v0

    move v2, v1

    .line 606
    goto :goto_0

    .line 609
    :cond_3
    const-string v3, "BASE64"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 610
    if-eq v0, v2, :cond_4

    .line 611
    const-string v2, "BASE64"

    iput-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 612
    add-int/2addr v1, v0

    move v2, v1

    .line 613
    goto :goto_0

    .line 616
    :cond_4
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseXWord(I)I

    move-result v0

    .line 617
    if-eq v0, v2, :cond_0

    .line 618
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    .line 619
    add-int/2addr v1, v0

    move v2, v1

    .line 620
    goto :goto_0
.end method

.method protected parsePValueVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 540
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 542
    .local v1, sum:I
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 543
    if-eq v0, v2, :cond_1

    .line 544
    add-int/2addr v1, v0

    move v2, v1

    .line 578
    :cond_0
    :goto_0
    return v2

    .line 548
    :cond_1
    const-string v3, "URL"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 549
    if-eq v0, v2, :cond_2

    .line 550
    add-int/2addr v1, v0

    move v2, v1

    .line 551
    goto :goto_0

    .line 554
    :cond_2
    const-string v3, "CONTENT-ID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 555
    if-eq v0, v2, :cond_3

    .line 556
    add-int/2addr v1, v0

    move v2, v1

    .line 557
    goto :goto_0

    .line 560
    :cond_3
    const-string v3, "CID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 561
    if-eq v0, v2, :cond_4

    .line 562
    add-int/2addr v1, v0

    move v2, v1

    .line 563
    goto :goto_0

    .line 566
    :cond_4
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 567
    if-eq v0, v2, :cond_5

    .line 568
    add-int/2addr v1, v0

    move v2, v1

    .line 569
    goto :goto_0

    .line 572
    :cond_5
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseXWord(I)I

    move-result v0

    .line 573
    if-eq v0, v2, :cond_0

    .line 574
    add-int/2addr v1, v0

    move v2, v1

    .line 575
    goto :goto_0
.end method

.method protected parsePtext(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 356
    const/4 v2, 0x0

    .line 359
    .local v2, ret:I
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 360
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/VParser;->isPrintable(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x3d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    .line 361
    const/4 v3, 0x1

    .line 371
    .end local v0           #ch:C
    :cond_0
    :goto_0
    return v3

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 367
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #ch:C
    :cond_1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseOctet(I)I

    move-result v2

    .line 368
    if-eq v2, v3, :cond_0

    move v3, v2

    .line 369
    goto :goto_0
.end method

.method protected parseQuotedPrintable(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 325
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 327
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->removeWs(I)I

    move-result v0

    .line 328
    add-int/2addr p1, v0

    .line 329
    add-int/2addr v1, v0

    .line 332
    :goto_0
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parsePtext(I)I

    move-result v0

    .line 333
    if-ne v4, v0, :cond_1

    .line 343
    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 344
    if-eq v0, v4, :cond_0

    .line 346
    add-int/2addr v1, v0

    .line 349
    :cond_0
    return v1

    .line 335
    :cond_1
    add-int/2addr p1, v0

    .line 336
    add-int/2addr v1, v0

    .line 338
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->removeWs(I)I

    move-result v0

    .line 339
    add-int/2addr p1, v0

    .line 340
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method protected parseString(ILjava/lang/String;Z)I
    .locals 6
    .parameter "offset"
    .parameter "tar"
    .parameter "ignoreCase"

    .prologue
    const/4 v3, -0x1

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, sum:I
    if-nez p2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 213
    :cond_1
    if-eqz p3, :cond_2

    .line 214
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, len:I
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    move v2, v1

    .end local v1           #len:I
    :goto_1
    move v3, v2

    .line 233
    goto :goto_0

    .line 222
    .restart local v1       #len:I
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #len:I
    :cond_2
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method protected parseTag(I)I
    .locals 4
    .parameter "offset"

    .prologue
    .line 750
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 753
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 754
    :try_start_0
    iget-object v3, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 755
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/VParser;->isLetter(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 764
    .end local v0           #ch:C
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 765
    const/4 v2, -0x1

    .line 767
    .end local v2           #sum:I
    :cond_1
    return v2

    .line 758
    .restart local v0       #ch:C
    .restart local v2       #sum:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 759
    add-int/lit8 p1, p1, 0x1

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    .end local v0           #ch:C
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected abstract parseVFile(I)I
.end method

.method protected parseValue(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, ret:I
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parse8bit(I)I

    move-result v0

    .line 281
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 302
    :cond_1
    :goto_0
    return v1

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 288
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseQuotedPrintable(I)I

    move-result v0

    .line 289
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 290
    goto :goto_0

    .line 295
    :cond_3
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseBase64(I)I

    move-result v0

    .line 297
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 298
    goto :goto_0
.end method

.method protected parseWord(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/16 v4, 0x3b

    .line 456
    const/4 v1, 0x0

    .line 459
    .local v1, sum:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 460
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/futuredial/vxx/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    .end local v0           #ch:C
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 479
    const/4 v1, -0x1

    .line 480
    .end local v1           #sum:I
    :cond_1
    return v1

    .line 462
    .restart local v0       #ch:C
    .restart local v1       #sum:I
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    .line 465
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3

    .line 466
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 467
    if-ne v0, v4, :cond_3

    .line 468
    add-int/lit8 p1, p1, 0x1

    .line 469
    add-int/lit8 v1, v1, 0x1

    .line 472
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 473
    add-int/lit8 v1, v1, 0x1

    .line 474
    goto :goto_0

    .line 475
    .end local v0           #ch:C
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected parseWsls(I)I
    .locals 7
    .parameter "offset"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x9

    const/4 v3, -0x1

    .line 162
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 165
    .local v2, sum:I
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 166
    .local v0, ch:C
    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_2

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 168
    add-int/lit8 p1, p1, 0x1

    .line 176
    :goto_0
    iget-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_3

    .line 178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 179
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 170
    add-int/2addr p1, v1

    .line 171
    add-int/2addr v2, v1

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseCrlf(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v1, v3, :cond_4

    .line 181
    add-int/2addr p1, v1

    .line 182
    add-int/2addr v2, v1

    goto :goto_0

    .line 187
    .end local v0           #ch:C
    :catch_0
    move-exception v4

    .line 190
    :cond_4
    if-lez v2, :cond_5

    move v3, v2

    .line 192
    :cond_5
    return v3
.end method

.method protected parseXWord(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 255
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 256
    .local v1, sum:I
    const-string v3, "X-"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/futuredial/vxx/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 257
    if-ne v2, v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    add-int/2addr p1, v0

    .line 260
    add-int/2addr v1, v0

    .line 262
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/VParser;->parseWord(I)I

    move-result v0

    .line 263
    if-eq v2, v0, :cond_0

    .line 266
    add-int/2addr v1, v0

    move v2, v1

    .line 267
    goto :goto_0
.end method

.method protected removeWs(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 241
    const/4 v1, -0x1

    .line 248
    :cond_0
    return v1

    .line 242
    :cond_1
    const/4 v1, 0x0

    .line 244
    .local v1, sum:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 245
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 120
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 121
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v5, :cond_2

    .line 126
    const/16 v4, 0xd

    if-ne v1, v4, :cond_4

    .line 127
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 128
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    .line 129
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 130
    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 131
    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    .end local v1           #ch:I
    :catch_0
    move-exception v2

    .line 148
    :goto_1
    return-void

    .line 134
    .restart local v1       #ch:I
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    if-ne v1, v5, :cond_4

    .line 144
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/futuredial/vxx/VParser;->mBuffer:Ljava/lang/String;

    goto :goto_1

    .line 139
    :cond_3
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
