.class public Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "LandHWKBQweSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "LandHWKBQweSymSIPView"


# instance fields
.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Landscape HWKB Qwerty Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0xa

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 56
    return-void
.end method


# virtual methods
.method public AddWordDisableButtons(Z)V
    .locals 0
    .parameter "disable"

    .prologue
    .line 157
    return-void
.end method

.method public finishInput()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->closing()V

    .line 130
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 65
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 67
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mContext:Landroid/content/Context;

    const v2, 0x7f050016

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 69
    const/4 v0, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->setPopupOffset(II)V

    .line 71
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mSIP_ID:I

    .line 72
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mSIP_LP_ID:I

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-super {p0, v0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 262
    return-void
.end method

.method public onClick(III)V
    .locals 9
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/high16 v8, 0xf00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v3, v4, p1

    .line 172
    .local v3, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v0, v4, v6

    .line 173
    .local v0, code:I
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v4, :cond_0

    .line 174
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v5, v5, -0x1

    aget v0, v4, v5

    .line 175
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 245
    or-int v4, v8, v0

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->sendKeyEvent(I)V

    .line 248
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 250
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v4, :cond_1

    .line 251
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 252
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 178
    :sswitch_0
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 180
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 184
    :sswitch_1
    iget-boolean v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mAddWordFlag:Z

    if-nez v4, :cond_1

    .line 185
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->sendKeyEvent(I)V

    .line 186
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 190
    :sswitch_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 191
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 195
    :sswitch_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 199
    :sswitch_4
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x43

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 202
    :sswitch_5
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 203
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1

    .line 205
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 207
    iget-object v4, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    or-int/2addr v4, v8

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->sendKeyEvent(I)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_2
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 212
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->hideHWKBSymSip()Z

    .line 214
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    if-nez v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 216
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v5, v5, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto/16 :goto_0

    .line 221
    .end local v1           #i:I
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-ne v4, v7, :cond_3

    .line 222
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v5, 0x2

    iput v5, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 225
    :goto_2
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v5, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v5, v5, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->invalidateAll()V

    .line 227
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iput v6, v4, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymPos:I

    .line 228
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    iput v6, v4, Lcom/htc/android/htcime/HTCIMMView;->mCurHWKBSymRow:I

    .line 229
    invoke-super {p0, v6}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v7, v4, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_2

    .line 233
    :sswitch_7
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 236
    :sswitch_8
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 239
    :sswitch_9
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 242
    :sswitch_a
    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_8
        -0x14 -> :sswitch_7
        -0x13 -> :sswitch_a
        -0x12 -> :sswitch_9
        -0xd -> :sswitch_5
        -0xc -> :sswitch_6
        -0xb -> :sswitch_2
        -0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public startInput()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 87
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->init_lpd_data()V

    .line 89
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->setPreviewEnabled(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->previewDismiss()V

    .line 91
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v2, 0x2

    iput v2, v1, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 92
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mAddWordFlag:Z

    .line 94
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v2, -0xb

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    .line 95
    .local v0, abcSIPKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    packed-switch v1, :pswitch_data_0

    .line 102
    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    .line 107
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mAddWordFlag:Z

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->AddWordDisableButtons(Z)V

    .line 108
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mShiftState:I

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->setStatusIcon()V

    .line 113
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->loadFeedbackBG(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->invalidateAll()V

    .line 120
    return-void

    .line 98
    :pswitch_0
    iput-boolean v3, p0, Lcom/htc/android/htcime/ezsip/symsip/LandHWKBQweSymSIPView;->mAddWordFlag:Z

    .line 99
    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setEnable(Z)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method
