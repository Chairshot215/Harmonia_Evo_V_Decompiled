.class public Lcom/htc/android/htcime/ezsip/Port12KeySIPView;
.super Lcom/htc/android/htcime/ezsip/EZSIPView;
.source "Port12KeySIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "Port12KeySIPView"


# instance fields
.field private dismissKey:Z

.field private mGreekKB:Z

.field private mInitMultitapWordCompState:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    .line 734
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->dismissKey:Z

    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait Phone Keypad"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 61
    return-void
.end method

.method private adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V
    .locals 5
    .parameter "mKeys"

    .prologue
    const/16 v3, -0x10

    const/4 v4, 0x1

    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v1, 0x0

    .line 739
    .local v1, space_type_inc:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mbDisable_gl:Z

    .line 740
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 741
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x17

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 762
    :goto_0
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 773
    :cond_0
    return-void

    .line 744
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->dismissKey:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-nez v2, :cond_2

    .line 745
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, 0x3f

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 746
    const/4 v1, 0x3

    goto :goto_0

    .line 748
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 751
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mbDisable_gl:Z

    goto :goto_0

    .line 755
    :cond_3
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_4

    .line 756
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x18

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0

    .line 758
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 326
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 327
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 328
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 329
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 333
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private setKeyboardbyLang(I)V
    .locals 5
    .parameter "lang"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mEnlargeLowercase:Z

    .line 86
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    .line 87
    const/4 v0, -0x1

    .line 88
    .local v0, targetXmlId:I
    sparse-switch p1, :sswitch_data_0

    .line 112
    const v0, 0x7f050028

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "tweaks_htcime_noarrow"

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const v1, 0x53

    add-int v0, v0, v1

    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v0, v1, :cond_4

    .line 115
    :cond_1
    new-instance v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 120
    :goto_1
    return-void

    .line 90
    :sswitch_0
    const v0, 0x7f05002c

    .line 91
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 96
    :sswitch_1
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v1, v2, :cond_2

    const v0, 0x7f05002d

    .line 98
    :goto_2
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 96
    :cond_2
    const v0, 0x7f05002b

    goto :goto_2

    .line 103
    :sswitch_2
    const v0, 0x7f050029

    .line 104
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 108
    :sswitch_3
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v1, :cond_3

    const v0, 0x7f05002a

    .line 109
    :goto_3
    goto :goto_0

    .line 108
    :cond_3
    const v0, 0x7f050028

    goto :goto_3

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->updateKeys()V

    goto :goto_1

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x6 -> :sswitch_0
        0x11 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 727
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x30

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 729
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 730
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget v1, Lcom/htc/android/htcime/HTCIMMData;->mDopod12KeyT9HintCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/android/htcime/HTCIMMData;->mDopod12KeyT9HintCount:I

    .line 731
    return-void
.end method


