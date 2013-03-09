.class public Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "Port1220KSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "Port1220KSymSIPView"


# instance fields
.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait 12/20Key Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x5

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 54
    return-void
.end method

.method private onInterceptClick()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    check-cast v1, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;->getChangeDirection()I

    move-result v0

    .line 191
    .local v0, direction:I
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 193
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v1, v4, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    move v1, v2

    .line 197
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public AddWordDisableButtons(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mAddWordFlag:Z

    .line 184
    return-void
.end method

.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "label"

    .prologue
    .line 145
    const-string v1, "\u00df"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 149
    .end local p1
    .local v0, label:Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 146
    .end local v0           #label:Ljava/lang/CharSequence;
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v0, p1

    .line 149
    .end local p1
    .restart local v0       #label:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->closing()V

    .line 126
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 127
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method protected handleAccent()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->getAccentMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mSIP_LP_ID:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mAccentWindow:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->getAccentString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->sendKeyEvent(I)V

    .line 167
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setAccentMode(Z)V

    .line 170
    const/4 v0, 0x1

    .line 172
    :cond_0
    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 63
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 65
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_htcime_noarrow"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v2, 0x7f050027

    goto :goto_0

    :cond_0
    const v2, 0x7f05007a

    :goto_0
    new-instance v0, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/AdvancedKeyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setPopupOffset(II)V

    .line 69
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mSIP_ID:I

    .line 70
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mSIP_LP_ID:I

    .line 71
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 310
    return-void
.end method

.method public onClick(III)V
    .locals 11
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v10, 0xf00

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 213
    invoke-direct {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->onInterceptClick()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v4, v6, p1

    .line 217
    .local v4, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v6, v8

    .line 218
    .local v0, code:I
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v6, v6

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v6, :cond_2

    .line 219
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    .line 220
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 294
    int-to-char v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, codeLabel:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, shiftCodeLabel:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 298
    or-int v6, v10, v0

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->sendKeyEvent(I)V

    .line 300
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-ne v6, v7, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 223
    .end local v1           #codeLabel:Ljava/lang/String;
    .end local v5           #shiftCodeLabel:Ljava/lang/String;
    :sswitch_0
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 227
    :sswitch_1
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 228
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 232
    :sswitch_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 236
    :sswitch_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0x43

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 239
    :sswitch_4
    iget v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mShiftState:I

    if-ne v6, v9, :cond_3

    .line 240
    const/4 v6, 0x3

    invoke-virtual {p0, v6, v8}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0, v9, v8}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setIMECapMode(IZ)V

    goto/16 :goto_0

    .line 245
    :sswitch_5
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 246
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_0

    .line 248
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 249
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 250
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    or-int/2addr v6, v10

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->sendKeyEvent(I)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :cond_4
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 255
    .end local v2           #i:I
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    or-int/2addr v6, v10

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->sendKeyEvent(I)V

    goto/16 :goto_0

    .line 258
    :sswitch_7
    iget-boolean v6, v4, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v6, :cond_6

    .line 259
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 262
    :goto_2
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    if-le v6, v7, :cond_7

    .line 263
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v9, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 268
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-ne v6, v7, :cond_8

    .line 269
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 272
    :goto_4
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 273
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 261
    :cond_6
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_2

    .line 264
    :cond_7
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v6, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-gtz v6, :cond_5

    .line 265
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v7, v7, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    iput v7, v6, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_3

    .line 271
    :cond_8
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v6, v9}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_4

    .line 277
    :sswitch_8
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 280
    :sswitch_9
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0x16

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 283
    :sswitch_a
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 286
    :sswitch_b
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v7, 0x14

    invoke-virtual {v6, v7}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 289
    :sswitch_c
    const/16 v6, 0x3e

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->sendKeyEvent(I)V

    .line 290
    iget-object v6, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v7, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_9
        -0x14 -> :sswitch_8
        -0x13 -> :sswitch_b
        -0x12 -> :sswitch_a
        -0xe -> :sswitch_6
        -0xd -> :sswitch_5
        -0xc -> :sswitch_7
        -0xb -> :sswitch_1
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "me"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v1, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-ne v0, v1, :cond_0

    .line 138
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public startInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 82
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->init_lpd_data()V

    .line 84
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setPreviewEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->previewDismiss()V

    .line 87
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    sget v0, Lcom/htc/android/htcime/HTCIMMData;->mLanguage:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v1, 0x3

    iput v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->AddWordDisableButtons(Z)V

    .line 107
    :goto_1
    invoke-virtual {p0, v2, v2}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setIMECapMode(IZ)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->setStatusIcon()V

    .line 112
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 115
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->invalidateAll()V

    .line 116
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    goto :goto_0

    .line 100
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/symsip/Port1220KSymSIPView;->AddWordDisableButtons(Z)V

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method
