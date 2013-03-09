.class public abstract Lcom/htc/android/htcime/ezsip/EZSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "EZSIPView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;,
        Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;,
        Lcom/htc/android/htcime/ezsip/EZSIPView$Position;
    }
.end annotation


# static fields
.field protected static final T9IME_GridSize:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "EZSIPView"

.field protected static mLanguageSwitchMode:Z


# instance fields
.field protected mAutoCapMode:I

.field private mAutoSubstitute:Z

.field protected mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mKDB_RgnRadius:F

.field private mKDB_RgnRadiusPower2:I

.field protected mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

.field protected mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

.field protected mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

.field private mPredictionMode:Z

.field private mPrevPredictionMode:I

.field protected mShiftbyAutoCap:Z

.field protected mbDisable_gl:Z

.field protected spaceType:I

.field protected tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

.field protected word_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mLanguageSwitchMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;-><init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    .line 49
    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->word_count:I

    .line 50
    new-instance v0, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;-><init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    .line 53
    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->spaceType:I

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    .line 81
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mbDisable_gl:Z

    .line 83
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    .line 84
    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadiusPower2:I

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    .line 604
    new-instance v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;-><init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    .line 104
    return-void
.end method

.method public static GetSysLocale(I)I
    .locals 1
    .parameter "lang"

    .prologue
    .line 700
    packed-switch p0, :pswitch_data_0

    .line 788
    const/16 v0, 0x409

    .line 791
    .local v0, ret:I
    :goto_0
    return v0

    .line 703
    .end local v0           #ret:I
    :pswitch_0
    const/4 v0, 0x0

    .line 704
    .restart local v0       #ret:I
    goto :goto_0

    .line 706
    .end local v0           #ret:I
    :pswitch_1
    const/16 v0, 0x409

    .line 707
    .restart local v0       #ret:I
    goto :goto_0

    .line 710
    .end local v0           #ret:I
    :pswitch_2
    const/16 v0, 0x40c

    .line 711
    .restart local v0       #ret:I
    goto :goto_0

    .line 713
    .end local v0           #ret:I
    :pswitch_3
    const/16 v0, 0x407

    .line 714
    .restart local v0       #ret:I
    goto :goto_0

    .line 716
    .end local v0           #ret:I
    :pswitch_4
    const/16 v0, 0x410

    .line 717
    .restart local v0       #ret:I
    goto :goto_0

    .line 719
    .end local v0           #ret:I
    :pswitch_5
    const/16 v0, 0xc0a

    .line 720
    .restart local v0       #ret:I
    goto :goto_0

    .line 722
    .end local v0           #ret:I
    :pswitch_6
    const/16 v0, 0x416

    .line 723
    .restart local v0       #ret:I
    goto :goto_0

    .line 725
    .end local v0           #ret:I
    :pswitch_7
    const/16 v0, 0x419

    .line 726
    .restart local v0       #ret:I
    goto :goto_0

    .line 728
    .end local v0           #ret:I
    :pswitch_8
    const/16 v0, 0x405

    .line 729
    .restart local v0       #ret:I
    goto :goto_0

    .line 731
    .end local v0           #ret:I
    :pswitch_9
    const/16 v0, 0x406

    .line 732
    .restart local v0       #ret:I
    goto :goto_0

    .line 734
    .end local v0           #ret:I
    :pswitch_a
    const/16 v0, 0x41d

    .line 735
    .restart local v0       #ret:I
    goto :goto_0

    .line 737
    .end local v0           #ret:I
    :pswitch_b
    const/16 v0, 0x414

    .line 738
    .restart local v0       #ret:I
    goto :goto_0

    .line 740
    .end local v0           #ret:I
    :pswitch_c
    const/16 v0, 0x413

    .line 741
    .restart local v0       #ret:I
    goto :goto_0

    .line 743
    .end local v0           #ret:I
    :pswitch_d
    const/16 v0, 0x40b

    .line 744
    .restart local v0       #ret:I
    goto :goto_0

    .line 746
    .end local v0           #ret:I
    :pswitch_e
    const/16 v0, 0x415

    .line 747
    .restart local v0       #ret:I
    goto :goto_0

    .line 749
    .end local v0           #ret:I
    :pswitch_f
    const/16 v0, 0x401

    .line 750
    .restart local v0       #ret:I
    goto :goto_0

    .line 752
    .end local v0           #ret:I
    :pswitch_10
    const/16 v0, 0x41f

    .line 753
    .restart local v0       #ret:I
    goto :goto_0

    .line 755
    .end local v0           #ret:I
    :pswitch_11
    const/16 v0, 0x418

    .line 756
    .restart local v0       #ret:I
    goto :goto_0

    .line 758
    .end local v0           #ret:I
    :pswitch_12
    const/16 v0, 0x408

    .line 759
    .restart local v0       #ret:I
    goto :goto_0

    .line 761
    .end local v0           #ret:I
    :pswitch_13
    const/16 v0, 0x40e

    .line 762
    .restart local v0       #ret:I
    goto :goto_0

    .line 764
    .end local v0           #ret:I
    :pswitch_14
    const/16 v0, 0x41b

    .line 765
    .restart local v0       #ret:I
    goto :goto_0

    .line 767
    .end local v0           #ret:I
    :pswitch_15
    const/16 v0, 0x24

    .line 768
    .restart local v0       #ret:I
    goto :goto_0

    .line 770
    .end local v0           #ret:I
    :pswitch_16
    const/16 v0, 0x80

    .line 771
    .restart local v0       #ret:I
    goto :goto_0

    .line 773
    .end local v0           #ret:I
    :pswitch_17
    const/16 v0, 0x59

    .line 774
    .restart local v0       #ret:I
    goto :goto_0

    .line 776
    .end local v0           #ret:I
    :pswitch_18
    const/4 v0, 0x2

    .line 777
    .restart local v0       #ret:I
    goto :goto_0

    .line 779
    .end local v0           #ret:I
    :pswitch_19
    const/16 v0, 0x25

    .line 780
    .restart local v0       #ret:I
    goto :goto_0

    .line 782
    .end local v0           #ret:I
    :pswitch_1a
    const/16 v0, 0x26

    .line 783
    .restart local v0       #ret:I
    goto :goto_0

    .line 785
    .end local v0           #ret:I
    :pswitch_1b
    const/16 v0, 0x27

    .line 786
    .restart local v0       #ret:I
    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch -0x1
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
        :pswitch_2
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private QWKDBIDTransfer(I)I
    .locals 1
    .parameter "orgID"

    .prologue
    .line 796
    if-nez p1, :cond_0

    .line 807
    .end local p1
    :goto_0
    :pswitch_0
    return p1

    .line 799
    .restart local p1
    :cond_0
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_1
    const v0, 0x8000

    or-int/2addr p1, v0

    goto :goto_0

    .line 805
    :pswitch_2
    const v0, 0x9000

    or-int/2addr p1, v0

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static get12KDBnamebyLang(I)I
    .locals 1
    .parameter "lang"

    .prologue
    .line 872
    sparse-switch p0, :sswitch_data_0

    .line 880
    invoke-static {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, 0xa00

    :goto_0
    return v0

    .line 874
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 877
    :sswitch_1
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, 0xa00

    goto :goto_0

    .line 872
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method private isQWERTY()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 516
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    if-nez v1, :cond_2

    .line 520
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionAdjustX(Lcom/htc/android/htcime/ezsip/Keyboard$Key;I)I
    .locals 5
    .parameter "key"
    .parameter "pos_x"

    .prologue
    .line 566
    iget v3, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    .line 567
    .local v3, width:I
    iget v2, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    .line 568
    .local v2, start_offset:I
    sget v4, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    add-int/lit8 v0, v4, -0x1

    .line 575
    .local v0, adjust_size:I
    sub-int v1, p2, v2

    .line 576
    .local v1, pos_x_in_btn:I
    if-ge v1, v0, :cond_1

    .line 577
    add-int/2addr p2, v0

    .line 581
    :cond_0
    :goto_0
    return p2

    .line 578
    :cond_1
    sub-int v4, v3, v0

    if-lt v1, v4, :cond_0

    .line 579
    sub-int/2addr p2, v0

    goto :goto_0
.end method

.method private positionAdjustY(Lcom/htc/android/htcime/ezsip/Keyboard$Key;I)I
    .locals 5
    .parameter "key"
    .parameter "pos_y"

    .prologue
    .line 586
    iget v1, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    .line 587
    .local v1, height:I
    iget v3, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    .line 588
    .local v3, start_offset:I
    sget v4, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    add-int/lit8 v0, v4, -0x1

    .line 595
    .local v0, adjust_size:I
    sub-int v2, p2, v3

    .line 596
    .local v2, pos_y_in_btn:I
    if-ge v2, v0, :cond_1

    .line 597
    add-int/2addr p2, v0

    .line 601
    :cond_0
    :goto_0
    return p2

    .line 598
    :cond_1
    sub-int v4, v1, v0

    if-lt v2, v4, :cond_0

    .line 599
    sub-int/2addr p2, v0

    goto :goto_0
.end method


# virtual methods
.method public AddWordDisableButtons(Z)V
    .locals 5
    .parameter "disable"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 478
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    .line 480
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 481
    .local v0, tmpkey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 482
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x18

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    .line 485
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0xf

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_2

    .line 488
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x17

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_3

    .line 491
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x10

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_4

    .line 494
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v1, :cond_5

    .line 496
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v4, :cond_b

    :goto_5
    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 497
    :cond_5
    return-void

    :cond_6
    move v1, v3

    .line 482
    goto :goto_0

    :cond_7
    move v1, v3

    .line 485
    goto :goto_1

    :cond_8
    move v1, v3

    .line 488
    goto :goto_2

    :cond_9
    move v1, v3

    .line 491
    goto :goto_3

    :cond_a
    move v1, v3

    .line 494
    goto :goto_4

    :cond_b
    move v2, v3

    .line 496
    goto :goto_5
.end method

.method public DisableLangSwitchButton(Z)V
    .locals 5
    .parameter "disable"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 450
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x97

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x7e

    if-ne v1, v4, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 455
    :cond_0
    const/4 p1, 0x0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v4, -0x3

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 458
    .local v0, tmpkey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_2

    .line 459
    if-nez p1, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x18

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_3

    .line 462
    if-nez p1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0xf

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_4

    .line 465
    if-nez p1, :cond_a

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 466
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x17

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_5

    .line 468
    if-nez p1, :cond_b

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0x10

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_7

    .line 471
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mbDisable_gl:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mbDisable_gl:Z

    if-nez v1, :cond_c

    :cond_6
    :goto_4
    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 472
    :cond_7
    return-void

    :cond_8
    move v1, v3

    .line 459
    goto :goto_0

    :cond_9
    move v1, v3

    .line 462
    goto :goto_1

    :cond_a
    move v1, v3

    .line 465
    goto :goto_2

    :cond_b
    move v1, v3

    .line 468
    goto :goto_3

    :cond_c
    move v2, v3

    .line 471
    goto :goto_4

    :cond_d
    if-eqz p1, :cond_6

    move v2, v3

    goto :goto_4
.end method

.method protected InitHTCFeature()V
    .locals 4

    .prologue
    const v3, 0x3fb4fdf4

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const v1, 0x7240003

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 189
    sget v0, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_PortRgnRadius:I

    int-to-float v0, v0

    sget v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    .line 193
    :goto_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadiusPower2:I

    .line 194
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x724

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->spaceType:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    goto :goto_0

    .line 191
    :cond_1
    sget v0, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_LandRgnRadius:I

    int-to-float v0, v0

    sget v1, Lcom/htc/android/htcime/ezsip/Keyboard;->sKDB_GridSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    goto :goto_1
.end method

.method protected clearWCL()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 906
    const/high16 v0, 0x704

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->sendKeyEvent(I)V

    .line 907
    :cond_0
    return-void
.end method

.method protected doAutoCapCheck(I)I
    .locals 5
    .parameter "targetShiftState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 206
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 208
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_1

    .line 209
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    iget v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoCapMode:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v4, :cond_3

    .line 212
    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    if-eq v2, v1, :cond_0

    move v1, p1

    goto :goto_0

    .line 216
    :cond_3
    iget v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    if-eq v4, v1, :cond_0

    .line 219
    if-ne p1, v2, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    .line 221
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 224
    .local v0, cap:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoCapMode:I

    packed-switch v1, :pswitch_data_0

    .line 239
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    if-eqz v1, :cond_5

    .line 240
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :goto_3
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    :cond_5
    move v1, p1

    .line 242
    goto :goto_0

    .end local v0           #cap:I
    :cond_6
    move v1, v3

    .line 219
    goto :goto_1

    .line 227
    .restart local v0       #cap:I
    :pswitch_0
    const/4 p1, 0x3

    .line 228
    goto :goto_2

    .line 230
    :pswitch_1
    if-eqz v0, :cond_4

    .line 231
    const/4 p1, 0x2

    goto :goto_2

    .line 234
    :pswitch_2
    if-eqz v0, :cond_4

    .line 235
    const/4 p1, 0x2

    goto :goto_2

    :cond_7
    move v2, v3

    .line 240
    goto :goto_3

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected get20KDBnamebyLang(I)I
    .locals 1
    .parameter "lang"

    .prologue
    .line 887
    sparse-switch p1, :sswitch_data_0

    .line 899
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, 0xb00

    :goto_0
    return v0

    .line 889
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 892
    :sswitch_1
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, 0xb00

    goto :goto_0

    .line 896
    :sswitch_2
    const/16 v0, 0xbf0

    goto :goto_0

    .line 887
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method protected getAutoSubstitute()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoSubstitute:Z

    return v0
.end method

.method protected getPredictionMode()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    return v0
.end method

.method protected getQWKDBnamebyLang(II)I
    .locals 5
    .parameter "lang"
    .parameter "orientation"

    .prologue
    const/16 v1, 0xd00

    const/16 v3, 0xc09

    const/16 v0, 0xc07

    const/16 v2, 0xc00

    const/4 v4, 0x1

    .line 814
    packed-switch p1, :pswitch_data_0

    .line 865
    :pswitch_0
    if-ne p2, v4, :cond_8

    :goto_0
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    :goto_1
    return v0

    .line 817
    :pswitch_1
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    if-ne p2, v4, :cond_0

    const/16 v0, 0xd07

    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    .line 820
    :cond_1
    if-ne p2, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-static {p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 824
    :pswitch_2
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 825
    if-ne p2, v4, :cond_3

    const/16 v0, 0xd07

    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    .line 827
    :cond_4
    if-ne p2, v4, :cond_5

    const/16 v0, 0xd09

    :goto_3
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_3

    .line 847
    :pswitch_3
    if-ne p2, v4, :cond_6

    const/16 v3, 0xd09

    :cond_6
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    .line 851
    :pswitch_4
    if-ne p2, v4, :cond_7

    const/16 v0, 0xd1d

    :goto_4
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    :cond_7
    const/16 v0, 0xc1d

    goto :goto_4

    .line 854
    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->QWKDBIDTransfer(I)I

    move-result v0

    goto :goto_1

    :cond_8
    move v1, v2

    .line 865
    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected popPredictionMode()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 381
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    if-eq v1, v2, :cond_0

    .line 382
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    if-ne v1, v0, :cond_1

    .line 383
    .local v0, tmp:Z
    :goto_0
    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    .line 386
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    if-eq v0, v1, :cond_0

    .line 387
    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    .line 388
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->setIMEInputMode()V

    .line 391
    .end local v0           #tmp:Z
    :cond_0
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V
    .locals 9
    .parameter "key"
    .parameter "pos"

    .prologue
    const/high16 v8, 0x4000

    .line 529
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 562
    :goto_0
    return-void

    .line 532
    :cond_0
    iget v6, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    iget v7, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    add-int/2addr v6, v7

    iget v7, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float v2, v6, v8

    .line 533
    .local v2, k_x:F
    iget v6, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    iget v7, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    add-int/2addr v6, v7

    iget v7, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float v3, v6, v8

    .line 534
    .local v3, k_y:F
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 535
    .local v4, xDist:F
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 536
    .local v5, yDist:F
    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float v1, v6, v7

    .line 537
    .local v1, distancePower2:F
    iget v6, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadiusPower2:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    .line 545
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 546
    .local v0, distance:F
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v0

    add-float/2addr v6, v2

    float-to-int v6, v6

    iput v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 547
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    iget v7, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKDB_RgnRadius:F

    mul-float/2addr v6, v7

    div-float/2addr v6, v0

    add-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 557
    .end local v0           #distance:F
    :cond_1
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    invoke-direct {p0, p1, v6}, Lcom/htc/android/htcime/ezsip/EZSIPView;->positionAdjustX(Lcom/htc/android/htcime/ezsip/Keyboard$Key;I)I

    move-result v6

    iput v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 558
    iget v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    invoke-direct {p0, p1, v6}, Lcom/htc/android/htcime/ezsip/EZSIPView;->positionAdjustY(Lcom/htc/android/htcime/ezsip/Keyboard$Key;I)I

    move-result v6

    iput v6, p2, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    goto :goto_0
.end method

.method protected pushPredictionMode()V
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    .line 371
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected repeatKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 286
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mRepeatKeyIndex:I

    aget-object v0, v1, v2

    .line 288
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_0

    .line 335
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mSIP_ID:I

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 339
    :cond_0
    :goto_0
    return v5

    .line 292
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v1, :cond_2

    .line 293
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoPressCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoPressCount:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 294
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoPressDelCan:Z

    .line 295
    const/high16 v1, 0x71a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mSIP_ID:I

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEventDown(I)V

    goto :goto_0

    .line 317
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 320
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 323
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 326
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 330
    :sswitch_5
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAddWordFlag:Z

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mSIP_ID:I

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_2
        -0x14 -> :sswitch_1
        -0x13 -> :sswitch_4
        -0x12 -> :sswitch_3
        0x8 -> :sswitch_0
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public sendKeyEvent(I)V
    .locals 1
    .parameter "keyID"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 350
    return-void
.end method

.method protected sendKeyEvent(III)V
    .locals 1
    .parameter "keyID"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(III)V

    .line 362
    return-void
.end method

.method protected abstract setIMEInputMode()V
.end method

.method public setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V
    .locals 5
    .parameter "keyboard"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 118
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 120
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->setShifted(Z)Z

    .line 122
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 124
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 120
    goto :goto_0

    :cond_2
    move v1, v2

    .line 123
    goto :goto_1
.end method

.method protected setPredictionMode(ZZ)V
    .locals 3
    .parameter "mode"
    .parameter "isUser"

    .prologue
    const/4 v2, 0x7

    .line 400
    if-eqz p2, :cond_4

    .line 401
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean p1, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    .line 430
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    if-eq v0, p1, :cond_1

    .line 431
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->isActiveOnAllField()Z

    move-result v0

    if-nez v0, :cond_3

    .line 435
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v0, v2, :cond_3

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/trace/Trace;->disable()V

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mTrace:Lcom/htc/android/htcime/ezsip/trace/Trace;

    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/trace/Trace;->onTapPredictionModeChange(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->setIMEInputMode()V

    .line 443
    return-void

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 404
    const/4 p1, 0x0

    goto :goto_0

    .line 406
    :cond_5
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->isQWERTY()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-eq v0, v2, :cond_6

    .line 410
    const/4 p1, 0x0

    goto :goto_0

    .line 411
    :cond_6
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v0, :cond_7

    .line 412
    const/4 p1, 0x0

    goto :goto_0

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v0, v2, :cond_8

    .line 415
    const/4 p1, 0x1

    goto :goto_0

    .line 416
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-eqz v0, :cond_9

    .line 417
    const/4 p1, 0x0

    goto :goto_0

    .line 418
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 p1, 0x0

    goto :goto_0

    .line 424
    :cond_a
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v0, :cond_0

    .line 426
    :cond_b
    const/4 p1, 0x0

    goto/16 :goto_0
.end method

.method protected setShiftCycle(I)I
    .locals 2
    .parameter "now"

    .prologue
    const/4 v0, 0x1

    .line 246
    packed-switch p1, :pswitch_data_0

    .line 265
    const/4 v0, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 250
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 253
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    if-eqz v1, :cond_1

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mCapsKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-nez v1, :cond_0

    .line 262
    const/4 v0, 0x3

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected setShiftCycleByCaps(I)I
    .locals 2
    .parameter "now"

    .prologue
    const/4 v0, 0x3

    .line 270
    packed-switch p1, :pswitch_data_0

    .line 280
    const/4 v0, 0x4

    :goto_0
    :pswitch_0
    return v0

    .line 272
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mShiftbyAutoCap:Z

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract shiftStateCheck()V
.end method

.method public startInput()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->init_lpd_data()V

    .line 166
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPredictionMode:Z

    .line 167
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoSubstitute:Z

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mPrevPredictionMode:I

    .line 171
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mAutoCapMode:I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mContentTypePredictionMode:Z

    .line 176
    return-void
.end method

.method protected switchNativeKeyboard(ZII)V
    .locals 2
    .parameter "nativeMode"
    .parameter "nativeResId"
    .parameter "engResId"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-ne v0, p2, :cond_3

    .line 138
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 144
    :cond_0
    :goto_0
    sput-boolean p1, Lcom/htc/android/htcime/ezsip/EZSIPView;->mLanguageSwitchMode:Z

    .line 145
    if-eqz p1, :cond_4

    .line 146
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v0, p2, :cond_2

    .line 147
    :cond_1
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mNativeLanguageKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 158
    :goto_1
    return-void

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-ne v0, p3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v0, p3, :cond_6

    .line 154
    :cond_5
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZSIPView;->mEnglishKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    goto :goto_1
.end method
