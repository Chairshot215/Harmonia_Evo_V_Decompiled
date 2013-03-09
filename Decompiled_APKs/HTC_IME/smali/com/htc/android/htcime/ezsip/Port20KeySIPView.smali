.class public Lcom/htc/android/htcime/ezsip/Port20KeySIPView;
.super Lcom/htc/android/htcime/ezsip/EZSIPView;
.source "Port20KeySIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "Port20KeySIPView"


# instance fields
.field private dismissKey:Z

.field private mGreekKB:Z

.field private mInitMultitapWordCompState:Z

.field private mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/EZSIPView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    .line 1014
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->dismissKey:Z

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait Phone Keypad"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput v3, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 62
    return-void
.end method

.method private adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I
    .locals 5
    .parameter "mKeys"

    .prologue
    const/16 v3, -0x10

    const/4 v4, 0x1

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, k:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    const/4 v1, 0x0

    .line 1019
    .local v1, space_type_inc:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mbDisable_gl:Z

    .line 1020
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getSIPCount()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1021
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x17

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1042
    :goto_0
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1054
    :cond_0
    return v1

    .line 1024
    :cond_1
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->dismissKey:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-nez v2, :cond_2

    .line 1025
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x63

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1026
    const/4 v1, 0x3

    goto :goto_0

    .line 1028
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 1031
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mbDisable_gl:Z

    goto :goto_0

    .line 1035
    :cond_3
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsSearchFieldinMarket:Z

    if-nez v2, :cond_4

    .line 1036
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x18

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v2, v4, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->showGroupedKey2(II)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    goto :goto_0
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 435
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 436
    const/high16 v1, 0x71c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 437
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 438
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 442
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

    .line 86
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mEnlargeLowercase:Z

    .line 87
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    .line 88
    const/4 v0, -0x1

    .line 89
    .local v0, targetXmlId:I
    packed-switch p1, :pswitch_data_0

    .line 162
    :pswitch_0
    const v0, 0x7f05002e

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "tweaks_htcime_noarrow"

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    const v1, 0x53

    add-int v0, v0, v1

    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    if-eq v0, v1, :cond_3

    .line 165
    :cond_1
    new-instance v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 170
    :goto_1
    return-void

    .line 91
    :pswitch_1
    const v0, 0x7f050032

    .line 92
    goto :goto_0

    .line 94
    :pswitch_2
    const v0, 0x7f050035

    .line 95
    goto :goto_0

    .line 97
    :pswitch_3
    const v0, 0x7f050033

    .line 98
    goto :goto_0

    .line 100
    :pswitch_4
    const v0, 0x7f05003f

    .line 101
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 105
    :pswitch_5
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v1, v2, :cond_2

    const v0, 0x7f050041

    .line 107
    :goto_2
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    .line 108
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 105
    :cond_2
    const v0, 0x7f050036

    goto :goto_2

    .line 111
    :pswitch_6
    const v0, 0x7f05002f

    .line 112
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mEnlargeLowercase:Z

    goto :goto_0

    .line 116
    :pswitch_7
    const v0, 0x7f050030

    .line 117
    goto :goto_0

    .line 119
    :pswitch_8
    const v0, 0x7f050031

    .line 120
    goto :goto_0

    .line 123
    :pswitch_9
    const v0, 0x7f050042

    .line 124
    goto :goto_0

    .line 126
    :pswitch_a
    const v0, 0x7f05003b

    .line 127
    goto :goto_0

    .line 129
    :pswitch_b
    const v0, 0x7f05003c

    .line 130
    goto :goto_0

    .line 132
    :pswitch_c
    const v0, 0x7f050043

    .line 133
    goto :goto_0

    .line 135
    :pswitch_d
    const v0, 0x7f05003d

    .line 136
    goto :goto_0

    .line 138
    :pswitch_e
    const v0, 0x7f050038

    .line 139
    goto :goto_0

    .line 141
    :pswitch_f
    const v0, 0x7f05003e

    .line 142
    goto :goto_0

    .line 145
    :pswitch_10
    const v0, 0x7f050040

    .line 146
    goto :goto_0

    .line 149
    :pswitch_11
    const v0, 0x7f050037

    .line 150
    goto :goto_0

    .line 153
    :pswitch_12
    const v0, 0x7f050034

    .line 154
    goto/16 :goto_0

    .line 156
    :pswitch_13
    const v0, 0x7f050039

    .line 157
    goto/16 :goto_0

    .line 159
    :pswitch_14
    const v0, 0x7f05003a

    .line 160
    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->updateKeys()V

    goto :goto_1

    .line 89
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_d
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_e
        :pswitch_7
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_6
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public InitialT9Setting()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 662
    const/4 v0, 0x0

    .line 665
    .local v0, real_cmd:I
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mSpellingCheck:Z

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 666
    .local v1, tmp:I
    :goto_0
    or-int/2addr v0, v1

    .line 669
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mNextWordPredict:Z

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 670
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 671
    or-int/2addr v0, v1

    .line 675
    const/4 v1, 0x1

    .line 676
    shl-int/lit8 v1, v1, 0x2

    .line 677
    or-int/lit8 v0, v0, 0x4

    .line 686
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mWordComplete:Z

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 687
    :goto_2
    shl-int/lit8 v1, v1, 0x4

    .line 688
    or-int/2addr v0, v1

    .line 691
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-nez v4, :cond_0

    .line 697
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v4, v5, :cond_4

    .line 698
    const/4 v1, 0x1

    .line 702
    :goto_3
    shl-int/lit8 v1, v1, 0x5

    .line 703
    or-int/2addr v0, v1

    .line 707
    :cond_0
    const/high16 v2, 0x717

    or-int/2addr v0, v2

    .line 708
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 709
    return-void

    .end local v1           #tmp:I
    :cond_1
    move v1, v3

    .line 665
    goto :goto_0

    .restart local v1       #tmp:I
    :cond_2
    move v1, v3

    .line 669
    goto :goto_1

    :cond_3
    move v1, v3

    .line 686
    goto :goto_2

    .line 700
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
    .locals 5
    .parameter "label"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xdf

    if-ne v0, v1, :cond_1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00df"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 388
    :cond_0
    :goto_0
    return-object p1

    .line 378
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x131

    if-ne v0, v1, :cond_2

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0131"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 383
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c2

    if-ne v0, v1, :cond_4

    .line 384
    const-string p1, "\u0385"

    goto :goto_0

    .line 386
    :cond_4
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

    .line 302
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 305
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->closing()V

    .line 313
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->finishInput()V

    .line 314
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 72
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setKeyboardbyLang(I)V

    .line 73
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalHeight:I

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setPopupOffset(II)V

    .line 76
    const/high16 v0, 0x200

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mSIP_ID:I

    .line 77
    const/high16 v0, 0x500

    iput v0, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mSIP_LP_ID:I

    .line 78
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 1010
    return-void
