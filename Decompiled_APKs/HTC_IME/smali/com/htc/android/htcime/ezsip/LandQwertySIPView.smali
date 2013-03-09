.class public Lcom/htc/android/htcime/ezsip/LandQwertySIPView;
.super Lcom/htc/android/htcime/ezsip/EZSIPView;
.source "LandQwertySIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "LandQwertySIPView"

.field private static final XT9:Ljava/lang/String; = "XT9"


# instance fields
.field private dismissKey:Z

.field private mGreekKB:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mPaint:Landroid/graphics/Paint;

.field private mXT9Width:F

.field private mXT9_Drawable:Landroid/graphics/drawable/Drawable;

.field private xt9_pos_x:I

.field private xt9_pos_y:I

.field private xt9_rus_pos_x:I

.field private xt9_rus_pos_y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 60
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    .line 1054
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->dismissKey:Z

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Landscape Qwerty"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x7000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4110

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "XT9"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9Width:F

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    .line 76
    return-void
.end method

.method private adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 5
    .parameter "mKeys"

    .prologue
    const/16 v3, -0x10

    const/4 v4, 0x1

    .line 1056
    const/4 v0, 0x0

    .line 1057
    .local v0, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v1, 0x0

    .line 1059
    .local v1, space_type_inc:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mbDisable_gl:Z

    .line 1060
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1061
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x17

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1082
    :goto_0
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1093
    :cond_0
    return-void

    .line 1064
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->dismissKey:Z

    if-eqz v2, :cond_2

    .line 1065
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x63

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1066
    const/4 v1, 0x3

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1071
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mbDisable_gl:Z

    goto :goto_0

    .line 1075
    :cond_3
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_4

    .line 1076
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x18

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0

    .line 1078
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0
.end method

