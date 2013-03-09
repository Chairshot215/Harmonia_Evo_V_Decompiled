.class public Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x2f

    const/16 v9, 0x29

    const/16 v8, 0x28

    const/16 v7, 0x20

    const/16 v6, 0xa

    .line 554
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 555
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 556
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 557
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, i:I
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 563
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 569
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 616
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 624
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x41

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x47

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x49

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 648
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 671
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 672
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 673
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x69

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 674
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 675
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 676
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 677
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 678
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 679
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 682
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 684
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 685
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 686
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 688
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 689
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 691
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 694
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 703
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 704
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 711
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 712
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_0
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 716
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 717
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 721
    :cond_1
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->sGsmSpaceChar:I

    .line 722
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToGsm(C)I
    .locals 2
    .parameter "c"

    .prologue
    .line 58
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/futuredial/atparser/utils/PDUparser/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, ex:Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
    sget v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->sGsmSpaceChar:I

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 79
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 81
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 82
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 84
    if-ne v0, v2, :cond_1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v1, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;

    invoke-direct {v1, p0}, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;-><init>(C)V

    throw v1

    .line 88
    :cond_0
    sget v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->sGsmSpaceChar:I

    .line 95
    :goto_0
    return v1

    .line 91
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 95
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 112
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 114
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 115
    sget v0, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->sGsmSpaceChar:I

    .line 118
    .end local v0           #ret:I
    :cond_0
    return v0
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 459
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/futuredial/atparser/utils/PDUparser/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    :goto_0
    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 462
    .local v0, ex:Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 474
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 478
    :cond_1
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 479
    const/4 v0, 0x2

    goto :goto_0

    .line 482
    :cond_2
    if-eqz p1, :cond_0

    .line 483
    new-instance v0, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;

    invoke-direct {v0, p0}, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 497
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/futuredial/atparser/utils/PDUparser/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .line 500
    .local v0, ex:Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 514
    .local v2, sz:I
    const/4 v1, 0x0

    .line 516
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 517
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    return v1
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 542
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 543
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(C)I

    move-result v3

    add-int/2addr v0, v3

    .line 544
    if-le v0, p2, :cond_0

    .line 548
    .end local v1           #i:I
    :goto_1
    return v1

    .line 542
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 548
    goto :goto_1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 10
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 313
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 314
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 316
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 317
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 320
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 323
    .local v3, gsmVal:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 325
    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 327
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 330
    :cond_0
    if-eqz v5, :cond_1

    .line 331
    invoke-static {v3}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const/4 v5, 0x0

    .line 313
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 334
    const/4 v5, 0x1

    goto :goto_1

    .line 336
    :cond_2
    invoke-static {v3}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v2

    .line 340
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const/4 v8, 0x0

    .line 344
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 361
    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 364
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 366
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .line 388
    .end local v0           #c:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 368
    .restart local v0       #c:I
    :cond_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    .line 369
    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    const/4 v2, 0x0

    .line 361
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 379
    :cond_3
    if-eqz v2, :cond_4

    .line 380
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 382
    :cond_4
    sget-object v4, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static gsmExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 150
    sget-object v1, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 152
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 153
    const/16 v1, 0x20

    .line 156
    :goto_0
    return v1

    :cond_0
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 133
    sget-object v0, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 266
    div-int/lit8 v0, p1, 0x8

    .line 267
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 269
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 271
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 272
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 274
    :cond_0
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZ)[B
    .locals 11
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 234
    .local v3, dataLen:I
    invoke-static {p0, p2}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v9

    add-int v6, v9, p1

    .line 235
    .local v6, septetCount:I
    const/16 v9, 0xff

    if-le v6, v9, :cond_0

    .line 236
    new-instance v9, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;

    const-string v10, "Payload cannot exceed 255 septets"

    invoke-direct {v9, v10}, Lcom/futuredial/atparser/utils/PDUparser/EncodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 238
    :cond_0
    mul-int/lit8 v9, v6, 0x7

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v1, v9, 0x8

    .line 239
    .local v1, byteCount:I
    add-int/lit8 v9, v1, 0x1

    new-array v5, v9, [B

    .line 240
    .local v5, ret:[B
    const/4 v4, 0x0

    .local v4, i:I
    move v7, p1

    .local v7, septets:I
    mul-int/lit8 v0, p1, 0x7

    .line 241
    .local v0, bitOffset:I
    :goto_0
    if-ge v4, v3, :cond_2

    if-ge v7, v6, :cond_2

    .line 243
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 244
    .local v2, c:C
    invoke-static {v2, p2}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm(CZ)I

    move-result v8

    .line 245
    .local v8, v:I
    if-ne v8, v10, :cond_1

    .line 246
    invoke-static {v2}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended(C)I

    move-result v8

    .line 247
    invoke-static {v5, v0, v10}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->packSmsChar([BII)V

    .line 248
    add-int/lit8 v0, v0, 0x7

    .line 249
    add-int/lit8 v7, v7, 0x1

    .line 251
    :cond_1
    invoke-static {v5, v0, v8}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->packSmsChar([BII)V

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 242
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 254
    .end local v2           #c:C
    .end local v8           #v:I
    :cond_2
    const/4 v9, 0x0

    int-to-byte v10, v6

    aput-byte v10, v5, v9

    .line 255
    return-object v5
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/atparser/utils/PDUparser/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 180
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    .line 184
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 185
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 187
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v2

    .line 190
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 191
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, septets:I
    invoke-static {p0}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;)I

    move-result v1

    .line 404
    new-array v0, v1, [B

    .line 406
    .local v0, ret:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v0, v2, v3}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 408
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 8
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v7, 0x1b

    .line 421
    move v2, p2

    .line 424
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .line 425
    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_0

    .line 428
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 430
    .local v0, c:C
    invoke-static {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsm(C)I

    move-result v5

    .line 432
    .local v5, v:I
    if-ne v5, v7, :cond_3

    .line 434
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_1

    .line 447
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_0
    :goto_1
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_2

    .line 448
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 438
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    .line 440
    invoke-static {v0}, Lcom/futuredial/atparser/utils/PDUparser/GsmAlphabet;->charToGsmExtended(C)I

    move-result v5

    .line 443
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_2
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_2
.end method