.end method

.method protected onBufferDraw(Ljava/lang/String;)V
    .locals 35
    .parameter "lang"

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 755
    .local v22, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 756
    .local v21, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v12

    .line 758
    .local v12, isUpper:Z
    const/16 v30, 0xff

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 759
    const/16 v19, 0x0

    .line 760
    .local v19, keyboardBG:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/android/htcime/ezsip/Keyboard;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/android/htcime/ezsip/Keyboard;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 764
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    if-nez v30, :cond_1

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getHeight()I

    move-result v31

    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v30 .. v32}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mBuffer:Landroid/graphics/Bitmap;

    .line 766
    new-instance v30, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mCanvas:Landroid/graphics/Canvas;

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 770
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mCanvas:Landroid/graphics/Canvas;

    .line 771
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v30

    move/from16 v0, v30

    float-to-int v8, v0

    .line 772
    .local v8, descent:I
    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 773
    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getHeight()I

    move-result v33

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 774
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 777
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v15, v0

    .line 778
    .local v15, keyCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v15, :cond_21

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-object/from16 v30, v0

    aget-object v13, v30, v11

    .line 780
    .local v13, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-virtual {v13}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->isValidate()Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v30, v0

    if-nez v30, :cond_3

    .line 778
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {v13}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 784
    .local v14, keyBackground:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 785
    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    :cond_4
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 789
    .local v6, bounds:Landroid/graphics/Rect;
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v30, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    .line 791
    :cond_5
    const/16 v30, 0x0

    const/16 v31, 0x0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v32, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v33, v0

    move/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    :cond_6
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 795
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    move/from16 v30, v0

    if-nez v30, :cond_7

    .line 797
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    add-int v32, v32, v33

    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move-object/from16 v0, v19

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 798
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 802
    :cond_7
    invoke-virtual {v14, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 803
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 805
    const/16 v29, 0x0

    .line 806
    .local v29, verticalOffset:I
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->multiLine:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 807
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->top_label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    .line 808
    .local v26, topLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextSize:I

    move/from16 v27, v0

    .line 809
    .local v27, topLabelTextSize:I
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    sget v31, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sVerticalOffsetA:F

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextYOffset:I

    move/from16 v31, v0

    add-int v29, v30, v31

    .line 810
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 811
    const v30, -0x121212

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 812
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 813
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    add-float v31, v31, v32

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v32

    sub-float v31, v31, v32

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v31, v31, v32

    const/high16 v32, 0x40c0

    sub-float v31, v31, v32

    move-object/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 816
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    sget v31, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sVerticalOffsetB:F

    mul-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultTopLevelTextYOffset:I

    move/from16 v31, v0

    add-int v29, v30, v31

    .line 820
    .end local v26           #topLabel:Ljava/lang/String;
    .end local v27           #topLabelTextSize:I
    :cond_8
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, -0x10

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v5, v0

    .line 824
    .local v5, KeyTextSize:F
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_9

    .line 825
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v5, v30, v31

    .line 827
    :cond_9
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 828
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v30, v0

    if-nez v30, :cond_d

    .line 829
    const v30, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 837
    .local v25, textWidth:F
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    .line 838
    .local v17, keyWidth:F
    cmpl-float v30, v25, v17

    if-lez v30, :cond_a

    .line 839
    div-float v30, v17, v25

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 843
    :cond_a
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    add-float v31, v31, v32

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v32

    sub-float v31, v31, v32

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 847
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 848
    const/high16 v30, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 992
    .end local v5           #KeyTextSize:F
    .end local v17           #keyWidth:F
    .end local v25           #textWidth:F
    :cond_b
    :goto_3
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->x:I

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->y:I

    move/from16 v31, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 993
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pressed:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 994
    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 996
    :cond_c
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setValidate(Z)V

    goto/16 :goto_1

    .line 831
    .restart local v5       #KeyTextSize:F
    :cond_d
    const/16 v30, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 832
    const/high16 v30, 0x4040

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/high16 v33, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_2

    .line 850
    .end local v5           #KeyTextSize:F
    :cond_e
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, -0x18

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_13

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v5, v0

    .line 853
    .restart local v5       #KeyTextSize:F
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_f

    .line 854
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v5, v30, v31

    .line 856
    :cond_f
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 857
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v30, v0

    if-nez v30, :cond_12

    .line 858
    const v30, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 865
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 866
    .restart local v25       #textWidth:F
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    .line 867
    .restart local v17       #keyWidth:F
    cmpl-float v30, v25, v17

    if-lez v30, :cond_10

    .line 868
    div-float v30, v17, v25

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 871
    :cond_10
    sget-boolean v30, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v30, :cond_11

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f020084

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 874
    .local v28, up_icon:Landroid/graphics/drawable/Drawable;
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v9, v30, 0x2

    .line 876
    .local v9, drawableX:I
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0xb

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0xe

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefalultTopIconYOffset:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int/lit8 v10, v30, 0x3

    .line 877
    .local v10, drawableY:I
    int-to-float v0, v9

    move/from16 v30, v0

    int-to-float v0, v10

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 881
    const/16 v30, 0xff

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 883
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 884
    neg-int v0, v9

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    neg-int v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 887
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    add-int v31, v31, v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x5

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x7

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    add-float v31, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 903
    .end local v9           #drawableX:I
    .end local v10           #drawableY:I
    .end local v28           #up_icon:Landroid/graphics/drawable/Drawable;
    :cond_11
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 904
    const/high16 v30, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 860
    .end local v17           #keyWidth:F
    .end local v25           #textWidth:F
    :cond_12
    const/16 v30, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 861
    const/high16 v30, 0x4040

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/high16 v33, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_4

    .line 906
    .end local v5           #KeyTextSize:F
    :cond_13
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v30, v0

    if-eqz v30, :cond_15

    .line 907
    invoke-virtual {v13}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->getCurrentIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 908
    .local v16, keyIcon:Landroid/graphics/drawable/Drawable;
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v9, v30, 0x2

    .line 910
    .restart local v9       #drawableX:I
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v30, v30, v29

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->iconShiftY:I

    move/from16 v31, v0

    add-int v10, v30, v31

    .line 912
    .restart local v10       #drawableY:I
    int-to-float v0, v9

    move/from16 v30, v0

    int-to-float v0, v10

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 913
    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v32

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v33

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 916
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v30, v0

    if-nez v30, :cond_14

    .line 921
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 922
    const/16 v30, 0x55

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 929
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 930
    neg-int v0, v9

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    neg-int v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 926
    :cond_14
    const/16 v30, 0xff

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 932
    .end local v9           #drawableX:I
    .end local v10           #drawableY:I
    .end local v16           #keyIcon:Landroid/graphics/drawable/Drawable;
    :cond_15
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 934
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    if-nez v30, :cond_19

    const/16 v20, 0x0

    .line 937
    .local v20, label:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v5, v0

    .line 938
    .restart local v5       #KeyTextSize:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mEnlargeLowercase:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    if-nez v12, :cond_16

    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isLetter(I)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 939
    sget v30, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sLOWER_CASE_INCREASE:F

    add-float v5, v5, v30

    .line 942
    :cond_16
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    const/high16 v31, 0x3f80

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_17

    .line 943
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->textScale:F

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mDefaultKeyTextSize:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v5, v30, v31

    .line 945
    :cond_17
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 946
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    move/from16 v30, v0

    if-nez v30, :cond_1b

    .line 947
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1a

    .line 948
    const v30, 0x55ffffff

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 965
    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 966
    .restart local v25       #textWidth:F
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v17, v0

    .line 967
    .restart local v17       #keyWidth:F
    cmpl-float v30, v25, v17

    if-lez v30, :cond_18

    .line 968
    div-float v30, v17, v25

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 971
    :cond_18
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mSplitLabel:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1f

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1f

    .line 972
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v23

    .line 973
    .local v23, t:I
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    div-int v18, v30, v23

    .line 974
    .local v18, key_width:I
    const/16 v24, 0x0

    .local v24, t1:I
    :goto_8
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_20

    .line 976
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v31

    mul-int v30, v18, v24

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v18

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    div-int/lit8 v32, v32, 0x2

    add-int v32, v32, v30

    if-nez v24, :cond_1d

    const/16 v30, 0x1

    :goto_9
    add-int v30, v30, v32

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    add-float v32, v32, v33

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v33

    sub-float v32, v32, v33

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v32

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 974
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 934
    .end local v5           #KeyTextSize:F
    .end local v17           #keyWidth:F
    .end local v18           #key_width:I
    .end local v20           #label:Ljava/lang/String;
    .end local v23           #t:I
    .end local v24           #t1:I
    .end local v25           #textWidth:F
    :cond_19
    iget-object v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_6

    .line 951
    .restart local v5       #KeyTextSize:F
    .restart local v20       #label:Ljava/lang/String;
    :cond_1a
    const/high16 v30, 0x5500

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_7

    .line 954
    :cond_1b
    iget-boolean v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->function:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    .line 955
    const/16 v30, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 956
    const/high16 v30, 0x4040

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/high16 v33, -0x3400

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_7

    .line 959
    :cond_1c
    const v30, -0x10101

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 960
    const/high16 v30, 0x4040

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v33, -0x33000001

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_7

    .line 976
    .restart local v17       #keyWidth:F
    .restart local v18       #key_width:I
    .restart local v23       #t:I
    .restart local v24       #t1:I
    .restart local v25       #textWidth:F
    :cond_1d
    add-int/lit8 v30, v23, -0x1

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    const/16 v30, -0x1

    goto/16 :goto_9

    :cond_1e
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 982
    .end local v18           #key_width:I
    .end local v23           #t:I
    .end local v24           #t1:I
    :cond_1f
    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v32

    add-float v31, v31, v32

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v32

    sub-float v31, v31, v32

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    iget v0, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->labelShiftY:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, v20

    move/from16 v1, v30

    move/from16 v2, v31

    move-object/from16 v3, v22

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 988
    :cond_20
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 989
    const/high16 v30, 0x3f80

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 1005
    .end local v5           #KeyTextSize:F
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v13           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    .end local v14           #keyBackground:Landroid/graphics/drawable/Drawable;
    .end local v17           #keyWidth:F
    .end local v20           #label:Ljava/lang/String;
    .end local v25           #textWidth:F
    .end local v29           #verticalOffset:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->fullInvalidate:Z

    .line 1006
    return-void
.end method

.method public onClick(III)V
    .locals 10
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v9, 0x200

    const v8, 0xffff

    const/high16 v7, 0x71c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->onInterceptClick()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v5, p1

    .line 463
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v6, -0x3e7

    if-ne v5, v6, :cond_3

    move v2, p1

    .line 465
    .local v2, sendBtnIdx:I
    :goto_1
    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    sparse-switch v5, :sswitch_data_0

    .line 602
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 604
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 605
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->shiftStateCheck()V

    goto :goto_0

    .line 463
    .end local v2           #sendBtnIdx:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 469
    .restart local v2       #sendBtnIdx:I
    :sswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 472
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    if-eqz v5, :cond_4

    .line 474
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v5, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 475
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    .line 478
    :cond_4
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 479
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 482
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setPredictionMode(ZZ)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setStatusIcon()V

    .line 484
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 485
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-eqz v3, :cond_0

    .line 486
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->updateCandidatesViewShown()Z

    goto :goto_0

    .line 489
    :sswitch_2
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 490
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->launchSettings()V

    goto :goto_0

    .line 494
    :sswitch_3
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLongPress:Z

    if-eqz v4, :cond_6

    .line 495
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftbyAutoCap:Z

    .line 496
    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 498
    :cond_6
    iget v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setShiftCycle(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 503
    :sswitch_4
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 504
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v5, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 505
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 510
    :sswitch_5
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 511
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    goto/16 :goto_0

    .line 514
    :sswitch_6
    const v3, 0x7110001

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 522
    :sswitch_7
    const/high16 v4, 0xf00

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v3, v5, v3

    or-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 525
    :sswitch_8
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 526
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput v8, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    goto/16 :goto_0

    .line 530
    :sswitch_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mInitMultitapWordCompState:Z

    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    .line 532
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 533
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLongPress:Z

    if-eqz v3, :cond_7

    .line 534
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->launchSettings()V

    goto/16 :goto_0

    .line 550
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v4, -0xf

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 551
    .local v1, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_8

    .line 552
    sget-boolean v3, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 553
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->startInput()V

    goto/16 :goto_0

    .line 557
    .end local v1           #langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 560
    :sswitch_b
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 563
    :sswitch_c
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 566
    :sswitch_d
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 569
    :sswitch_e
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 574
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 577
    :sswitch_f
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 578
    iget-boolean v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLongPress:Z

    if-eqz v3, :cond_9

    .line 579
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 584
    :cond_9
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/htcime/util/SIPSwitcher;->doLanguageOption()V

    goto/16 :goto_0

    .line 588
    :sswitch_10
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v3, :cond_0

    .line 589
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 590
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->invokeVoiceInput()V

    goto/16 :goto_0

    .line 595
    :sswitch_11
    iget v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    if-eq v4, v5, :cond_2

    .line 597
    const v3, 0xf000385

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 609
    :cond_a
    iget v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v5, p1, :cond_b

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v8, v5, :cond_b

    .line 613
    invoke-virtual {p0, v4, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    .line 615
    :cond_b
    or-int v3, v9, v2

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 616
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iput p1, v3, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 617
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->KeyDown()V

    goto/16 :goto_0

    .line 465
    :sswitch_data_0
    .sparse-switch
        -0x18 -> :sswitch_f
        -0x17 -> :sswitch_10
        -0x15 -> :sswitch_b
        -0x14 -> :sswitch_a
        -0x13 -> :sswitch_d
        -0x12 -> :sswitch_c
        -0x10 -> :sswitch_e
        -0xf -> :sswitch_9
        -0x8 -> :sswitch_1
        -0x7 -> :sswitch_6
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_3
        0xa -> :sswitch_8
        0x20 -> :sswitch_5
        0x27 -> :sswitch_7
        0x2c -> :sswitch_7
        0x2e -> :sswitch_7
        0x2f -> :sswitch_7
        0x40 -> :sswitch_7
        0x5f -> :sswitch_7
        0x3c2 -> :sswitch_11
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 2

    .prologue
    .line 321
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->doAutoCapCheck(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->shiftStateCheck()V

    goto :goto_0
.end method

.method protected onKeyDown(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x0

    .line 713
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    if-eq v1, p1, :cond_2

    .line 721
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    const v2, 0xffff

    if-eq v1, v2, :cond_2

    .line 722
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 723
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->MultitapDone()V

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 728
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_3

    move v0, p1

    .line 731
    .local v0, sendBtnIdx:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 738
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mSIP_ID:I

    or-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 739
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->Cancel()V

    goto :goto_0

    .line 728
    .end local v0           #sendBtnIdx:I
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v0, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_1

    .line 741
    .restart local v0       #sendBtnIdx:I
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 742
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->PressShift()V

    goto :goto_0
.end method

.method protected repeatKey()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 393
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mRepeatKeyIndex:I

    aget-object v0, v2, v3

    .line 395
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mRepeatKeyIndex:I

    .line 397
    .local v1, sendBtnIdx:I
    :goto_0
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 423
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    .line 426
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;

    const v3, 0xffff

    iput v3, v2, Lcom/htc/android/htcime/ezsip/EZSIPView$MultiTapHandler;->mLastMultitapKeyIndex:I

    .line 427
    return v4

    .line 395
    .end local v1           #sendBtnIdx:I
    :cond_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v1, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->mXT9IdxMap:I

    goto :goto_0

    .line 400
    .restart local v1       #sendBtnIdx:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    if-eqz v2, :cond_2

    .line 401
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mAutoPressCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mAutoPressCount:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imEditWordLen:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 402
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mAutoPressDelCan:Z

    .line 403
    const/high16 v2, 0x71a

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    goto :goto_1

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mSIP_ID:I

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyDownEvent(I)V

    goto :goto_1

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v3, 0x43

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method protected setIMEInputMode()V
    .locals 4

    .prologue
    const/high16 v3, 0x708

    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mT9Key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 624
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mCurrentKey:I

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->invalidateKey(I)V

    .line 627
    const/high16 v1, 0x70a

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 630
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    if-nez v1, :cond_0

    .line 633
    const/high16 v1, 0x718

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 635
    :cond_0
    const v1, 0x7150001

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 636
    const/high16 v1, 0x703

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 639
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getAutoSubstitute()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    or-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 652
    :goto_0
    return-void

    .line 643
    :cond_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 644
    const/high16 v0, 0x710

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 646
    :cond_3
    const v0, 0x7150002

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 647
    const v0, 0x7030001

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 650
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    goto :goto_0
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method protected shiftStateCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mCurrentKey:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    iget v3, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 347
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget v1, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    .line 348
    .local v1, targetShiftState:I
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 350
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->isAlphabet(Lcom/htc/android/htcime/ezsip/Keyboard$Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 351
    :cond_2
    const/4 v1, 0x1

    .line 356
    :cond_3
    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v4

    sparse-switch v2, :sswitch_data_0

    .line 366
    :goto_1
    iget v2, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mShiftState:I

    if-eq v2, v1, :cond_0

    .line 367
    invoke-virtual {p0, v1, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 360
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->doAutoCapCheck(I)I

    move-result v1

    .line 361
    goto :goto_1

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startInput()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 175
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/EZSIPView;->startInput()V

    .line 177
    iput v7, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    .line 178
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    .line 179
    .local v0, lang:I
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mAutoCapMode:I

    .line 182
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mMultitapWordComplete:Z

    iput-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mInitMultitapWordCompState:Z

    .line 185
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setKeyboardbyLang(I)V

    .line 186
    sget-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setPreviewEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->previewDismiss()V

    .line 189
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mAutoCapMode:I

    .line 191
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v6, -0xf

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 192
    .local v1, langKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_0

    .line 193
    sget-boolean v5, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLanguageSwitchMode:Z

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 194
    sget-boolean v5, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mLanguageSwitchMode:Z

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->adjustButtons([Lcom/htc/android/htcime/ezsip/Keyboard$Key;)I

    move-result v3

    .line 199
    .local v3, space_type_inc:I
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->AddWordDisableButtons(Z)V

    .line 200
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->DisableLangSwitchButton(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->getPredictionMode()Z

    move-result v2

    .line 203
    .local v2, predictionMode:Z
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v5, :pswitch_data_0

    .line 264
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 266
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->clearWCL()V

    .line 269
    const/high16 v5, 0x70f

    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->GetSysLocale(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 272
    const/high16 v5, 0x716

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->get20KDBnamebyLang(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->sendKeyEvent(I)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->InitialT9Setting()V

    .line 276
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->InitHTCFeature()V

    .line 279
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setStatusIcon()V

    .line 281
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->doAutoCapCheck(I)I

    move-result v5

    invoke-virtual {p0, v5, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    .line 282
    invoke-virtual {p0, v2, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setPredictionMode(ZZ)V

    .line 285
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 288
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v5, v5, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v6, v6, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 291
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->invalidateAll()V

    .line 292
    return-void

    .end local v2           #predictionMode:Z
    .end local v3           #space_type_inc:I
    :cond_1
    move v0, v4

    .line 194
    goto :goto_0

    .line 210
    .restart local v2       #predictionMode:Z
    .restart local v3       #space_type_inc:I
    :pswitch_1
    iput v8, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    .line 211
    const/4 v2, 0x0

    .line 212
    goto :goto_1

    .line 216
    :pswitch_2
    iput v8, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    .line 217
    const/4 v2, 0x0

    .line 219
    goto :goto_1

    .line 223
    :pswitch_3
    iput v8, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    .line 224
    const/4 v2, 0x0

    .line 226
    goto :goto_1

    .line 229
    :pswitch_4
    const/4 v2, 0x0

    .line 230
    iput v9, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->spaceType:I

    goto :goto_1

    .line 234
    :pswitch_5
    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->DisableLangSwitchButton(Z)V

    goto :goto_1

    .line 239
    :pswitch_6
    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0, v7}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->AddWordDisableButtons(Z)V

    goto :goto_1

    .line 243
    :pswitch_7
    const/4 v2, 0x0

    .line 245
    goto :goto_1

    .line 248
    :pswitch_8
    iget-boolean v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mGreekKB:Z

    if-eqz v5, :cond_2

    .line 250
    invoke-static {v7}, Lcom/htc/android/htcime/util/CharTransfer;->setTransferable(Z)V

    .line 251
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v5, v4}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 252
    invoke-virtual {p0, v9, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 255
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mShiftKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v5, v7}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 256
    invoke-virtual {p0, v7, v4}, Lcom/htc/android/htcime/ezsip/Port20KeySIPView;->setIMECapMode(IZ)V

    goto/16 :goto_1

    .line 203
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