.method private handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z
    .locals 7
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v2, 0x80

    const/4 v4, 0x1

    const/high16 v6, 0x2300

    const/4 v3, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->getAccentMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 464
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 465
    .local v0, accentString:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getWordIndex()I

    move-result v5

    sput v5, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAccentWordIndex:I

    .line 467
    iget-object v5, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 513
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_9

    :goto_0
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    .line 517
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v4, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 519
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->shiftStateCheck()V

    .line 522
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setAccentMode(Z)V

    move v3, v4

    .line 526
    .end local v0           #accentString:Ljava/lang/CharSequence;
    :cond_2
    return v3

    .line 470
    .restart local v0       #accentString:Ljava/lang/CharSequence;
    :sswitch_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 471
    sget-object v2, Lcom/htc/android/htcime/XT9IME/XT9IME;->mSpecTerms:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    const/high16 v2, 0x711

    or-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_1

    .line 470
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 479
    .end local v1           #i:I
    :sswitch_1
    sget v2, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAccentWordIndex:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4

    .line 480
    const/high16 v2, 0x71c

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 481
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_1

    .line 484
    :cond_4
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 491
    :sswitch_2
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 497
    :sswitch_3
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v5, :cond_5

    .line 498
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 500
    :cond_5
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_6

    :goto_3
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 504
    :sswitch_4
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-eq v4, v5, :cond_7

    .line 506
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v2, v6

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto :goto_1

    .line 508
    :cond_7
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v6, v6, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    if-eqz v6, :cond_8

    :goto_4
    or-int/2addr v2, v5

    invoke-virtual {p0, v2, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    :cond_9
    move v2, v3

    .line 513
    goto/16 :goto_0

    .line 467
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_0
        -0x2 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2e -> :sswitch_2
        0x3b -> :sswitch_3
        0x40 -> :sswitch_2
        0x3c2 -> :sswitch_4
    .end sparse-switch
.end method

.method private onInterceptKeyUp()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 693
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 694
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 695
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 696
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 697
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 701
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private postPrediction(I)V
    .locals 5
    .parameter "keycode"

    .prologue
    .line 448
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_PostPrediction:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 450
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->cancel()V

    .line 451
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    mul-int/lit8 v1, v1, 0x19

    rsub-int/lit8 v0, v1, 0x64

    .line 453
    .local v0, predic_delay:I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 454
    const/16 v0, 0x64

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPredictHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;

    const/4 v3, 0x5

    const/high16 v4, 0x1800

    invoke-virtual {v2, v3, v4, p1}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/htcime/ezsip/EZSIPView$PredictHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    .end local v0           #predic_delay:I
    :cond_1
    return-void
.end method

.method private quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z
    .locals 19
    .parameter "mKey"
    .parameter "pos_x"
    .parameter "pos_y"
    .parameter "threshold"

    .prologue
    .line 531
    sget v11, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    if-eqz v11, :cond_0

    .line 532
    const/4 v11, 0x0

    .line 602
    :goto_0
    return v11

    .line 534
    :cond_0
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, -0x2

    if-eq v11, v12, :cond_1

    .line 537
    const/4 v11, 0x0

    goto :goto_0

    .line 540
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v11, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v11}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v11

    iget v11, v11, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-lez v11, :cond_c

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v12, 0xff

    if-eq v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v12, v12, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v13, v13, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    sub-long/2addr v11, v13

    move/from16 v0, p4

    int-to-long v13, v0

    cmp-long v11, v11, v13

    if-gez v11, :cond_c

    .line 543
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    const-wide/16 v12, 0x0

    iput-wide v12, v11, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 544
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sparse-switch v11, :sswitch_data_0

    .line 598
    const/4 v11, 0x0

    goto :goto_0

    .line 548
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v8

    .line 549
    .local v8, shift:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x61

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    .line 551
    .local v2, a:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v8, :cond_2

    if-eqz v2, :cond_2

    move/from16 v0, p3

    int-to-double v11, v0

    iget v13, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    iget v0, v8, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-lez v11, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 553
    :cond_3
    const v11, 0x8000061

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 554
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 557
    .end local v2           #a:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v8           #shift:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    .line 558
    .local v5, m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x6c

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    .line 559
    .local v4, l:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 560
    const/high16 v12, 0x800

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v11

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->distFrom(II)I

    move-result v13

    if-le v11, v13, :cond_4

    const/16 v11, 0x6c

    :goto_1
    or-int/2addr v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 562
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 560
    :cond_4
    const/16 v11, 0x6d

    goto :goto_1

    .line 565
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 567
    .end local v4           #l:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v5           #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x7a

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v10

    .line 568
    .local v10, z:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    .line 570
    .local v3, comma:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v10, :cond_6

    if-eqz v3, :cond_6

    move/from16 v0, p3

    int-to-double v11, v0

    iget v13, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    iget v0, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-lez v11, :cond_7

    .line 571
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 574
    :cond_7
    const v11, 0x800007a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 575
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 578
    .end local v3           #comma:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v10           #z:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x6e

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    .line 579
    .local v6, n:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v7

    .line 581
    .local v7, period:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    move/from16 v0, p3

    int-to-double v11, v0

    iget v13, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    iget v0, v7, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-lez v11, :cond_9

    .line 582
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 585
    :cond_9
    const v11, 0x800006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 586
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 589
    .end local v6           #n:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v7           #period:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v12, 0x6d

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    .line 590
    .restart local v5       #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v9

    .line 592
    .local v9, sym_sip:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v5, :cond_a

    if-eqz v9, :cond_a

    move/from16 v0, p3

    int-to-double v11, v0

    iget v13, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    iget v0, v9, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    cmpl-double v11, v11, v13

    if-lez v11, :cond_b

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 594
    :cond_b
    const v11, 0x800006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 595
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 602
    .end local v5           #m:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v9           #sym_sip:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 544
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_0
        0x8 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2e -> :sswitch_3
    .end sparse-switch
.end method

