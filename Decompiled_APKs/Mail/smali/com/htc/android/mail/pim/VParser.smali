.class public abstract Lcom/htc/android/mail/pim/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Lcom/htc/android/mail/pim/VBuilder;

.field protected final mDefaultEncoding:Ljava/lang/String;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    .line 38
    iput-object v0, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/pim/VParser;->PARSE_ERROR:I

    .line 42
    const-string v0, "8BIT"

    iput-object v0, p0, Lcom/htc/android/mail/pim/VParser;->mDefaultEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .locals 3
    .parameter "offset"

    .prologue
    .line 622
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v1, word:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 626
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1

    .line 627
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    add-int/lit8 p1, p1, 0x1

    .line 632
    goto :goto_0

    .line 633
    .end local v0           #ch:C
    :catch_0
    move-exception v2

    .line 636
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 612
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 613
    :cond_1
    const/4 v0, 0x1

    .line 615
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

    .line 590
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 592
    :cond_1
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 594
    :cond_2
    const/16 v1, 0x41

    if-lt p1, v1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 596
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrintable(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 603
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 605
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/htc/android/mail/pim/VBuilder;)Z
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
    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/pim/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    iput-object p3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    .line 77
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 79
    .local v2, sum:I
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->start()V

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->parseVFile(I)I

    move-result v1

    .line 84
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2

    .line 91
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->end()V

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 87
    :cond_2
    add-int/2addr v0, v1

    .line 88
    add-int/2addr v2, v1

    goto :goto_0

    .line 94
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public parse(Ljava/lang/String;Lcom/htc/android/mail/pim/VBuilder;)Z
    .locals 4
    .parameter "vcard"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->setInputStream(Ljava/lang/String;)V

    .line 100
    iput-object p2, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    .line 101
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v0, 0x0

    .local v0, offset:I
    const/4 v2, 0x0

    .line 103
    .local v2, sum:I
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->start()V

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->parseVFile(I)I

    move-result v1

    .line 108
    const/4 v3, -0x1

    if-ne v3, v1, :cond_2

    .line 115
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuilder:Lcom/htc/android/mail/pim/VBuilder;

    invoke-interface {v3}, Lcom/htc/android/mail/pim/VBuilder;->end()V

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 111
    :cond_2
    add-int/2addr v0, v1

    .line 112
    add-int/2addr v2, v1

    goto :goto_0

    .line 118
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected parse8bit(I)I
    .locals 4
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 350
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 353
    .end local v0           #index:I
    :cond_0
    return v0
.end method

