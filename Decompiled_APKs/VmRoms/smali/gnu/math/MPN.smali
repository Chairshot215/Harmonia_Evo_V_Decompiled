.class Lgnu/math/MPN;
.super Ljava/lang/Object;
.source "MPN.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_1([I[III)I
    .locals 7
    .parameter "dest"
    .parameter "x"
    .parameter "size"
    .parameter "y"

    .prologue
    const-wide v5, 0xffffffffL

    .line 22
    int-to-long v3, p3

    and-long v0, v3, v5

    .line 23
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 25
    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 26
    long-to-int v3, v0

    aput v3, p0, v2

    .line 27
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static add_n([I[I[II)I
    .locals 9
    .parameter "dest"
    .parameter "x"
    .parameter "y"
    .parameter "len"

    .prologue
    const-wide v7, 0xffffffffL

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 43
    aget v3, p1, v2

    int-to-long v3, v3

    and-long/2addr v3, v7

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 45
    long-to-int v3, v0

    aput v3, p0, v2

    .line 46
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static chars_per_word(I)I
    .locals 4
    .parameter "radix"

    .prologue
    const/16 v3, 0x10

    const/16 v0, 0xa

    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 336
    if-ge p0, v0, :cond_4

    .line 338
    if-ge p0, v2, :cond_0

    .line 340
    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    .line 341
    const/16 v0, 0x20

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 343
    const/16 v0, 0x14

    goto :goto_0

    .line 344
    :cond_2
    if-ne p0, v1, :cond_3

    move v0, v3

    .line 345
    goto :goto_0

    .line 347
    :cond_3
    const/16 v0, 0x12

    sub-int/2addr v0, p0

    goto :goto_0

    .line 352
    :cond_4
    const/16 v0, 0xc

    if-ge p0, v0, :cond_5

    .line 353
    const/16 v0, 0x9

    goto :goto_0

    .line 354
    :cond_5
    if-gt p0, v3, :cond_6

    move v0, v2

    .line 355
    goto :goto_0

    .line 356
    :cond_6
    const/16 v0, 0x17

    if-gt p0, v0, :cond_7

    .line 357
    const/4 v0, 0x7

    goto :goto_0

    .line 358
    :cond_7
    const/16 v0, 0x28

    if-gt p0, v0, :cond_8

    .line 359
    const/4 v0, 0x6

    goto :goto_0

    .line 361
    :cond_8
    const/16 v0, 0x100

    if-gt p0, v0, :cond_9

    move v0, v1

    .line 362
    goto :goto_0

    .line 364
    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cmp([II[II)I
    .locals 1
    .parameter "x"
    .parameter "xlen"
    .parameter "y"
    .parameter "ylen"

    .prologue
    .line 474
    if-le p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ge p1, p3, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p1}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v0

    goto :goto_0
.end method

.method public static cmp([I[II)I
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "size"

    .prologue
    const/high16 v3, -0x8000

    .line 453
    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_2

    .line 455
    aget v0, p0, p2

    .line 456
    .local v0, x_word:I
    aget v1, p1, p2

    .line 457
    .local v1, y_word:I
    if-eq v0, v1, :cond_0

    .line 462
    xor-int v2, v0, v3

    xor-int/2addr v3, v1

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 465
    .end local v0           #x_word:I
    .end local v1           #y_word:I
    :goto_0
    return v2

    .line 462
    .restart local v0       #x_word:I
    .restart local v1       #y_word:I
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 465
    .end local v0           #x_word:I
    .end local v1           #y_word:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static count_leading_zeros(I)I
    .locals 4
    .parameter "i"

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 371
    const/16 v3, 0x20

    .line 380
    :goto_0
    return v3

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, count:I
    const/16 v2, 0x10

    .local v2, k:I
    :goto_1
    if-lez v2, :cond_2

    .line 374
    ushr-int v1, p0, v2

    .line 375
    .local v1, j:I
    if-nez v1, :cond_1

    .line 376
    add-int/2addr v0, v2

    .line 373
    :goto_2
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_1
    move p0, v1

    goto :goto_2

    .end local v1           #j:I
    :cond_2
    move v3, v0

    .line 380
    goto :goto_0
.end method

.method public static divide([II[II)V
    .locals 10
    .parameter "zds"
    .parameter "nx"
    .parameter "y"
    .parameter "ny"

    .prologue
    .line 291
    move p1, p1

    .local p1, j:I
    move v2, p1

    .line 297
    .end local p1           #j:I
    .local v2, j:I
    :goto_0
    aget p1, p0, v2

    const/4 v0, 0x1

    sub-int v0, p3, v0

    aget v0, p2, v0

    if-ne p1, v0, :cond_0

    .line 298
    const/4 p1, -0x1

    .local p1, qhat:I
    move v3, p1

    .line 304
    .end local p1           #qhat:I
    .local v3, qhat:I
    :goto_1
    if-eqz v3, :cond_2

    .line 306
    sub-int p1, v2, p3

    invoke-static {p0, p1, p2, p3, v3}, Lgnu/math/MPN;->submul_1([II[III)I

    move-result p1

    .line 307
    .local p1, borrow:I
    aget v0, p0, v2

    .line 308
    .local v0, save:I
    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    sub-long/2addr v0, v4

    .local v0, num:J
    move p1, v3

    .line 309
    .end local v3           #qhat:I
    .local p1, qhat:I
    :goto_2
    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 311
    .end local v0           #num:J
    add-int/lit8 v3, p1, -0x1

    .line 312
    .end local p1           #qhat:I
    .restart local v3       #qhat:I
    const-wide/16 v0, 0x0

    .line 313
    .local v0, carry:J
    const/4 p1, 0x0

    .local p1, i:I
    :goto_3
    if-ge p1, p3, :cond_1

    .line 315
    sub-int v4, v2, p3

    add-int/2addr v4, p1

    aget v4, p0, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aget v6, p2, p1

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 317
    sub-int v4, v2, p3

    add-int/2addr v4, p1

    long-to-int v5, v0

    aput v5, p0, v4

    .line 318
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 313
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 301
    .end local v0           #carry:J
    .end local v3           #qhat:I
    .end local p1           #i:I
    :cond_0
    aget p1, p0, v2

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/4 p1, 0x1

    sub-int p1, v2, p1

    aget p1, p0, p1

    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 302
    .local v0, w:J
    const/4 p1, 0x1

    sub-int p1, p3, p1

    aget p1, p2, p1

    invoke-static {v0, v1, p1}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v0

    .end local v0           #w:J
    long-to-int p1, v0

    .local p1, qhat:I
    move v3, p1

    .end local p1           #qhat:I
    .restart local v3       #qhat:I
    goto :goto_1

    .line 320
    .local v0, carry:J
    .local p1, i:I
    :cond_1
    aget p1, p0, v2

    .end local p1           #i:I
    int-to-long v4, p1

    add-long/2addr v4, v0

    long-to-int p1, v4

    aput p1, p0, v2

    .line 321
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .local v0, num:J
    move p1, v3

    .line 322
    .end local v3           #qhat:I
    .local p1, qhat:I
    goto :goto_2

    .end local v0           #num:J
    .end local p1           #qhat:I
    .restart local v3       #qhat:I
    :cond_2
    move p1, v3

    .line 324
    .end local v3           #qhat:I
    .restart local p1       #qhat:I
    :cond_3
    aput p1, p0, v2

    .line 325
    add-int/lit8 p1, v2, -0x1

    .end local v2           #j:I
    .local p1, j:I
    if-ge p1, p3, :cond_4

    .line 326
    return-void

    :cond_4
    move v2, p1

    .end local p1           #j:I
    .restart local v2       #j:I
    goto/16 :goto_0
.end method

.method public static divmod_1([I[III)I
    .locals 12
    .parameter "quotient"
    .parameter "dividend"
    .parameter "len"
    .parameter "divisor"

    .prologue
    const/16 v11, 0x20

    const-wide v9, 0xffffffffL

    .line 219
    const/4 v5, 0x1

    sub-int v0, p2, v5

    .line 220
    .local v0, i:I
    aget v5, p1, v0

    int-to-long v3, v5

    .line 221
    .local v3, r:J
    and-long v5, v3, v9

    int-to-long v7, p3

    and-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 222
    const-wide/16 v3, 0x0

    .line 229
    :goto_0
    if-ltz v0, :cond_1

    .line 231
    aget v2, p1, v0

    .line 232
    .local v2, n0:I
    const-wide v5, -0x100000000L

    and-long/2addr v5, v3

    int-to-long v7, v2

    and-long/2addr v7, v9

    or-long v3, v5, v7

    .line 233
    invoke-static {v3, v4, p3}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v3

    .line 234
    long-to-int v5, v3

    aput v5, p0, v0

    .line 229
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 225
    .end local v2           #n0:I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x0

    aput v5, p0, v0

    .line 226
    shl-long/2addr v3, v11

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 236
    :cond_1
    shr-long v5, v3, v11

    long-to-int v5, v5

    return v5
.end method

.method static findLowestBit(I)I
    .locals 2
    .parameter "word"

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, i:I
    :goto_0
    and-int/lit8 v1, p0, 0xf

    if-nez v1, :cond_0

    .line 575
    shr-int/lit8 p0, p0, 0x4

    .line 576
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 578
    :cond_0
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_1

    .line 580
    shr-int/lit8 p0, p0, 0x2

    .line 581
    add-int/lit8 v0, v0, 0x2

    .line 583
    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    .line 584
    add-int/lit8 v0, v0, 0x1

    .line 585
    :cond_2
    return v0
.end method

.method static findLowestBit([I)I
    .locals 3
    .parameter "words"

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, i:I
    :goto_0
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 595
    mul-int/lit8 v1, v0, 0x20

    aget v2, p0, v0

    invoke-static {v2}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 592
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gcd([I[II)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "len"

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, i:I
    :goto_0
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    .line 611
    .local v1, word:I
    if-eqz v1, :cond_0

    .line 617
    move v2, v0

    .line 618
    .local v2, initShiftWords:I
    invoke-static {v1}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v1

    .line 622
    .local v1, initShiftBits:I
    sub-int/2addr p2, v2

    .line 623
    invoke-static {p0, p0, v2, p2, v1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 624
    invoke-static {p1, p1, v2, p2, v1}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 628
    const/4 v3, 0x0

    aget v3, p0, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 630
    move-object v3, p0

    .line 631
    .local v3, odd_arg:[I
    move-object p1, p1

    .local p1, other_arg:[I
    move-object v4, p1

    .end local p1           #other_arg:[I
    .local v4, other_arg:[I
    move p1, v0

    .line 644
    .end local v0           #i:I
    .local p1, i:I
    :goto_1
    const/4 p1, 0x0

    :goto_2
    aget v0, v4, p1

    if-nez v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 608
    .end local v2           #initShiftWords:I
    .end local v3           #odd_arg:[I
    .end local v4           #other_arg:[I
    .restart local v0       #i:I
    .local v1, word:I
    .local p1, y:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .local v1, initShiftBits:I
    .restart local v2       #initShiftWords:I
    :cond_1
    move-object p1, p1

    .line 636
    .local p1, odd_arg:[I
    move-object v3, p0

    .local v3, other_arg:[I
    move-object v4, v3

    .end local v3           #other_arg:[I
    .restart local v4       #other_arg:[I
    move-object v3, p1

    .end local p1           #odd_arg:[I
    .local v3, odd_arg:[I
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    goto :goto_1

    .line 645
    :cond_2
    if-lez p1, :cond_3

    .line 648
    const/4 v0, 0x0

    .local v0, j:I
    :goto_3
    sub-int v5, p2, p1

    if-ge v0, v5, :cond_c

    .line 649
    add-int v5, v0, p1

    aget v5, v4, v5

    aput v5, v4, v0

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 650
    .end local v0           #j:I
    .local p1, j:I
    :goto_4
    if-ge p1, p2, :cond_3

    .line 651
    const/4 v0, 0x0

    aput v0, v4, p1

    .line 650
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 653
    .end local p1           #j:I
    :cond_3
    const/4 p1, 0x0

    aget p1, v4, p1

    invoke-static {p1}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result p1

    .line 654
    .local p1, i:I
    if-lez p1, :cond_4

    .line 655
    const/4 v0, 0x0

    invoke-static {v4, v4, v0, p2, p1}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 661
    :cond_4
    invoke-static {v3, v4, p2}, Lgnu/math/MPN;->cmp([I[II)I

    move-result p1

    .line 662
    if-nez p1, :cond_6

    .line 677
    add-int v0, v2, v1

    if-lez v0, :cond_a

    .line 679
    if-lez v1, :cond_8

    .line 681
    invoke-static {p0, v2, p0, p2, v1}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v1

    .line 682
    .local v1, sh_out:I
    if-eqz v1, :cond_5

    .line 683
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, len:I
    add-int/2addr p2, v2

    aput v1, p0, p2

    move p2, v0

    .line 690
    .end local v0           #len:I
    .end local v1           #sh_out:I
    .restart local p2
    :cond_5
    move p1, v2

    :goto_5
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_9

    .line 691
    const/4 v0, 0x0

    aput v0, p0, p1

    goto :goto_5

    .line 664
    .local v1, initShiftBits:I
    :cond_6
    if-lez p1, :cond_7

    .line 666
    invoke-static {v3, v3, v4, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    .line 668
    move-object v3, v3

    .local v3, tmp:[I
    move-object v0, v4

    .local v0, odd_arg:[I
    move-object v3, v3

    .line 674
    .end local v4           #other_arg:[I
    .local v3, other_arg:[I
    :goto_6
    const/4 v4, 0x1

    sub-int v4, p2, v4

    aget v4, v0, v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    sub-int v4, p2, v4

    aget v4, v3, v4

    if-nez v4, :cond_b

    .line 675
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    .line 672
    .end local v0           #odd_arg:[I
    .local v3, odd_arg:[I
    .restart local v4       #other_arg:[I
    :cond_7
    invoke-static {v4, v4, v3, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    move-object v0, v3

    .end local v3           #odd_arg:[I
    .restart local v0       #odd_arg:[I
    move-object v3, v4

    .end local v4           #other_arg:[I
    .local v3, other_arg:[I
    goto :goto_6

    .line 687
    .end local v0           #odd_arg:[I
    .local v3, odd_arg:[I
    .restart local v4       #other_arg:[I
    :cond_8
    move p1, p2

    .end local v1           #initShiftBits:I
    :goto_7
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 688
    add-int v0, p1, v2

    aget v1, p0, p1

    aput v1, p0, v0

    goto :goto_7

    .line 692
    :cond_9
    add-int/2addr p2, v2

    move p0, p1

    .line 694
    .end local p1           #i:I
    .local p0, i:I
    :goto_8
    return p2

    .restart local v1       #initShiftBits:I
    .local p0, x:[I
    .restart local p1       #i:I
    :cond_a
    move p0, p1

    .end local p1           #i:I
    .local p0, i:I
    goto :goto_8

    .end local v4           #other_arg:[I
    .restart local v0       #odd_arg:[I
    .local v3, other_arg:[I
    .local p0, x:[I
    .restart local p1       #i:I
    :cond_b
    move-object v4, v3

    .end local v3           #other_arg:[I
    .restart local v4       #other_arg:[I
    move-object v3, v0

    .end local v0           #odd_arg:[I
    .local v3, odd_arg:[I
    goto/16 :goto_1

    .local v0, j:I
    :cond_c
    move p1, v0

    .end local v0           #j:I
    .local p1, j:I
    goto :goto_4
.end method

.method public static intLength(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 699
    const/16 v0, 0x20

    if-gez p0, :cond_0

    xor-int/lit8 v1, p0, -0x1

    :goto_0
    invoke-static {v1}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    move v1, p0

    goto :goto_0
.end method

.method public static intLength([II)I
    .locals 2
    .parameter "words"
    .parameter "len"

    .prologue
    .line 706
    add-int/lit8 p1, p1, -0x1

    .line 707
    aget v0, p0, p1

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method public static lshift([II[III)I
    .locals 8
    .parameter "dest"
    .parameter "d_offset"
    .parameter "x"
    .parameter "len"
    .parameter "count"

    .prologue
    .line 553
    const/16 v5, 0x20

    sub-int v0, v5, p4

    .line 554
    .local v0, count_2:I
    const/4 v5, 0x1

    sub-int v2, p3, v5

    .line 555
    .local v2, i:I
    aget v1, p2, v2

    .line 556
    .local v1, high_word:I
    ushr-int v4, v1, v0

    .line 557
    .local v4, retval:I
    add-int/lit8 p1, p1, 0x1

    .line 558
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 560
    aget v3, p2, v2

    .line 561
    .local v3, low_word:I
    add-int v5, p1, v2

    shl-int v6, v1, p4

    ushr-int v7, v3, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 562
    move v1, v3

    .line 563
    goto :goto_0

    .line 564
    .end local v3           #low_word:I
    :cond_0
    add-int v5, p1, v2

    shl-int v6, v1, p4

    aput v6, p0, v5

    .line 565
    return v4
.end method

.method public static mul([I[II[II)V
    .locals 16
    .parameter "dest"
    .parameter "x"
    .parameter "xlen"
    .parameter "y"
    .parameter "ylen"

    .prologue
    .line 111
    const/4 v4, 0x0

    aget v4, p3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v4

    invoke-static {v0, v1, v2, v3}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v4

    aput v4, p0, p2

    .line 113
    const/4 v4, 0x1

    .local v4, i:I
    move v6, v4

    .end local v4           #i:I
    .local v6, i:I
    :goto_0
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    .line 115
    aget v4, p3, v6

    int-to-long v4, v4

    const-wide v7, 0xffffffffL

    and-long v8, v4, v7

    .line 116
    .local v8, yword:J
    const-wide/16 v4, 0x0

    .line 117
    .local v4, carry:J
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    move v0, v7

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    .line 119
    aget v10, p1, v7

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v8

    add-int v12, v6, v7

    aget v12, p0, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v4, v10

    .line 121
    add-int v10, v6, v7

    long-to-int v11, v4

    aput v11, p0, v10

    .line 122
    const/16 v10, 0x20

    ushr-long/2addr v4, v10

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 124
    :cond_0
    add-int v7, v6, p2

    long-to-int v4, v4

    aput v4, p0, v7

    .line 113
    .end local v4           #carry:J
    .end local v7           #j:I
    add-int/lit8 v4, v6, 0x1

    .end local v6           #i:I
    .local v4, i:I
    move v6, v4

    .end local v4           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 126
    .end local v8           #yword:J
    :cond_1
    return-void
.end method

.method public static mul_1([I[III)I
    .locals 9
    .parameter "dest"
    .parameter "x"
    .parameter "len"
    .parameter "y"

    .prologue
    const-wide v7, 0xffffffffL

    .line 86
    int-to-long v5, p3

    and-long v3, v5, v7

    .line 87
    .local v3, yword:J
    const-wide/16 v0, 0x0

    .line 88
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 90
    aget v5, p1, v2

    int-to-long v5, v5

    and-long/2addr v5, v7

    mul-long/2addr v5, v3

    add-long/2addr v0, v5

    .line 91
    long-to-int v5, v0

    aput v5, p0, v2

    .line 92
    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    long-to-int v5, v0

    return v5
.end method

.method public static rshift([I[IIII)I
    .locals 9
    .parameter "dest"
    .parameter "x"
    .parameter "x_start"
    .parameter "len"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    .line 488
    const/16 v5, 0x20

    sub-int v0, v5, p4

    .line 489
    .local v0, count_2:I
    aget v3, p1, p2

    .line 490
    .local v3, low_word:I
    shl-int v4, v3, v0

    .line 491
    .local v4, retval:I
    const/4 v2, 0x1

    .line 492
    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 494
    add-int v5, p2, v2

    aget v1, p1, v5

    .line 495
    .local v1, high_word:I
    sub-int v5, v2, v8

    ushr-int v6, v3, p4

    shl-int v7, v1, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 496
    move v3, v1

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    .end local v1           #high_word:I
    :cond_0
    sub-int v5, v2, v8

    ushr-int v6, v3, p4

    aput v6, p0, v5

    .line 499
    return v4
.end method

.method public static rshift0([I[IIII)V
    .locals 2
    .parameter "dest"
    .parameter "x"
    .parameter "x_start"
    .parameter "len"
    .parameter "count"

    .prologue
    .line 512
    if-lez p4, :cond_1

    .line 513
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 517
    :cond_0
    return-void

    .line 515
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 516
    add-int v1, v0, p2

    aget v1, p1, v1

    aput v1, p0, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static rshift_long([III)J
    .locals 11
    .parameter "x"
    .parameter "len"
    .parameter "count"

    .prologue
    const/16 v7, 0x20

    .line 527
    shr-int/lit8 v4, p2, 0x5

    .line 528
    .local v4, wordno:I
    and-int/lit8 p2, p2, 0x1f

    .line 529
    const/4 v5, 0x1

    sub-int v5, p1, v5

    aget v5, p0, v5

    if-gez v5, :cond_1

    const/4 v5, -0x1

    move v0, v5

    .line 530
    .local v0, sign:I
    :goto_0
    if-lt v4, p1, :cond_2

    move v1, v0

    .line 531
    .local v1, w0:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 532
    if-lt v4, p1, :cond_3

    move v2, v0

    .line 533
    .local v2, w1:I
    :goto_2
    if-eqz p2, :cond_0

    .line 535
    add-int/lit8 v4, v4, 0x1

    .line 536
    if-lt v4, p1, :cond_4

    move v3, v0

    .line 537
    .local v3, w2:I
    :goto_3
    ushr-int v5, v1, p2

    sub-int v6, v7, p2

    shl-int v6, v2, v6

    or-int v1, v5, v6

    .line 538
    ushr-int v5, v2, p2

    sub-int v6, v7, p2

    shl-int v6, v3, v6

    or-int v2, v5, v6

    .line 540
    .end local v3           #w2:I
    :cond_0
    int-to-long v5, v2

    shl-long/2addr v5, v7

    int-to-long v7, v1

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    return-wide v5

    .line 529
    .end local v0           #sign:I
    .end local v1           #w0:I
    .end local v2           #w1:I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 530
    .restart local v0       #sign:I
    :cond_2
    aget v5, p0, v4

    move v1, v5

    goto :goto_1

    .line 532
    .restart local v1       #w0:I
    :cond_3
    aget v5, p0, v4

    move v2, v5

    goto :goto_2

    .line 536
    .restart local v2       #w1:I
    :cond_4
    aget v5, p0, v4

    move v3, v5

    goto :goto_3
.end method

.method public static set_str([I[BII)I
    .locals 8
    .parameter "dest"
    .parameter "str"
    .parameter "str_len"
    .parameter "base"

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 386
    .local v3, size:I
    const/4 v0, 0x1

    sub-int v0, p3, v0

    and-int/2addr v0, p3

    if-nez v0, :cond_2

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, next_bitpos:I
    const/4 v0, 0x0

    .line 393
    .local v0, bits_per_indigit:I
    move p3, p3

    .local p3, i:I
    move v7, p3

    .end local p3           #i:I
    .local v7, i:I
    move p3, v0

    .end local v0           #bits_per_indigit:I
    .local p3, bits_per_indigit:I
    move v0, v7

    .end local v7           #i:I
    .local v0, i:I
    :goto_0
    shr-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 396
    .local v0, res_digit:I
    move p2, p2

    .local p2, i:I
    move v2, v0

    .end local v0           #res_digit:I
    .local v2, res_digit:I
    move v4, v3

    .end local v3           #size:I
    .local v4, size:I
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 398
    aget-byte v0, p1, p2

    .line 399
    .local v0, inp_digit:I
    shl-int v3, v0, v1

    or-int/2addr v2, v3

    .line 400
    add-int/2addr v1, p3

    .line 401
    const/16 v3, 0x20

    if-lt v1, v3, :cond_8

    .line 403
    add-int/lit8 v3, v4, 0x1

    .end local v4           #size:I
    .restart local v3       #size:I
    aput v2, p0, v4

    .line 404
    add-int/lit8 v1, v1, -0x20

    .line 405
    sub-int v2, p3, v1

    shr-int/2addr v0, v2

    .end local v2           #res_digit:I
    .local v0, res_digit:I
    move v2, v3

    .end local v3           #size:I
    .local v2, size:I
    move v7, v1

    .end local v1           #next_bitpos:I
    .local v7, next_bitpos:I
    move v1, v0

    .end local v0           #res_digit:I
    .local v1, res_digit:I
    move v0, v7

    .end local v7           #next_bitpos:I
    .local v0, next_bitpos:I
    :goto_2
    move v4, v2

    .end local v2           #size:I
    .restart local v4       #size:I
    move v2, v1

    .end local v1           #res_digit:I
    .local v2, res_digit:I
    move v1, v0

    .line 407
    .end local v0           #next_bitpos:I
    .local v1, next_bitpos:I
    goto :goto_1

    .line 409
    :cond_1
    if-eqz v2, :cond_7

    .line 410
    add-int/lit8 p1, v4, 0x1

    .end local v4           #size:I
    .local p1, size:I
    aput v2, p0, v4

    move p0, p1

    .line 444
    .end local v1           #next_bitpos:I
    .end local v2           #res_digit:I
    .end local p1           #size:I
    .end local p2           #i:I
    .end local p3           #bits_per_indigit:I
    .local p0, size:I
    :goto_3
    return p0

    .line 415
    .restart local v3       #size:I
    .local p0, dest:[I
    .local p1, str:[B
    .local p2, str_len:I
    .local p3, base:I
    :cond_2
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v2

    .line 416
    .local v2, indigits_per_limb:I
    const/4 v0, 0x0

    .local v0, str_pos:I
    move v4, v3

    .end local v3           #size:I
    .restart local v4       #size:I
    move v3, v0

    .line 418
    .end local v0           #str_pos:I
    .local v3, str_pos:I
    :goto_4
    if-ge v3, p2, :cond_7

    .line 420
    sub-int v0, p2, v3

    .line 421
    .local v0, chunk:I
    if-le v0, v2, :cond_6

    .line 422
    move v0, v2

    move v1, v0

    .line 423
    .end local v0           #chunk:I
    .local v1, chunk:I
    :goto_5
    add-int/lit8 v5, v3, 0x1

    .end local v3           #str_pos:I
    .local v5, str_pos:I
    aget-byte v3, p1, v3

    .line 424
    .local v3, res_digit:I
    move v0, p3

    .local v0, big_base:I
    move v6, v5

    .line 426
    .end local v5           #str_pos:I
    .local v6, str_pos:I
    :goto_6
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_3

    .line 428
    mul-int/2addr v3, p3

    add-int/lit8 v5, v6, 0x1

    .end local v6           #str_pos:I
    .restart local v5       #str_pos:I
    aget-byte v6, p1, v6

    .end local v3           #res_digit:I
    add-int/2addr v3, v6

    .line 429
    .restart local v3       #res_digit:I
    mul-int/2addr v0, p3

    move v6, v5

    .end local v5           #str_pos:I
    .restart local v6       #str_pos:I
    goto :goto_6

    .line 433
    :cond_3
    if-nez v4, :cond_4

    .line 434
    move v0, v3

    .line 440
    .end local v1           #chunk:I
    .local v0, cy_limb:I
    :goto_7
    if-eqz v0, :cond_5

    .line 441
    add-int/lit8 v1, v4, 0x1

    .end local v4           #size:I
    .local v1, size:I
    aput v0, p0, v4

    move v0, v1

    .end local v1           #size:I
    .local v0, size:I
    :goto_8
    move v3, v6

    .end local v6           #str_pos:I
    .local v3, str_pos:I
    move v4, v0

    .line 442
    .end local v0           #size:I
    .restart local v4       #size:I
    goto :goto_4

    .line 437
    .local v0, big_base:I
    .local v1, chunk:I
    .local v3, res_digit:I
    .restart local v6       #str_pos:I
    :cond_4
    invoke-static {p0, p0, v4, v0}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v0

    .line 438
    .local v0, cy_limb:I
    invoke-static {p0, p0, v4, v3}, Lgnu/math/MPN;->add_1([I[III)I

    move-result v1

    .end local v1           #chunk:I
    add-int/2addr v0, v1

    goto :goto_7

    :cond_5
    move v0, v4

    .end local v4           #size:I
    .local v0, size:I
    goto :goto_8

    .end local v6           #str_pos:I
    .local v0, chunk:I
    .local v3, str_pos:I
    .restart local v4       #size:I
    :cond_6
    move v1, v0

    .end local v0           #chunk:I
    .restart local v1       #chunk:I
    goto :goto_5

    .end local v1           #chunk:I
    .end local v2           #indigits_per_limb:I
    .end local v3           #str_pos:I
    .end local p2           #str_len:I
    .end local p3           #base:I
    :cond_7
    move p0, v4

    .end local v4           #size:I
    .local p0, size:I
    goto :goto_3

    .local v0, inp_digit:I
    .local v1, next_bitpos:I
    .local v2, res_digit:I
    .restart local v4       #size:I
    .local p0, dest:[I
    .local p2, i:I
    .local p3, bits_per_indigit:I
    :cond_8
    move v0, v1

    .end local v1           #next_bitpos:I
    .local v0, next_bitpos:I
    move v1, v2

    .end local v2           #res_digit:I
    .local v1, res_digit:I
    move v2, v4

    .end local v4           #size:I
    .local v2, size:I
    goto :goto_2
.end method

.method public static sub_n([I[I[II)I
    .locals 9
    .parameter "dest"
    .parameter "X"
    .parameter "Y"
    .parameter "size"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x8000

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, cy:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 62
    aget v3, p2, v1

    .line 63
    .local v3, y:I
    aget v2, p1, v1

    .line 64
    .local v2, x:I
    add-int/2addr v3, v0

    .line 67
    xor-int v4, v3, v6

    xor-int v5, v0, v6

    if-ge v4, v5, :cond_0

    move v0, v8

    .line 68
    :goto_1
    sub-int v3, v2, v3

    .line 69
    xor-int v4, v3, v6

    xor-int v5, v2, v6

    if-le v4, v5, :cond_1

    move v4, v8

    :goto_2
    add-int/2addr v0, v4

    .line 70
    aput v3, p0, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v7

    .line 67
    goto :goto_1

    :cond_1
    move v4, v7

    .line 69
    goto :goto_2

    .line 72
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2
    return v0
.end method

.method public static submul_1([II[III)I
    .locals 8
    .parameter "dest"
    .parameter "offset"
    .parameter "x"
    .parameter "len"
    .parameter "y"

    .prologue
    .line 246
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    .line 247
    .local v4, yl:J
    const/4 p4, 0x0

    .line 248
    .local p4, carry:I
    const/4 v0, 0x0

    .line 251
    .local v0, j:I
    :cond_0
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v1, v6

    mul-long/2addr v1, v4

    .line 252
    .local v1, prod:J
    long-to-int v3, v1

    .line 253
    .local v3, prod_low:I
    const/16 v6, 0x20

    shr-long/2addr v1, v6

    long-to-int v1, v1

    .line 254
    .local v1, prod_high:I
    add-int v2, v3, p4

    .line 257
    .end local v3           #prod_low:I
    .local v2, prod_low:I
    const/high16 v3, -0x8000

    xor-int/2addr v3, v2

    const/high16 v6, -0x8000

    xor-int/2addr p4, v6

    if-ge v3, p4, :cond_2

    .end local p4           #carry:I
    const/4 p4, 0x1

    :goto_0
    add-int/2addr p4, v1

    .line 259
    .restart local p4       #carry:I
    add-int v1, p1, v0

    aget v3, p0, v1

    .line 260
    .end local v1           #prod_high:I
    .local v3, x_j:I
    sub-int v1, v3, v2

    .line 261
    .end local v2           #prod_low:I
    .local v1, prod_low:I
    const/high16 v2, -0x8000

    xor-int/2addr v2, v1

    const/high16 v6, -0x8000

    xor-int/2addr v3, v6

    if-le v2, v3, :cond_1

    .line 262
    .end local v3           #x_j:I
    add-int/lit8 p4, p4, 0x1

    .line 263
    :cond_1
    add-int v2, p1, v0

    aput v1, p0, v2

    .line 265
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_0

    .line 266
    return p4

    .line 257
    .end local p4           #carry:I
    .local v1, prod_high:I
    .restart local v2       #prod_low:I
    :cond_2
    const/4 p4, 0x0

    goto :goto_0
.end method

.method public static udiv_qrnnd(JI)J
    .locals 12
    .parameter "N"
    .parameter "D"

    .prologue
    .line 136
    const/16 v0, 0x20

    ushr-long v2, p0, v0

    .line 137
    .local v2, a1:J
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    .line 138
    .local v0, a0:J
    if-ltz p2, :cond_1

    .line 140
    int-to-long v4, p2

    sub-long/2addr v4, v2

    const/16 v6, 0x1f

    ushr-long/2addr v0, v6

    sub-long v0, v4, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 143
    .end local v0           #a0:J
    int-to-long v0, p2

    div-long v0, p0, v0

    .line 144
    .local v0, q:J
    int-to-long v2, p2

    rem-long/2addr p0, v2

    .end local v2           #a1:J
    .local p0, r:J
    move-wide v10, p0

    .end local p0           #r:J
    .local v10, r:J
    move-wide p0, v0

    .end local v0           #q:J
    .local p0, q:J
    move-wide v0, v10

    .line 207
    .end local v10           #r:J
    .local v0, r:J
    :goto_0
    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .end local v0           #r:J
    .end local p0           #q:J
    .end local p2
    return-wide p0

    .line 149
    .restart local v2       #a1:J
    .local p0, N:J
    .restart local p2
    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    sub-long/2addr p0, v0

    .line 151
    .local p0, c:J
    int-to-long v0, p2

    div-long v0, p0, v0

    .line 152
    .end local v2           #a1:J
    .local v0, q:J
    int-to-long v2, p2

    rem-long v2, p0, v2

    .line 154
    .local v2, r:J
    const-wide/32 p0, -0x80000000

    add-long/2addr p0, v0

    .end local v0           #q:J
    .local p0, q:J
    move-wide v0, v2

    .line 155
    .end local v2           #r:J
    .local v0, r:J
    goto :goto_0

    .line 159
    .local v0, a0:J
    .local v2, a1:J
    .local p0, N:J
    :cond_1
    ushr-int/lit8 v4, p2, 0x1

    int-to-long v4, v4

    .line 162
    .local v4, b1:J
    const/4 v6, 0x1

    ushr-long/2addr p0, v6

    .line 163
    .local p0, c:J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    shr-long v6, v2, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_6

    .line 165
    :cond_2
    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 167
    .end local v2           #a1:J
    div-long v2, p0, v4

    .line 168
    .local v2, q:J
    rem-long v4, p0, v4

    .line 178
    .local v4, r:J
    :goto_1
    const-wide/16 p0, 0x2

    mul-long/2addr p0, v4

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    add-long/2addr p0, v0

    .line 179
    .end local v4           #r:J
    .local p0, r:J
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 181
    .end local v0           #a0:J
    cmp-long v0, p0, v2

    if-ltz v0, :cond_4

    .line 182
    sub-long/2addr p0, v2

    move-wide v0, p0

    .end local p0           #r:J
    .local v0, r:J
    move-wide p0, v2

    .end local v2           #q:J
    .local p0, q:J
    goto :goto_0

    .line 172
    .local v0, a0:J
    .local v4, b1:J
    .local p0, c:J
    :cond_3
    const/16 v2, 0x20

    shl-long v2, v4, v2

    sub-long/2addr p0, v2

    const-wide/16 v2, -0x1

    xor-long/2addr p0, v2

    .line 173
    div-long v2, p0, v4

    .line 174
    .restart local v2       #q:J
    rem-long v6, p0, v4

    .line 175
    .local v6, r:J
    const-wide/16 v8, -0x1

    xor-long/2addr v2, v8

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    .line 176
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    sub-long/2addr v4, v6

    .end local v6           #r:J
    .local v4, r:J
    goto :goto_1

    .line 183
    .end local v0           #a0:J
    .end local v4           #r:J
    .local p0, r:J
    :cond_4
    sub-long v0, v2, p0

    int-to-long v4, p2

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    .line 184
    sub-long/2addr p0, v2

    int-to-long v0, p2

    add-long/2addr v0, p0

    .line 185
    .end local p0           #r:J
    .local v0, r:J
    const-wide/16 p0, 0x1

    sub-long p0, v2, p0

    .end local v2           #q:J
    .local p0, q:J
    goto :goto_0

    .line 187
    .end local v0           #r:J
    .restart local v2       #q:J
    .local p0, r:J
    :cond_5
    sub-long/2addr p0, v2

    int-to-long v0, p2

    add-long/2addr p0, v0

    int-to-long v0, p2

    add-long/2addr v0, p0

    .line 188
    .end local p0           #r:J
    .restart local v0       #r:J
    const-wide/16 p0, 0x2

    sub-long p0, v2, p0

    .end local v2           #q:J
    .local p0, q:J
    goto :goto_0

    .line 194
    .local v0, a0:J
    .local v2, a1:J
    .local v4, b1:J
    .local p0, c:J
    :cond_6
    neg-int p0, p2

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-ltz p0, :cond_7

    .line 196
    .end local v2           #a1:J
    .end local p0           #c:J
    const-wide/16 p0, -0x1

    .line 197
    .local p0, q:J
    int-to-long v2, p2

    add-long/2addr v0, v2

    .local v0, r:J
    goto/16 :goto_0

    .line 201
    .end local p0           #q:J
    .local v0, a0:J
    :cond_7
    const-wide/16 p0, -0x2

    .line 202
    .restart local p0       #q:J
    int-to-long v2, p2

    add-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .local v0, r:J
    goto/16 :goto_0

    .end local v0           #r:J
    .end local v4           #b1:J
    .local v2, q:J
    .local p0, r:J
    :cond_8
    move-wide v0, p0

    .end local p0           #r:J
    .restart local v0       #r:J
    move-wide p0, v2

    .end local v2           #q:J
    .local p0, q:J
    goto/16 :goto_0
.end method
