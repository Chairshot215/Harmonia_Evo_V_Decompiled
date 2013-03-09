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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StateResources"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Huafeng2ACCU(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x1d

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xe

    goto :goto_0

    :pswitch_8
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x17

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x15

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_12
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_14
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_15
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_16
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_17
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_18
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_19
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_1a
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_1b
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_1c
    const/16 v0, 0x16

    goto :goto_0

    :pswitch_1d
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_1e
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_1f
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_20
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_21
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_22
    const/16 v0, 0x13

    goto :goto_0

    :pswitch_23
    const/16 v0, 0xb

    goto :goto_0

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

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public getConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getConditionResourceId(I)I
    .locals 1

    const v0, 0x208046c

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x2080466

    goto :goto_0

    :pswitch_2
    const v0, 0x2080467

    goto :goto_0

    :pswitch_3
    const v0, 0x2080468

    goto :goto_0

    :pswitch_4
    const v0, 0x2080469

    goto :goto_0

    :pswitch_5
    const v0, 0x208046a

    goto :goto_0

    :pswitch_6
    const v0, 0x208046b

    goto :goto_0

    :pswitch_7
    const v0, 0x208046d

    goto :goto_0

    :pswitch_8
    const v0, 0x208046e

    goto :goto_0

    :pswitch_9
    const v0, 0x208046f

    goto :goto_0

    :pswitch_a
    const v0, 0x2080470

    goto :goto_0

    :pswitch_b
    const v0, 0x2080471

    goto :goto_0

    :pswitch_c
    const v0, 0x2080472

    goto :goto_0

    :pswitch_d
    const v0, 0x2080473

    goto :goto_0

    :pswitch_e
    const v0, 0x2080474

    goto :goto_0

    :pswitch_f
    const v0, 0x2080475

    goto :goto_0

    :pswitch_10
    const v0, 0x2080476

    goto :goto_0

    :pswitch_11
    const v0, 0x2080477

    goto :goto_0

    :pswitch_12
    const v0, 0x2080478

    goto :goto_0

    :pswitch_13
    const v0, 0x2080479

    goto :goto_0

    :pswitch_14
    const v0, 0x208047a

    goto :goto_0

    :pswitch_15
    const v0, 0x208047b

    goto :goto_0

    :pswitch_16
    const v0, 0x208047c

    goto :goto_0

    :pswitch_17
    const v0, 0x208047d

    goto :goto_0

    :pswitch_18
    const v0, 0x208047e

    goto :goto_0

    :pswitch_19
    const v0, 0x208047f

    goto :goto_0

    :pswitch_1a
    const v0, 0x2080480

    goto :goto_0

    :pswitch_1b
    const v0, 0x2080481

    goto :goto_0

    :pswitch_1c
    const v0, 0x2080482

    goto :goto_0

    :pswitch_1d
    const v0, 0x2080483

    goto :goto_0

    :pswitch_1e
    const v0, 0x2080484

    goto :goto_0

    :pswitch_1f
    const v0, 0x2080485

    goto :goto_0

    :pswitch_20
    const v0, 0x2080486

    goto :goto_0

    :pswitch_21
    const v0, 0x2080487

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x2080488

    goto/16 :goto_0

    :pswitch_23
    const v0, 0x2080489

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x208048a

    goto/16 :goto_0

    :pswitch_25
    const v0, 0x208048b

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x208048c

    goto/16 :goto_0

    :pswitch_27
    const v0, 0x208048d

    goto/16 :goto_0

    :pswitch_28
    const v0, 0x208048e

    goto/16 :goto_0

    :pswitch_29
    const v0, 0x208048f

    goto/16 :goto_0

    :pswitch_2a
    const v0, 0x2080490

    goto/16 :goto_0

    :pswitch_2b
    const v0, 0x2080491

    goto/16 :goto_0

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

    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_1f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_22
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_23
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_24
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_25
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_26
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_27
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_28
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_29
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_2a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_2b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    goto/16 :goto_0

    :pswitch_2c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    goto/16 :goto_0

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

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLargeConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getLargeConditionResourceId(I)I
    .locals 1

    const v0, 0x2080114

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x208010e

    goto :goto_0

    :pswitch_2
    const v0, 0x208010f

    goto :goto_0

    :pswitch_3
    const v0, 0x2080110

    goto :goto_0

    :pswitch_4
    const v0, 0x2080111

    goto :goto_0

    :pswitch_5
    const v0, 0x2080112

    goto :goto_0

    :pswitch_6
    const v0, 0x2080113

    goto :goto_0

    :pswitch_7
    const v0, 0x2080115

    goto :goto_0

    :pswitch_8
    const v0, 0x2080116

    goto :goto_0

    :pswitch_9
    const v0, 0x2080117

    goto :goto_0

    :pswitch_a
    const v0, 0x2080118

    goto :goto_0

    :pswitch_b
    const v0, 0x2080119

    goto :goto_0

    :pswitch_c
    const v0, 0x208011a

    goto :goto_0

    :pswitch_d
    const v0, 0x208011b

    goto :goto_0

    :pswitch_e
    const v0, 0x208011c

    goto :goto_0

    :pswitch_f
    const v0, 0x208011d

    goto :goto_0

    :pswitch_10
    const v0, 0x208011e

    goto :goto_0

    :pswitch_11
    const v0, 0x208011f

    goto :goto_0

    :pswitch_12
    const v0, 0x2080120

    goto :goto_0

    :pswitch_13
    const v0, 0x2080121

    goto :goto_0

    :pswitch_14
    const v0, 0x2080122

    goto :goto_0

    :pswitch_15
    const v0, 0x2080123

    goto :goto_0

    :pswitch_16
    const v0, 0x2080124

    goto :goto_0

    :pswitch_17
    const v0, 0x2080125

    goto :goto_0

    :pswitch_18
    const v0, 0x2080126

    goto :goto_0

    :pswitch_19
    const v0, 0x2080127

    goto :goto_0

    :pswitch_1a
    const v0, 0x2080128

    goto :goto_0

    :pswitch_1b
    const v0, 0x2080129

    goto :goto_0

    :pswitch_1c
    const v0, 0x208012a

    goto :goto_0

    :pswitch_1d
    const v0, 0x208012b

    goto :goto_0

    :pswitch_1e
    const v0, 0x208012c

    goto :goto_0

    :pswitch_1f
    const v0, 0x208012d

    goto :goto_0

    :pswitch_20
    const v0, 0x208012e

    goto :goto_0

    :pswitch_21
    const v0, 0x208012f

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x2080130

    goto/16 :goto_0

    :pswitch_23
    const v0, 0x2080131

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x2080132

    goto/16 :goto_0

    :pswitch_25
    const v0, 0x2080133

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x2080134

    goto/16 :goto_0

    :pswitch_27
    const v0, 0x2080135

    goto/16 :goto_0

    :pswitch_28
    const v0, 0x2080136

    goto/16 :goto_0

    :pswitch_29
    const v0, 0x2080137

    goto/16 :goto_0

    :pswitch_2a
    const v0, 0x2080138

    goto/16 :goto_0

    :pswitch_2b
    const v0, 0x2080139

    goto/16 :goto_0

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

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmallConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getSmallConditionResourceId(I)I
    .locals 1

    const v0, 0x20804d1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x20804cb

    goto :goto_0

    :pswitch_2
    const v0, 0x20804cc

    goto :goto_0

    :pswitch_3
    const v0, 0x20804cd

    goto :goto_0

    :pswitch_4
    const v0, 0x20804ce

    goto :goto_0

    :pswitch_5
    const v0, 0x20804cf

    goto :goto_0

    :pswitch_6
    const v0, 0x20804d0

    goto :goto_0

    :pswitch_7
    const v0, 0x20804d2

    goto :goto_0

    :pswitch_8
    const v0, 0x20804d3

    goto :goto_0

    :pswitch_9
    const v0, 0x20804d4

    goto :goto_0

    :pswitch_a
    const v0, 0x20804d5

    goto :goto_0

    :pswitch_b
    const v0, 0x20804d6

    goto :goto_0

    :pswitch_c
    const v0, 0x20804d7

    goto :goto_0

    :pswitch_d
    const v0, 0x20804d8

    goto :goto_0

    :pswitch_e
    const v0, 0x20804d9

    goto :goto_0

    :pswitch_f
    const v0, 0x20804da

    goto :goto_0

    :pswitch_10
    const v0, 0x20804db

    goto :goto_0

    :pswitch_11
    const v0, 0x20804dc

    goto :goto_0

    :pswitch_12
    const v0, 0x20804dd

    goto :goto_0

    :pswitch_13
    const v0, 0x20804de

    goto :goto_0

    :pswitch_14
    const v0, 0x20804df

    goto :goto_0

    :pswitch_15
    const v0, 0x20804e0

    goto :goto_0

    :pswitch_16
    const v0, 0x20804e1

    goto :goto_0

    :pswitch_17
    const v0, 0x20804e2

    goto :goto_0

    :pswitch_18
    const v0, 0x20804e3

    goto :goto_0

    :pswitch_19
    const v0, 0x20804e4

    goto :goto_0

    :pswitch_1a
    const v0, 0x20804e5

    goto :goto_0

    :pswitch_1b
    const v0, 0x20804e6

    goto :goto_0

    :pswitch_1c
    const v0, 0x20804e7

    goto :goto_0

    :pswitch_1d
    const v0, 0x20804e8

    goto :goto_0

    :pswitch_1e
    const v0, 0x20804e9

    goto :goto_0

    :pswitch_1f
    const v0, 0x20804ea

    goto :goto_0

    :pswitch_20
    const v0, 0x20804eb

    goto :goto_0

    :pswitch_21
    const v0, 0x20804ec

    goto/16 :goto_0

    :pswitch_22
    const v0, 0x20804ed

    goto/16 :goto_0

    :pswitch_23
    const v0, 0x20804ee

    goto/16 :goto_0

    :pswitch_24
    const v0, 0x20804ef

    goto/16 :goto_0

    :pswitch_25
    const v0, 0x20804f0

    goto/16 :goto_0

    :pswitch_26
    const v0, 0x20804f1

    goto/16 :goto_0

    :pswitch_27
    const v0, 0x20804f2

    goto/16 :goto_0

    :pswitch_28
    const v0, 0x20804f3

    goto/16 :goto_0

    :pswitch_29
    const v0, 0x20804f4

    goto/16 :goto_0

    :pswitch_2a
    const v0, 0x20804f5

    goto/16 :goto_0

    :pswitch_2b
    const v0, 0x20804f6

    goto/16 :goto_0

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

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z

    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const v2, 0x207000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "StateResources"

    const-string v2, "!! can not find resource from com.htc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

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