.method protected parseBase64(I)I
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 517
    const/4 v4, 0x0

    .line 518
    .local v4, sum:I
    const-string v6, "\r\n"

    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v2

    .line 519
    .local v2, errhandleret:I
    if-eq v2, v5, :cond_0

    move v5, v4

    .line 552
    :goto_0
    return v5

    .line 525
    :cond_0
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 527
    .local v0, ch:C
    const/16 v6, 0xd

    if-ne v0, v6, :cond_2

    .line 528
    const-string v6, "\r\n\r\n"

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 529
    .local v3, ret:I
    if-ne v3, v5, :cond_1

    .line 531
    add-int/lit8 p1, p1, 0x1

    .line 532
    add-int/lit8 v4, v4, 0x1

    .line 533
    goto :goto_1

    .line 536
    :cond_1
    add-int/2addr v4, v3

    .line 551
    add-int/lit8 v4, v4, -0x2

    move v5, v4

    .line 552
    goto :goto_0

    .line 539
    .end local v3           #ret:I
    :cond_2
    const/16 v6, 0xa

    if-ne v0, v6, :cond_3

    .line 540
    add-int/lit8 p1, p1, 0x1

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 544
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 545
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 548
    .end local v0           #ch:C
    :catch_0
    move-exception v1

    .line 549
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method protected parseCharsetVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 734
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 736
    .local v1, sum:I
    const-string v3, "us-ascii"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 737
    if-eq v0, v2, :cond_1

    .line 738
    add-int/2addr v1, v0

    move v2, v1

    .line 826
    :cond_0
    :goto_0
    return v2

    .line 742
    :cond_1
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 743
    if-eq v0, v2, :cond_2

    .line 744
    add-int/2addr v1, v0

    move v2, v1

    .line 745
    goto :goto_0

    .line 748
    :cond_2
    const-string v3, "iso-8859-2"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 749
    if-eq v0, v2, :cond_3

    .line 750
    add-int/2addr v1, v0

    move v2, v1

    .line 751
    goto :goto_0

    .line 754
    :cond_3
    const-string v3, "iso-8859-3"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 755
    if-eq v0, v2, :cond_4

    .line 756
    add-int/2addr v1, v0

    move v2, v1

    .line 757
    goto :goto_0

    .line 760
    :cond_4
    const-string v3, "iso-8859-4"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 761
    if-eq v0, v2, :cond_5

    .line 762
    add-int/2addr v1, v0

    move v2, v1

    .line 763
    goto :goto_0

    .line 766
    :cond_5
    const-string v3, "iso-8859-5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 767
    if-eq v0, v2, :cond_6

    .line 768
    add-int/2addr v1, v0

    move v2, v1

    .line 769
    goto :goto_0

    .line 772
    :cond_6
    const-string v3, "iso-8859-6"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 773
    if-eq v0, v2, :cond_7

    .line 774
    add-int/2addr v1, v0

    move v2, v1

    .line 775
    goto :goto_0

    .line 778
    :cond_7
    const-string v3, "iso-8859-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 779
    if-eq v0, v2, :cond_8

    .line 780
    add-int/2addr v1, v0

    move v2, v1

    .line 781
    goto :goto_0

    .line 784
    :cond_8
    const-string v3, "iso-8859-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 785
    if-eq v0, v2, :cond_9

    .line 786
    add-int/2addr v1, v0

    move v2, v1

    .line 787
    goto :goto_0

    .line 790
    :cond_9
    const-string v3, "iso-8859-9"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 791
    if-eq v0, v2, :cond_a

    .line 792
    add-int/2addr v1, v0

    move v2, v1

    .line 793
    goto :goto_0

    .line 796
    :cond_a
    const-string v3, "UTF-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 797
    if-eq v0, v2, :cond_b

    .line 798
    add-int/2addr v1, v0

    move v2, v1

    .line 799
    goto :goto_0

    .line 802
    :cond_b
    const-string v3, "BIG5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 803
    if-eq v0, v2, :cond_c

    .line 804
    add-int/2addr v1, v0

    move v2, v1

    .line 805
    goto :goto_0

    .line 808
    :cond_c
    const-string v3, "SHIFT_JIS"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 809
    if-eq v0, v2, :cond_d

    .line 810
    add-int/2addr v1, v0

    move v2, v1

    .line 811
    goto/16 :goto_0

    .line 814
    :cond_d
    const-string v3, "GBK"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 815
    if-eq v0, v2, :cond_e

    .line 816
    add-int/2addr v1, v0

    move v2, v1

    .line 817
    goto/16 :goto_0

    .line 820
    :cond_e
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 821
    if-eq v0, v2, :cond_0

    .line 822
    add-int/2addr v1, v0

    move v2, v1

    .line 823
    goto/16 :goto_0
.end method