# virtual methods
.method public InitialT9Setting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 627
    const/4 v0, 0x0

    .line 630
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 631
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 634
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mNextWordPredict:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 635
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 636
    or-int/2addr v0, v1

    .line 640
    const/4 v1, 0x1

    .line 641
    shl-int/lit8 v1, v1, 0x2

    .line 642
    or-int/lit8 v0, v0, 0x4

    .line 651
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 652
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 653
    or-int/2addr v0, v1

    .line 656
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-nez v4, :cond_0

    .line 663
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v4, v5, :cond_4

    .line 664
    const/4 v1, 0x1

    .line 669
    :goto_3
    shl-int/lit8 v1, v1, 0x5

    .line 670
    or-int/2addr v0, v1

    .line 674
    :cond_0
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 675
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 676
    return-void

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    .line 630
    goto :goto_0

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 634
    goto :goto_1

    :cond_3
    move v1, v3

    .line 651
    goto :goto_2

    .line 666
    :cond_4
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    if-ne v4, v2, :cond_5

    move v1, v2

    :goto_4
    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "label"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 537
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c2

    if-ne v0, v1, :cond_1

    .line 539
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 545
    :cond_0
    :goto_0
    return-object p1

    .line 540
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 541
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public finishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 249
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->closing()V

    .line 263
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->finishInput()V

    .line 264
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 71
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setKeyboardbyLang(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setPopupOffset(II)V

    .line 75
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mSIP_ID:I

    .line 76
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mSIP_LP_ID:I

    .line 77
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 722
    return-void
.end method

.method public onClick(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v9, 0x100

    const v8, 0xffff

    const/4 v4, 0x1

    const/high16 v7, 0x71c

    const/4 v3, 0x0

    .line 349
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->onInterceptClick()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v5, p1

    .line 355
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v6, -0x3e7

    if-ne v5, v6, :cond_3

    move v2, p1

    .line 357
    .local v2, sendBtnIdx:I
    :goto_1
    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 515
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 517
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 518
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->shiftStateCheck()V

    goto :goto_0

    .line 355
    .end local v2           #sendBtnIdx:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 361
    .restart local v2       #sendBtnIdx:I
    :sswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 364
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    if-eqz v5, :cond_4

    .line 366
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v5, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 367
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    .line 370
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 371
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 374
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setPredictionMode(ZZ)V

    .line 375
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setStatusIcon()V

    .line 376
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 377
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-eqz v3, :cond_0

    .line 378
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->updateCandidatesViewShown()Z

    goto :goto_0

    .line 390
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 391
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->launchSettings()V

    goto :goto_0

    .line 395
    :sswitch_3
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLongPress:Z

    if-eqz v4, :cond_6

    .line 396
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftbyAutoCap:Z

    .line 397
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 399
    :cond_6
    iget v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftState:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setShiftCycle(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 404
    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 405
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 406
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 411
    :sswitch_5
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 412
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    goto/16 :goto_0

    .line 415
    :sswitch_6
    const v3, 0x7110001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 425
    :sswitch_7
    const/high16 v4, 0xf00

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v5, v3

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 428
    :sswitch_8
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 429
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    goto/16 :goto_0

    .line 433
    :sswitch_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 435
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 436
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLongPress:Z

    if-eqz v3, :cond_7

    .line 437
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 453
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0xf

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 454
    .local v1, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_8

    .line 455
    sget-boolean v3, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 456
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->startInput()V

    goto/16 :goto_0

    .line 460
    .end local v1           #langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 463
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 466
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 469
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 473
    :sswitch_e
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 474
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLongPress:Z

    if-eqz v3, :cond_9

    .line 475
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 479
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->swicthKeyboardType()V

    goto/16 :goto_0

    .line 483
    :sswitch_f
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 488
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 491
    :sswitch_10
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 492
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLongPress:Z

    if-eqz v3, :cond_a

    .line 493
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 498
    :cond_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 502
    :sswitch_11
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 503
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 504
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 509
    :sswitch_12
    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ne v5, v4, :cond_2

    .line 510
    const/high16 v4, 0xf00

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v5, v3

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 522
    :cond_b
    iget v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v5, p1, :cond_c

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v8, v5, :cond_c

    .line 526
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    .line 528
    :cond_c
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 529
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput p1, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 530
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->KeyDown()V

    goto/16 :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        -0x19 -> :sswitch_e
        -0x18 -> :sswitch_10
        -0x17 -> :sswitch_11
        -0x15 -> :sswitch_b
        -0x14 -> :sswitch_a
        -0x13 -> :sswitch_d
        -0x12 -> :sswitch_c
        -0x10 -> :sswitch_f
        -0xf -> :sswitch_9
        -0x8 -> :sswitch_1
        -0x7 -> :sswitch_6
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
        0xa -> :sswitch_8
        0x20 -> :sswitch_5
        0x21 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2c -> :sswitch_7
        0x2e -> :sswitch_7
        0x2f -> :sswitch_7
        0x3f -> :sswitch_7
        0x40 -> :sswitch_12
        0x5f -> :sswitch_7
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 2

    .prologue
    .line 271
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->doAutoCapCheck(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->shiftStateCheck()V

    goto :goto_0
.end method

.method protected onKeyDown(III)V
    .locals 5
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 683
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v1, p1, :cond_4

    .line 691
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    const v2, 0xffff

    if-eq v1, v2, :cond_4

    .line 692
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-ne v1, v4, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p1, v4, :cond_4

    .line 694
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->MultitapDone()V

    .line 697
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 700
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_5

    move v0, p1

    .line 703
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 710
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mSIP_ID:I

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 711
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->Cancel()V

    goto :goto_0

    .line 700
    .end local v0           #sendBtnIdx:I
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 713
    .restart local v0       #sendBtnIdx:I
    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 714
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->PressShift()V

    goto/16 :goto_0
.end method

.method protected repeatKey()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 550
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 552
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mRepeatKeyIndex:I

    .line 554
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 580
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 583
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    const v3, 0xffff

    iput v3, v2, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 584
    return v4

    .line 552
    .end local v1           #sendBtnIdx:I
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 557
    .restart local v1       #sendBtnIdx:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v2, :cond_2

    .line 558
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mAutoPressCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mAutoPressCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 559
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mAutoPressDelCan:Z

    .line 560
    const/high16 v2, 0x71a

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    goto :goto_1

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 576
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 554
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected setIMEInputMode()V
    .locals 4

    .prologue
    const/high16 v3, 0x708

    const/4 v0, 0x0

    .line 588
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 589
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mCurrentKey:I

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->invalidateKey(I)V

    .line 592
    const/high16 v1, 0x70a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 595
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    if-nez v1, :cond_0

    .line 598
    const/high16 v1, 0x718

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 600
    :cond_0
    const v1, 0x7150001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 601
    const/high16 v1, 0x703

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 604
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getAutoSubstitute()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 617
    :goto_0
    return-void

    .line 608
    :cond_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 609
    const/high16 v0, 0x710

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 611
    :cond_3
    const v0, 0x7150002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 612
    const v0, 0x7030001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 615
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 297
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftState:I

    .line 298
    .local v1, targetShiftState:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 300
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    :cond_2
    const/4 v1, 0x1

    .line 306
    :cond_3
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 316
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mShiftState:I

    if-eq v2, v1, :cond_0

    .line 317
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 310
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->doAutoCapCheck(I)I

    move-result v1

    .line 311
    goto :goto_1

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startInput()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 124
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->startInput()V

    .line 126
    iput v6, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    .line 127
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 128
    .local v0, lang:I
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mAutoCapMode:I

    .line 131
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mInitMultitapWordCompState:Z

    .line 134
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setKeyboardbyLang(I)V

    .line 135
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setPreviewEnabled(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->previewDismiss()V

    .line 138
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v5, -0xf

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 139
    .local v1, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_0

    .line 140
    sget-boolean v4, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v1, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 141
    sget-boolean v4, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mLanguageSwitchMode:Z

    if-eqz v4, :cond_1

    .line 144
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)V

    .line 146
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->AddWordDisableButtons(Z)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->DisableLangSwitchButton(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->getPredictionMode()Z

    move-result v2

    .line 149
    .local v2, predictionMode:Z
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v4, :pswitch_data_0

    .line 208
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 210
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->clearWCL()V

    .line 213
    const/high16 v4, 0x70f

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->GetSysLocale(I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 216
    const/high16 v4, 0x716

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->get12KDBnamebyLang(I)I

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->sendKeyEvent(I)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->InitialT9Setting()V

    .line 220
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->InitHTCFeature()V

    .line 223
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setStatusIcon()V

    .line 225
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->doAutoCapCheck(I)I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    .line 226
    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setPredictionMode(ZZ)V

    .line 229
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 232
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 235
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->invalidateAll()V

    .line 236
    return-void

    .end local v2           #predictionMode:Z
    :cond_1
    move v0, v3

    .line 141
    goto :goto_0

    .line 156
    .restart local v2       #predictionMode:Z
    :pswitch_1
    iput v7, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    .line 157
    const/4 v2, 0x0

    .line 158
    goto :goto_1

    .line 161
    :pswitch_2
    iput v7, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    .line 162
    const/4 v2, 0x0

    .line 164
    goto :goto_1

    .line 167
    :pswitch_3
    iput v7, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    .line 168
    const/4 v2, 0x0

    .line 170
    goto :goto_1

    .line 173
    :pswitch_4
    const/4 v2, 0x0

    .line 174
    iput v8, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->spaceType:I

    goto :goto_1

    .line 178
    :pswitch_5
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->DisableLangSwitchButton(Z)V

    goto :goto_1

    .line 183
    :pswitch_6
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->AddWordDisableButtons(Z)V

    goto :goto_1

    .line 187
    :pswitch_7
    const/4 v2, 0x0

    .line 189
    goto :goto_1

    .line 192
    :pswitch_8
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mGreekKB:Z

    if-eqz v4, :cond_2

    .line 194
    invoke-static {v6}, Lcom/htc/android/htcime/util/CharTransfer;->setTransferable(Z)V

    .line 195
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 196
    invoke-virtual {p0, v8, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v4, v6}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 200
    invoke-virtual {p0, v6, v3}, Lcom/htc/android/htcime/ezsip/Port12KeySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
