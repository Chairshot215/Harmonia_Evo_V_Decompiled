.class public Lcom/htc/weather/StateResources;
.super Ljava/lang/Object;
.source "StateResources.java"


# instance fields
.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private bInit:Z

.field private conditions:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "StateResources"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 24
    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Huafeng2ACCU(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 683
    :goto_0
    return v0

    .line 575
    :pswitch_0
    const/4 v0, 0x1

    .line 576
    goto :goto_0

    .line 578
    :pswitch_1
    const/4 v0, 0x6

    .line 579
    goto :goto_0

    .line 581
    :pswitch_2
    const/16 v0, 0x8

    .line 582
    goto :goto_0

    .line 584
    :pswitch_3
    const/16 v0, 0x12

    .line 585
    goto :goto_0

    .line 587
    :pswitch_4
    const/16 v0, 0xf

    .line 588
    goto :goto_0

    .line 590
    :pswitch_5
    const/16 v0, 0x33

    .line 591
    goto :goto_0

    .line 593
    :pswitch_6
    const/16 v0, 0x1d

    .line 594
    goto :goto_0

    .line 596
    :pswitch_7
    const/16 v0, 0xe

    .line 597
    goto :goto_0

    .line 599
    :pswitch_8
    const/16 v0, 0xd

    .line 600
    goto :goto_0

    .line 602
    :pswitch_9
    const/16 v0, 0x12

    .line 603
    goto :goto_0

    .line 605
    :pswitch_a
    const/16 v0, 0xf

    .line 606
    goto :goto_0

    .line 608
    :pswitch_b
    const/16 v0, 0x16

    .line 609
    goto :goto_0

    .line 611
    :pswitch_c
    const/16 v0, 0x16

    .line 612
    goto :goto_0

    .line 614
    :pswitch_d
    const/16 v0, 0x17

    .line 615
    goto :goto_0

    .line 617
    :pswitch_e
    const/16 v0, 0x15

    .line 618
    goto :goto_0

    .line 620
    :pswitch_f
    const/16 v0, 0x13

    .line 621
    goto :goto_0

    .line 623
    :pswitch_10
    const/16 v0, 0x16

    .line 624
    goto :goto_0

    .line 626
    :pswitch_11
    const/16 v0, 0x16

    .line 627
    goto :goto_0

    .line 629
    :pswitch_12
    const/16 v0, 0xb

    .line 630
    goto :goto_0

    .line 632
    :pswitch_13
    const/16 v0, 0x1a

    .line 633
    goto :goto_0

    .line 635
    :pswitch_14
    const/16 v0, 0x34

    .line 636
    goto :goto_0

    .line 638
    :pswitch_15
    const/16 v0, 0xd

    .line 639
    goto :goto_0

    .line 641
    :pswitch_16
    const/16 v0, 0xf

    .line 642
    goto :goto_0

    .line 644
    :pswitch_17
    const/16 v0, 0xf

    .line 645
    goto :goto_0

    .line 647
    :pswitch_18
    const/16 v0, 0xf

    .line 648
    goto :goto_0

    .line 650
    :pswitch_19
    const/16 v0, 0xf

    .line 651
    goto :goto_0

    .line 653
    :pswitch_1a
    const/16 v0, 0x13

    .line 654
    goto :goto_0

    .line 656
    :pswitch_1b
    const/16 v0, 0x16

    .line 657
    goto :goto_0

    .line 659
    :pswitch_1c
    const/16 v0, 0x16

    .line 660
    goto :goto_0

    .line 662
    :pswitch_1d
    const/16 v0, 0x35

    .line 663
    goto :goto_0

    .line 665
    :pswitch_1e
    const/16 v0, 0x34

    .line 666
    goto :goto_0

    .line 668
    :pswitch_1f
    const/16 v0, 0x34

    .line 669
    goto :goto_0

    .line 671
    :pswitch_20
    const/16 v0, 0x20

    .line 672
    goto :goto_0

    .line 674
    :pswitch_21
    const/16 v0, 0x36

    .line 675
    goto :goto_0

    .line 677
    :pswitch_22
    const/16 v0, 0x13

    .line 678
    goto :goto_0

    .line 680
    :pswitch_23
    const/16 v0, 0xb

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 138
    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 140
    return-void
.end method

.method public getConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :goto_0
    return-object v2

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 61
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 62
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 74
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x208046c

    .line 265
    packed-switch p1, :pswitch_data_0

    .line 359
    :goto_0
    :pswitch_0
    return v0

    .line 267
    :pswitch_1
    const v0, 0x2080466

    goto :goto_0

    .line 269
    :pswitch_2
    const v0, 0x2080467

    goto :goto_0

    .line 271
    :pswitch_3
    const v0, 0x2080468

    goto :goto_0

    .line 273
    :pswitch_4
    const v0, 0x2080469

    goto :goto_0

    .line 275
    :pswitch_5
    const v0, 0x208046a

    goto :goto_0

    .line 277
    :pswitch_6
    const v0, 0x208046b

    goto :goto_0

    .line 281
    :pswitch_7
    const v0, 0x208046d

    goto :goto_0

    .line 284
    :pswitch_8
    const v0, 0x208046e

    goto :goto_0

    .line 286
    :pswitch_9
    const v0, 0x208046f

    goto :goto_0

    .line 288
    :pswitch_a
    const v0, 0x2080470

    goto :goto_0

    .line 290
    :pswitch_b
    const v0, 0x2080471

    goto :goto_0

    .line 292
    :pswitch_c
    const v0, 0x2080472

    goto :goto_0

    .line 294
    :pswitch_d
    const v0, 0x2080473

    goto :goto_0

    .line 296
    :pswitch_e
    const v0, 0x2080474

    goto :goto_0

    .line 298
    :pswitch_f
    const v0, 0x2080475

    goto :goto_0

    .line 300
    :pswitch_10
    const v0, 0x2080476

    goto :goto_0

    .line 302
    :pswitch_11
    const v0, 0x2080477

    goto :goto_0

    .line 304
    :pswitch_12
    const v0, 0x2080478

    goto :goto_0

    .line 306
    :pswitch_13
    const v0, 0x2080479

    goto :goto_0

    .line 308
    :pswitch_14
    const v0, 0x208047a

    goto :goto_0

    .line 310
    :pswitch_15
    const v0, 0x208047b

    goto :goto_0

    .line 312
    :pswitch_16
    const v0, 0x208047c

    goto :goto_0

    .line 314
    :pswitch_17
    const v0, 0x208047d

    goto :goto_0

    .line 317
    :pswitch_18
    const v0, 0x208047e

    goto :goto_0

    .line 319
    :pswitch_19
    const v0, 0x208047f

    goto :goto_0

    .line 321
    :pswitch_1a
    const v0, 0x2080480

    goto :goto_0

    .line 323
    :pswitch_1b
    const v0, 0x2080481

    goto :goto_0

    .line 325
    :pswitch_1c
    const v0, 0x2080482

    goto :goto_0

    .line 327
    :pswitch_1d
    const v0, 0x2080483

    goto :goto_0

    .line 329
    :pswitch_1e
    const v0, 0x2080484

    goto :goto_0

    .line 331
    :pswitch_1f
    const v0, 0x2080485

    goto :goto_0

    .line 333
    :pswitch_20
    const v0, 0x2080486

    goto :goto_0

    .line 335
    :pswitch_21
    const v0, 0x2080487

    goto/16 :goto_0

    .line 337
    :pswitch_22
    const v0, 0x2080488

    goto/16 :goto_0

    .line 339
    :pswitch_23
    const v0, 0x2080489

    goto/16 :goto_0

    .line 342
    :pswitch_24
    const v0, 0x208048a

    goto/16 :goto_0

    .line 344
    :pswitch_25
    const v0, 0x208048b

    goto/16 :goto_0

    .line 346
    :pswitch_26
    const v0, 0x208048c

    goto/16 :goto_0

    .line 348
    :pswitch_27
    const v0, 0x208048d

    goto/16 :goto_0

    .line 351
    :pswitch_28
    const v0, 0x208048e

    goto/16 :goto_0

    .line 353
    :pswitch_29
    const v0, 0x208048f

    goto/16 :goto_0

    .line 355
    :pswitch_2a
    const v0, 0x2080490

    goto/16 :goto_0

    .line 357
    :pswitch_2b
    const v0, 0x2080491

    goto/16 :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getConditionText(I)Ljava/lang/String;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 255
    :goto_0
    return-object v0

    .line 161
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 255
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 171
    :pswitch_5
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 175
    :pswitch_7
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 177
    :pswitch_8
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 180
    :pswitch_9
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    .line 182
    :pswitch_a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    .line 184
    :pswitch_b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    .line 186
    :pswitch_c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_0

    .line 188
    :pswitch_d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    .line 190
    :pswitch_e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_0

    .line 192
    :pswitch_f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    .line 194
    :pswitch_10
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    .line 196
    :pswitch_11
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0

    .line 198
    :pswitch_12
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_0

    .line 200
    :pswitch_13
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 202
    :pswitch_14
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 204
    :pswitch_15
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 206
    :pswitch_16
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 208
    :pswitch_17
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 210
    :pswitch_18
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 213
    :pswitch_19
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 215
    :pswitch_1a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 217
    :pswitch_1b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 219
    :pswitch_1c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 221
    :pswitch_1d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 223
    :pswitch_1e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 225
    :pswitch_1f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 227
    :pswitch_20
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 229
    :pswitch_21
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 231
    :pswitch_22
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 233
    :pswitch_23
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 235
    :pswitch_24
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 238
    :pswitch_25
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 240
    :pswitch_26
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 242
    :pswitch_27
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 244
    :pswitch_28
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 247
    :pswitch_29
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 249
    :pswitch_2a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 251
    :pswitch_2b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 253
    :pswitch_2c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method public getConditionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strId"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, val:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    :goto_0
    return-object v2

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 88
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 89
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLargeConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 102
    :goto_0
    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 101
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getLargeConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x2080114

    .line 472
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    :pswitch_0
    return v0

    .line 474
    :pswitch_1
    const v0, 0x208010e

    goto :goto_0

    .line 476
    :pswitch_2
    const v0, 0x208010f

    goto :goto_0

    .line 478
    :pswitch_3
    const v0, 0x2080110

    goto :goto_0

    .line 480
    :pswitch_4
    const v0, 0x2080111

    goto :goto_0

    .line 482
    :pswitch_5
    const v0, 0x2080112

    goto :goto_0

    .line 484
    :pswitch_6
    const v0, 0x2080113

    goto :goto_0

    .line 488
    :pswitch_7
    const v0, 0x2080115

    goto :goto_0

    .line 491
    :pswitch_8
    const v0, 0x2080116

    goto :goto_0

    .line 493
    :pswitch_9
    const v0, 0x2080117

    goto :goto_0

    .line 495
    :pswitch_a
    const v0, 0x2080118

    goto :goto_0

    .line 497
    :pswitch_b
    const v0, 0x2080119

    goto :goto_0

    .line 499
    :pswitch_c
    const v0, 0x208011a

    goto :goto_0

    .line 501
    :pswitch_d
    const v0, 0x208011b

    goto :goto_0

    .line 503
    :pswitch_e
    const v0, 0x208011c

    goto :goto_0

    .line 505
    :pswitch_f
    const v0, 0x208011d

    goto :goto_0

    .line 507
    :pswitch_10
    const v0, 0x208011e

    goto :goto_0

    .line 509
    :pswitch_11
    const v0, 0x208011f

    goto :goto_0

    .line 511
    :pswitch_12
    const v0, 0x2080120

    goto :goto_0

    .line 513
    :pswitch_13
    const v0, 0x2080121

    goto :goto_0

    .line 515
    :pswitch_14
    const v0, 0x2080122

    goto :goto_0

    .line 517
    :pswitch_15
    const v0, 0x2080123

    goto :goto_0

    .line 519
    :pswitch_16
    const v0, 0x2080124

    goto :goto_0

    .line 521
    :pswitch_17
    const v0, 0x2080125

    goto :goto_0

    .line 524
    :pswitch_18
    const v0, 0x2080126

    goto :goto_0

    .line 526
    :pswitch_19
    const v0, 0x2080127

    goto :goto_0

    .line 528
    :pswitch_1a
    const v0, 0x2080128

    goto :goto_0

    .line 530
    :pswitch_1b
    const v0, 0x2080129

    goto :goto_0

    .line 532
    :pswitch_1c
    const v0, 0x208012a

    goto :goto_0

    .line 534
    :pswitch_1d
    const v0, 0x208012b

    goto :goto_0

    .line 536
    :pswitch_1e
    const v0, 0x208012c

    goto :goto_0

    .line 538
    :pswitch_1f
    const v0, 0x208012d

    goto :goto_0

    .line 540
    :pswitch_20
    const v0, 0x208012e

    goto :goto_0

    .line 542
    :pswitch_21
    const v0, 0x208012f

    goto/16 :goto_0

    .line 544
    :pswitch_22
    const v0, 0x2080130

    goto/16 :goto_0

    .line 546
    :pswitch_23
    const v0, 0x2080131

    goto/16 :goto_0

    .line 549
    :pswitch_24
    const v0, 0x2080132

    goto/16 :goto_0

    .line 551
    :pswitch_25
    const v0, 0x2080133

    goto/16 :goto_0

    .line 553
    :pswitch_26
    const v0, 0x2080134

    goto/16 :goto_0

    .line 555
    :pswitch_27
    const v0, 0x2080135

    goto/16 :goto_0

    .line 558
    :pswitch_28
    const v0, 0x2080136

    goto/16 :goto_0

    .line 560
    :pswitch_29
    const v0, 0x2080137

    goto/16 :goto_0

    .line 562
    :pswitch_2a
    const v0, 0x2080138

    goto/16 :goto_0

    .line 564
    :pswitch_2b
    const v0, 0x2080139

    goto/16 :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getSmallConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    :goto_0
    return-object v2

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 115
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmallConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 128
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getSmallConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x20804d1

    .line 369
    packed-switch p1, :pswitch_data_0

    .line 463
    :goto_0
    :pswitch_0
    return v0

    .line 371
    :pswitch_1
    const v0, 0x20804cb

    goto :goto_0

    .line 373
    :pswitch_2
    const v0, 0x20804cc

    goto :goto_0

    .line 375
    :pswitch_3
    const v0, 0x20804cd

    goto :goto_0

    .line 377
    :pswitch_4
    const v0, 0x20804ce

    goto :goto_0

    .line 379
    :pswitch_5
    const v0, 0x20804cf

    goto :goto_0

    .line 381
    :pswitch_6
    const v0, 0x20804d0

    goto :goto_0

    .line 385
    :pswitch_7
    const v0, 0x20804d2

    goto :goto_0

    .line 388
    :pswitch_8
    const v0, 0x20804d3

    goto :goto_0

    .line 390
    :pswitch_9
    const v0, 0x20804d4

    goto :goto_0

    .line 392
    :pswitch_a
    const v0, 0x20804d5

    goto :goto_0

    .line 394
    :pswitch_b
    const v0, 0x20804d6

    goto :goto_0

    .line 396
    :pswitch_c
    const v0, 0x20804d7

    goto :goto_0

    .line 398
    :pswitch_d
    const v0, 0x20804d8

    goto :goto_0

    .line 400
    :pswitch_e
    const v0, 0x20804d9

    goto :goto_0

    .line 402
    :pswitch_f
    const v0, 0x20804da

    goto :goto_0

    .line 404
    :pswitch_10
    const v0, 0x20804db

    goto :goto_0

    .line 406
    :pswitch_11
    const v0, 0x20804dc

    goto :goto_0

    .line 408
    :pswitch_12
    const v0, 0x20804dd

    goto :goto_0

    .line 410
    :pswitch_13
    const v0, 0x20804de

    goto :goto_0

    .line 412
    :pswitch_14
    const v0, 0x20804df

    goto :goto_0

    .line 414
    :pswitch_15
    const v0, 0x20804e0

    goto :goto_0

    .line 416
    :pswitch_16
    const v0, 0x20804e1

    goto :goto_0

    .line 418
    :pswitch_17
    const v0, 0x20804e2

    goto :goto_0

    .line 421
    :pswitch_18
    const v0, 0x20804e3

    goto :goto_0

    .line 423
    :pswitch_19
    const v0, 0x20804e4

    goto :goto_0

    .line 425
    :pswitch_1a
    const v0, 0x20804e5

    goto :goto_0

    .line 427
    :pswitch_1b
    const v0, 0x20804e6

    goto :goto_0

    .line 429
    :pswitch_1c
    const v0, 0x20804e7

    goto :goto_0

    .line 431
    :pswitch_1d
    const v0, 0x20804e8

    goto :goto_0

    .line 433
    :pswitch_1e
    const v0, 0x20804e9

    goto :goto_0

    .line 435
    :pswitch_1f
    const v0, 0x20804ea

    goto :goto_0

    .line 437
    :pswitch_20
    const v0, 0x20804eb

    goto :goto_0

    .line 439
    :pswitch_21
    const v0, 0x20804ec

    goto/16 :goto_0

    .line 441
    :pswitch_22
    const v0, 0x20804ed

    goto/16 :goto_0

    .line 443
    :pswitch_23
    const v0, 0x20804ee

    goto/16 :goto_0

    .line 446
    :pswitch_24
    const v0, 0x20804ef

    goto/16 :goto_0

    .line 448
    :pswitch_25
    const v0, 0x20804f0

    goto/16 :goto_0

    .line 450
    :pswitch_26
    const v0, 0x20804f1

    goto/16 :goto_0

    .line 452
    :pswitch_27
    const v0, 0x20804f2

    goto/16 :goto_0

    .line 455
    :pswitch_28
    const v0, 0x20804f3

    goto/16 :goto_0

    .line 457
    :pswitch_29
    const v0, 0x20804f4

    goto/16 :goto_0

    .line 459
    :pswitch_2a
    const v0, 0x20804f5

    goto/16 :goto_0

    .line 461
    :pswitch_2b
    const v0, 0x20804f6

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 30
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 34
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const v2, 0x207000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StateResources"

    const-string v2, "!! can not find resource from com.htc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 45
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 47
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