.method protected parseCrlf(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 48
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 51
    .local v0, ch:C
    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 55
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected parseLangVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 834
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 836
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseTag(I)I

    move-result v0

    .line 837
    if-ne v2, v0, :cond_0

    .line 858
    :goto_0
    return v2

    .line 840
    :cond_0
    add-int/2addr p1, v0

    .line 841
    add-int/2addr v1, v0

    .line 844
    :goto_1
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 845
    if-ne v2, v0, :cond_2

    :cond_1
    move v2, v1

    .line 858
    goto :goto_0

    .line 848
    :cond_2
    add-int/2addr p1, v0

    .line 849
    add-int/2addr v1, v0

    .line 851
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseTag(I)I

    move-result v0

    .line 852
    if-eq v2, v0, :cond_1

    .line 855
    add-int/2addr p1, v0

    .line 856
    add-int/2addr v1, v0

    goto :goto_1
.end method

.method protected parseOctet(I)I
    .locals 9
    .parameter "offset"

    .prologue
    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v5, 0x0

    const/4 v3, -0x1

    .line 416
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 418
    .local v2, sum:I
    const-string v4, "=\n"

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 419
    if-eq v3, v1, :cond_0

    .line 420
    add-int/2addr p1, v1

    .line 421
    add-int/2addr v2, v1

    .line 422
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->removeWs(I)I

    move-result v1

    .line 423
    add-int/2addr p1, v1

    .line 424
    add-int/2addr v2, v1

    .line 426
    :cond_0
    const-string v4, "=\r\n"

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 427
    if-eq v3, v1, :cond_2

    .line 428
    add-int/2addr p1, v1

    .line 429
    add-int/2addr v2, v1

    .line 430
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->removeWs(I)I

    move-result v1

    .line 431
    add-int/2addr p1, v1

    .line 432
    add-int/2addr v2, v1

    move v3, v2

    .line 509
    :cond_1
    :goto_0
    return v3

    .line 447
    :cond_2
    const-string v4, "==\r\n"

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 448
    if-eq v3, v1, :cond_3

    .line 449
    add-int/2addr p1, v1

    .line 450
    add-int/2addr v2, v1

    .line 451
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->removeWs(I)I

    move-result v1

    .line 452
    add-int/2addr p1, v1

    .line 453
    add-int/2addr v2, v1

    move v3, v2

    .line 454
    goto :goto_0

    .line 474
    :cond_3
    const-string v4, "="

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    .line 475
    if-eq v3, v1, :cond_1

    .line 477
    add-int/2addr p1, v1

    .line 478
    add-int/2addr v2, v1

    .line 481
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    .local v0, ch:I
    const/16 v4, 0x20

    if-eq v0, v4, :cond_4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_5

    .line 483
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    .line 484
    :cond_5
    if-lt v0, v6, :cond_6

    if-le v0, v7, :cond_7

    :cond_6
    if-lt v0, v8, :cond_1

    const/16 v4, 0x46

    if-gt v0, v4, :cond_1

    .line 485
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 486
    add-int/lit8 v2, v2, 0x1

    .line 487
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    if-lt v0, v6, :cond_8

    if-le v0, v7, :cond_9

    :cond_8
    if-lt v0, v8, :cond_a

    const/16 v4, 0x46

    if-gt v0, v4, :cond_a

    .line 489
    :cond_9
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 490
    goto :goto_0

    .line 493
    :cond_a
    const-string v4, "=\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    if-eq v1, v3, :cond_1

    .line 495
    add-int/2addr p1, v1

    .line 496
    add-int/2addr v2, v1

    move v3, v2

    .line 497
    goto :goto_0

    .line 506
    .end local v0           #ch:I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected parsePEncodingVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 689
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 691
    .local v1, sum:I
    const-string v3, "7BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 692
    if-eq v0, v2, :cond_1

    .line 693
    const-string v2, "7BIT"

    iput-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 694
    add-int/2addr v1, v0

    move v2, v1

    .line 726
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    const-string v3, "8BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 699
    if-eq v0, v2, :cond_2

    .line 700
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 701
    add-int/2addr v1, v0

    move v2, v1

    .line 702
    goto :goto_0

    .line 705
    :cond_2
    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 706
    if-eq v0, v2, :cond_3

    .line 707
    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 708
    add-int/2addr v1, v0

    move v2, v1

    .line 709
    goto :goto_0

    .line 712
    :cond_3
    const-string v3, "BASE64"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 713
    if-eq v0, v2, :cond_4

    .line 714
    const-string v2, "BASE64"

    iput-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 715
    add-int/2addr v1, v0

    move v2, v1

    .line 716
    goto :goto_0

    .line 719
    :cond_4
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 720
    if-eq v0, v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    .line 722
    add-int/2addr v1, v0

    move v2, v1

    .line 723
    goto :goto_0
.end method

.method protected parsePValueVal(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 643
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 645
    .local v1, sum:I
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 646
    if-eq v0, v2, :cond_1

    .line 647
    add-int/2addr v1, v0

    move v2, v1

    .line 681
    :cond_0
    :goto_0
    return v2

    .line 651
    :cond_1
    const-string v3, "URL"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 652
    if-eq v0, v2, :cond_2

    .line 653
    add-int/2addr v1, v0

    move v2, v1

    .line 654
    goto :goto_0

    .line 657
    :cond_2
    const-string v3, "CONTENT-ID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 658
    if-eq v0, v2, :cond_3

    .line 659
    add-int/2addr v1, v0

    move v2, v1

    .line 660
    goto :goto_0

    .line 663
    :cond_3
    const-string v3, "CID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 664
    if-eq v0, v2, :cond_4

    .line 665
    add-int/2addr v1, v0

    move v2, v1

    .line 666
    goto :goto_0

    .line 669
    :cond_4
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 670
    if-eq v0, v2, :cond_5

    .line 671
    add-int/2addr v1, v0

    move v2, v1

    .line 672
    goto :goto_0

    .line 675
    :cond_5
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseXWord(I)I

    move-result v0

    .line 676
    if-eq v0, v2, :cond_0

    .line 677
    add-int/2addr v1, v0

    move v2, v1

    .line 678
    goto :goto_0
.end method

.method protected parsePtext(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v3, -0x1

    .line 393
    const/4 v2, 0x0

    .line 396
    .local v2, ret:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 397
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->isPrintable(C)Z
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

    .line 398
    const/4 v3, 0x1

    .line 408
    .end local v0           #ch:C
    :cond_0
    :goto_0
    return v3

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 404
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v0       #ch:C
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseOctet(I)I

    move-result v2

    .line 405
    if-eq v2, v3, :cond_0

    move v3, v2

    .line 406
    goto :goto_0
.end method

.method protected parseQuotedPrintable(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v4, -0x1

    .line 362
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 364
    .local v1, sum:I
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->removeWs(I)I

    move-result v0

    .line 365
    add-int/2addr p1, v0

    .line 366
    add-int/2addr v1, v0

    .line 369
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parsePtext(I)I

    move-result v0

    .line 370
    if-ne v4, v0, :cond_1

    .line 380
    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 381
    if-eq v0, v4, :cond_0

    .line 383
    add-int/2addr v1, v0

    .line 386
    :cond_0
    return v1

    .line 372
    :cond_1
    add-int/2addr p1, v0

    .line 373
    add-int/2addr v1, v0

    .line 375
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->removeWs(I)I

    move-result v0

    .line 376
    add-int/2addr p1, v0

    .line 377
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

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, sum:I
    if-nez p2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v3

    .line 250
    :cond_1
    if-eqz p3, :cond_2

    .line 251
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 253
    .local v1, len:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    move v2, v1

    .end local v1           #len:I
    :goto_1
    move v3, v2

    .line 270
    goto :goto_0

    .line 259
    .restart local v1       #len:I
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #len:I
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method protected parseTag(I)I
    .locals 4
    .parameter "offset"

    .prologue
    .line 865
    const/4 v2, 0x0

    .local v2, sum:I
    const/4 v1, 0x0

    .line 868
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    .line 869
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 870
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->isLetter(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 879
    .end local v0           #ch:C
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 880
    const/4 v2, -0x1

    .line 882
    .end local v2           #sum:I
    :cond_1
    return v2

    .line 873
    .restart local v0       #ch:C
    .restart local v2       #sum:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 874
    add-int/lit8 p1, p1, 0x1

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 876
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

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, ret:I
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parse8bit(I)I

    move-result v0

    .line 318
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 339
    :cond_1
    :goto_0
    return v1

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseQuotedPrintable(I)I

    move-result v0

    .line 326
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 327
    goto :goto_0

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseBase64(I)I

    move-result v0

    .line 334
    if-eq v0, v1, :cond_1

    move v1, v0

    .line 335
    goto :goto_0
.end method

.method protected parseWord(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/16 v4, 0x3b

    .line 559
    const/4 v1, 0x0

    .line 562
    .local v1, sum:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 563
    .local v0, ch:C
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/pim/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 581
    .end local v0           #ch:C
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 582
    const/4 v1, -0x1

    .line 583
    .end local v1           #sum:I
    :cond_1
    return v1

    .line 565
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

    .line 568
    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 570
    if-ne v0, v4, :cond_3

    .line 571
    add-int/lit8 p1, p1, 0x1

    .line 572
    add-int/lit8 v1, v1, 0x1

    .line 575
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 576
    add-int/lit8 v1, v1, 0x1

    .line 577
    goto :goto_0

    .line 578
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

    .line 199
    const/4 v1, 0x0

    .local v1, ret:I
    const/4 v2, 0x0

    .line 202
    .local v2, sum:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 203
    .local v0, ch:C
    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_2

    .line 204
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 205
    add-int/lit8 p1, p1, 0x1

    .line 213
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 214
    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_3

    .line 215
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 216
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 207
    add-int/2addr p1, v1

    .line 208
    add-int/2addr v2, v1

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseCrlf(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v1, v3, :cond_4

    .line 218
    add-int/2addr p1, v1

    .line 219
    add-int/2addr v2, v1

    goto :goto_0

    .line 224
    .end local v0           #ch:C
    :catch_0
    move-exception v4

    .line 227
    :cond_4
    if-lez v2, :cond_5

    move v3, v2

    .line 229
    :cond_5
    return v3
.end method

.method protected parseXWord(I)I
    .locals 5
    .parameter "offset"

    .prologue
    const/4 v2, -0x1

    .line 292
    const/4 v0, 0x0

    .local v0, ret:I
    const/4 v1, 0x0

    .line 293
    .local v1, sum:I
    const-string v3, "X-"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/htc/android/mail/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    .line 294
    if-ne v2, v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 296
    :cond_1
    add-int/2addr p1, v0

    .line 297
    add-int/2addr v1, v0

    .line 299
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/VParser;->parseWord(I)I

    move-result v0

    .line 300
    if-eq v2, v0, :cond_0

    .line 303
    add-int/2addr v1, v0

    move v2, v1

    .line 304
    goto :goto_0
.end method

.method protected removeWs(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 277
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 278
    const/4 v1, -0x1

    .line 285
    :cond_0
    return v1

    .line 279
    :cond_1
    const/4 v1, 0x0

    .line 281
    .local v1, sum:I
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 282
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 283
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

    .line 126
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 127
    .local v3, reader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v5, :cond_2

    .line 132
    const/16 v4, 0xd

    if-ne v1, v4, :cond_4

    .line 133
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 134
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    .line 135
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 136
    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 137
    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 151
    .end local v1           #ch:I
    :catch_0
    move-exception v2

    .line 154
    :goto_1
    return-void

    .line 140
    .restart local v1       #ch:I
    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    if-ne v1, v5, :cond_4

    .line 150
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_3
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_4
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method protected setInputStream(Ljava/lang/String;)V
    .locals 5
    .parameter "vcard"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 167
    .local v0, b:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, index:I
    const/4 v1, 0x0

    .line 171
    .local v1, cnt:I
    :cond_0
    :goto_0
    if-ltz v2, :cond_4

    .line 173
    const-string v3, "\r\n "

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 174
    if-gez v2, :cond_1

    .line 175
    const-string v3, "\r\n\t"

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 176
    :cond_1
    if-ltz v2, :cond_0

    .line 178
    :goto_1
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    .line 179
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_3
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 181
    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/mail/pim/VParser;->mBuffer:Ljava/lang/String;

    .line 185
    return-void
.end method