.method private setKeyboardbyLang(I)V
    .locals 7
    .parameter "lang"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mEnlargeLowercase:Z

    .line 111
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    .line 113
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 116
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 117
    .local v2, targetXmlId:I
    packed-switch p1, :pswitch_data_0

    .line 176
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_0
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    if-eq v3, v6, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mQwertyType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_htcime_noarrow"

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v3, v5, :cond_1

    const-string v5, "_noarrow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml"

    const-string v5, "com.htc.android.htcime"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 184
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v2, v3, :cond_6

    .line 185
    :cond_2
    new-instance v3, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 190
    :goto_1
    return-void

    .line 120
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_2
    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_fr"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 130
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_3
    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->isOrangeSwissBuild()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_de"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_3
    goto/16 :goto_0

    .line 130
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_rus"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 142
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_sms_gre"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :goto_4
    iput-boolean v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    .line 145
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_gre"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 150
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_bul"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mEnlargeLowercase:Z

    goto/16 :goto_0

    .line 159
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_ee"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 163
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_dan"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 168
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_sve"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 172
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #buf:Ljava/lang/StringBuffer;
    const-string v3, "land_qwerty_nor"

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    goto/16 :goto_0

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->updateKeys()V

    goto/16 :goto_1

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public InitialT9Setting()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 985
    const/4 v0, 0x0

    .line 988
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_0

    .line 989
    const/4 v1, 0x0

    .line 992
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 995
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 996
    :goto_1
    shl-int/lit8 v1, v1, 0x3

    .line 997
    or-int/2addr v0, v1

    .line 1000
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_EnlargeKey:Z

    if-eqz v4, :cond_3

    .line 1001
    const/4 v1, 0x1

    .line 1004
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 1005
    or-int/2addr v0, v1

    .line 1008
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 1009
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1010
    return-void

    .line 991
    .end local v1           #tmp:I
    :cond_0
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .restart local v1       #tmp:I
    :goto_3
    goto :goto_0

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    goto :goto_3

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 995
    goto :goto_1

    .line 1003
    :cond_3
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYWordComplete:Z

    if-ne v4, v2, :cond_4

    move v1, v2

    :goto_4
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_4
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "label"

    .prologue
    const/4 v2, 0x0

    .line 1031
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c2

    if-ne v0, v1, :cond_1

    .line 1034
    const-string p1, "\u0385"

    .line 1040
    :cond_0
    :goto_0
    return-object p1

    .line 1035
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1038
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/EZSIPView;->draw(Landroid/graphics/Canvas;)V

    .line 395
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v3, 0x18

    if-ne v2, v3, :cond_1

    .line 397
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_rus_pos_x:I

    .line 398
    .local v0, x:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_rus_pos_y:I

    .line 403
    .local v1, y:I
    :goto_0
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 404
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 405
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    return-void

    .line 400
    .end local v0           #x:I
    .end local v1           #y:I
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_pos_x:I

    .line 401
    .restart local v0       #x:I
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_pos_y:I

    .restart local v1       #y:I
    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 360
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->closing()V

    .line 365
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->finishInput()V

    .line 366
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 5
    .parameter "htcIMM"

    .prologue
    const/4 v4, 0x0

    .line 84
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 85
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 86
    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setKeyboardbyLang(I)V

    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v2, v1, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 90
    const/4 v1, 0x3

    invoke-virtual {p0, v4, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setPopupOffset(II)V

    .line 91
    const/high16 v1, 0x800

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    .line 92
    const/high16 v1, 0x900

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_LP_ID:I

    .line 95
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mXT9_Drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_pos_x:I

    .line 99
    const v1, 0x7f0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_pos_y:I

    .line 100
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_rus_pos_x:I

    .line 101
    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->xt9_rus_pos_y:I

    .line 102
    return-void
.end method

.method protected isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1098
    iget-object v0, p1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public notify(IILjava/lang/String;)V
    .locals 1
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 1045
    packed-switch p1, :pswitch_data_0

    .line 1051
    :goto_0
    return-void

    .line 1047
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftbyAutoCap:Z

    .line 1048
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setCapModeFromIM(I)V

    goto :goto_0

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCursorChanged()V
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->doAutoCapCheck(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->shiftStateCheck()V

    goto :goto_0
.end method

.method protected onKeyDown(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 610
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->resetState()V

    .line 611
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 617
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/16 v2, 0x15e

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->quickPressCheck(Lcom/htc/android/htcime/ezsip/Keyboard$Key;III)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 619
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v5, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    .line 620
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 626
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-eq v6, v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x3c2

    if-eq v1, v2, :cond_0

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 635
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-ne v6, v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-eq v9, v1, :cond_5

    .line 636
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/android/htcime/util/htcDAM;->ProcessKeyInput(III)I

    move-result v0

    .line 637
    .local v0, DAMKeyIndex:I
    if-eq v0, v7, :cond_5

    if-eq v0, p1, :cond_5

    .line 638
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 639
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/htc/android/htcime/util/htcDAM;->NotifyDAMWork(Landroid/content/Context;Landroid/view/View;II)V

    .line 645
    .end local v0           #DAMKeyIndex:I
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 646
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    if-ne v1, v6, :cond_6

    .line 647
    iput v8, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    .line 648
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    iput v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftStateSaved:I

    .line 649
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 650
    invoke-virtual {p0, v6, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 655
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_7

    .line 657
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v2, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 658
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 659
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 660
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    .line 661
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->postPrediction(I)V

    .line 664
    :cond_7
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v5, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 665
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-wide v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mDownTime:J

    iput-wide v2, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastQPTime:J

    .line 666
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v6, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastSendKey:Z

    .line 686
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    goto/16 :goto_0

    .line 652
    :cond_9
    invoke-virtual {p0, v8, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_1

    .line 669
    :cond_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-ne v1, v9, :cond_b

    .line 671
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAddWordFlag:Z

    if-nez v1, :cond_8

    .line 674
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isSlideFunctionEnable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 675
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_2

    .line 677
    :cond_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    .line 678
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v5

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_2

    .line 679
    :cond_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    if-ne v1, v7, :cond_8

    .line 680
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_MultiTouchShift_Enable:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_8

    .line 681
    iput v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    goto :goto_2
.end method

.method protected onKeyMove(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 932
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 937
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->feedbackEffect(I)V

    .line 939
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    invoke-virtual {p0, v3, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 943
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    .line 944
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    invoke-virtual {v1, p2, p3}, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->positionAdjust(Lcom/htc/android/htcime/ezsip/Keyboard$Key;Lcom/htc/android/htcime/ezsip/EZSIPView$Position;)V

    .line 945
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p2, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 946
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->tmpPos:Lcom/htc/android/htcime/ezsip/EZSIPView$Position;

    iget p3, v0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 947
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    .line 948
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->postPrediction(I)V

    .line 950
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput p1, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    .line 960
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v3, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    .line 961
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v2, v0, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mFirstMove:Z

    goto :goto_0

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 953
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAddWordFlag:Z

    if-nez v0, :cond_4

    .line 957
    iget v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_1
.end method

.method protected onKeyUp(III)V
    .locals 7
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x3

    const/high16 v5, 0x71c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 709
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->onInterceptKeyUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 719
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->handleAccent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mMultitouchHappened:Z

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 730
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x3c2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-eq v4, v1, :cond_2

    .line 733
    const v1, 0xf000385

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mIsFingerMoved:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    if-eq v1, p1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mLastDownBtnIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->isWordComponent(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 743
    const/high16 v1, 0x3800

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1, p2, p3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(III)V

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-nez v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iput-boolean v4, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    .line 749
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->shiftStateCheck()V

    goto :goto_0

    .line 753
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_0

    .line 755
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 911
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_0

    .line 912
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 913
    const v1, 0xf00003b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 758
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v1, :cond_5

    .line 760
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 761
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 764
    :cond_5
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 765
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto/16 :goto_0

    .line 769
    :sswitch_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 770
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 783
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v1, v1, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mDoFuncKey:Z

    if-eqz v1, :cond_0

    .line 784
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    if-ne v1, v4, :cond_6

    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mPointerCount:I

    if-eq v1, v6, :cond_0

    .line 787
    :cond_6
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_7

    .line 788
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftbyAutoCap:Z

    .line 789
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 792
    :goto_1
    iput v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    goto/16 :goto_0

    .line 791
    :cond_7
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setShiftCycle(I)I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_1

    .line 798
    :sswitch_3
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-ne v1, v2, :cond_8

    .line 799
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftbyAutoCap:Z

    .line 800
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 802
    :cond_8
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftbyAutoCap:Z

    .line 803
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 809
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_9

    .line 810
    const/high16 v1, 0x71b

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 813
    :goto_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 814
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 812
    :cond_9
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_2

    .line 818
    :sswitch_5
    const v1, 0x7110001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 833
    :sswitch_6
    const/high16 v1, 0xf00

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 837
    :sswitch_7
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 841
    :sswitch_8
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 842
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_a

    .line 843
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 858
    :cond_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, -0xf

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 859
    .local v0, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_b

    .line 860
    sget-boolean v1, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 861
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->startInput()V

    goto/16 :goto_0

    .line 865
    .end local v0           #langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_9
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 868
    :sswitch_a
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 871
    :sswitch_b
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 874
    :sswitch_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 877
    :sswitch_d
    const v1, 0xf000009

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 880
    :sswitch_e
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 885
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 888
    :sswitch_f
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 889
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLongPress:Z

    if-eqz v1, :cond_c

    .line 890
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 895
    :cond_c
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 899
    :sswitch_10
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v1, :cond_0

    .line 900
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 901
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 905
    :sswitch_11
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->isSlideFunctionEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 755
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_d
        -0x18 -> :sswitch_f
        -0x17 -> :sswitch_10
        -0x16 -> :sswitch_3
        -0x15 -> :sswitch_a
        -0x14 -> :sswitch_9
        -0x13 -> :sswitch_c
        -0x12 -> :sswitch_b
        -0x10 -> :sswitch_e
        -0xf -> :sswitch_8
        -0x7 -> :sswitch_5
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_2
        0xa -> :sswitch_7
        0x20 -> :sswitch_11
        0x21 -> :sswitch_6
        0x27 -> :sswitch_6
        0x2a -> :sswitch_6
        0x2b -> :sswitch_6
        0x2c -> :sswitch_6
        0x2d -> :sswitch_6
        0x2e -> :sswitch_6
        0x2f -> :sswitch_6
        0x3d -> :sswitch_6
        0x3f -> :sswitch_6
        0x40 -> :sswitch_6
        0x5f -> :sswitch_6
    .end sparse-switch
.end method

.method protected onKeyUp_RepeatMode(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mSIP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyUpEvent(I)V

    .line 924
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected setIMEInputMode()V
    .locals 1

    .prologue
    .line 966
    const v0, 0x7150001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 968
    const/high16 v0, 0x703

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 971
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->getPredictionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    const v0, 0x70a0001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 975
    :goto_0
    return-void

    .line 974
    :cond_0
    const v0, 0x70a0002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 369
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 415
    iget v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLastEventState:Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView$EventKeeper;->mShiftCehck:Z

    if-eqz v2, :cond_0

    .line 419
    iget v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->MT_SHIFT_STATUS:I

    if-eq v2, v5, :cond_0

    .line 421
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 426
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    .line 427
    .local v1, targetShiftState:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-ne v2, v5, :cond_2

    .line 428
    const/4 v1, 0x1

    .line 432
    :cond_2
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 442
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mShiftState:I

    if-eq v2, v1, :cond_0

    .line 443
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 436
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->doAutoCapCheck(I)I

    move-result v1

    .line 437
    goto :goto_1

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startInput()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 194
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->startInput()V

    .line 197
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mCurrentKey:I

    .line 198
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 199
    .local v2, lang:I
    iput v8, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    .line 200
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAutoCapMode:I

    .line 203
    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setKeyboardbyLang(I)V

    .line 204
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setPreviewEnabled(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->previewDismiss()V

    .line 207
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v7, -0xf

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    .line 208
    .local v3, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 209
    sget-boolean v6, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 210
    sget-boolean v6, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mLanguageSwitchMode:Z

    if-eqz v6, :cond_3

    .line 213
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v7, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 215
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v6}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, predictionMode:Z
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->AddWordDisableButtons(Z)V

    .line 219
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->DisableLangSwitchButton(Z)V

    .line 220
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v6, :pswitch_data_0

    .line 270
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 271
    const/4 v4, 0x1

    .line 274
    :cond_1
    sput-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mContentTypePredictionMode:Z

    .line 278
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 280
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->clearWCL()V

    .line 283
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v6, "LandQwertySIPView"

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->hold(Ljava/lang/String;)V

    .line 288
    const/high16 v5, 0x70f

    :try_start_0
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->GetSysLocale(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 291
    const/high16 v5, 0x716

    const/4 v6, 0x2

    invoke-virtual {p0, v2, v6}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->getQWKDBnamebyLang(II)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->sendKeyEvent(I)V

    .line 294
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->InitialT9Setting()V

    .line 295
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->InitHTCFeature()V

    .line 297
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->doAutoCapCheck(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    .line 298
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setPredictionMode(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_2
    sget-object v5, Lcom/htc/android/htcime/XT9IME/XT9IME;->sXT9CoreMutex:Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;

    const-string v6, "LandQwertySIPView"

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/XT9IME/util/XT9CoreMutex;->release(Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 309
    const/4 v0, 0x1

    .line 310
    .local v0, damLayout:I
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    sparse-switch v5, :sswitch_data_0

    .line 323
    :goto_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getDAM()Lcom/htc/android/htcime/util/htcDAM;

    move-result-object v5

    invoke-static {v8, v0}, Lcom/htc/android/htcime/util/htcDAM;->getDAMId(II)I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I[Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    .line 327
    .end local v0           #damLayout:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setStatusIcon()V

    .line 330
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v5}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 333
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v7, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 336
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->invalidateAll()V

    .line 340
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mAddWordFlag:Z

    if-eqz v5, :cond_7

    .line 341
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/htc/android/htcime/ezsip/LandQwertySIPView$1;

    invoke-direct {v6, p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView$1;-><init>(Lcom/htc/android/htcime/ezsip/LandQwertySIPView;)V

    const-wide/16 v7, 0x96

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :goto_4
    return-void

    .end local v4           #predictionMode:Z
    :cond_3
    move v2, v5

    .line 210
    goto/16 :goto_0

    .line 229
    .restart local v4       #predictionMode:Z
    :pswitch_1
    const/4 v4, 0x1

    .line 230
    goto/16 :goto_1

    .line 233
    :pswitch_2
    iput v9, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 237
    :pswitch_3
    iput v9, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 240
    :pswitch_4
    iput v9, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 243
    :pswitch_5
    iput v10, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->spaceType:I

    goto/16 :goto_1

    .line 246
    :pswitch_6
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->DisableLangSwitchButton(Z)V

    goto/16 :goto_1

    .line 249
    :pswitch_7
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->AddWordDisableButtons(Z)V

    goto/16 :goto_1

    .line 252
    :pswitch_8
    const/4 v4, 0x1

    .line 254
    iget-boolean v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mGreekKB:Z

    if-eqz v6, :cond_5

    .line 256
    invoke-static {v8}, Lcom/htc/android/htcime/util/CharTransfer;->setTransferable(Z)V

    .line 257
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v6, :cond_4

    .line 258
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v6, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 259
    :cond_4
    invoke-virtual {p0, v10, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 262
    :cond_5
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v6, :cond_6

    .line 263
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v6, v8}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 264
    :cond_6
    invoke-virtual {p0, v8, v5}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "LandQwertySIPView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startInput] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 313
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #damLayout:I
    :sswitch_0
    const/4 v0, 0x6

    .line 314
    goto/16 :goto_3

    .line 320
    :sswitch_1
    const/4 v0, 0x7

    goto/16 :goto_3

    .line 344
    .end local v0           #damLayout:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->updateFullscreenMode()V

    goto :goto_4

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method
