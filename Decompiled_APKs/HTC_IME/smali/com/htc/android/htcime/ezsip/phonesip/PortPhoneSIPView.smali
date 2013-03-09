.class public Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "PortPhoneSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final TAG:Ljava/lang/String; = "PortPhoneSIPView"


# instance fields
.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Portrait Phone"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 53
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->closing()V

    .line 107
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 108
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 62
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 64
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/LandPhoneSIPView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tweaks_htcime_noarrow"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v2, 0x7f050044

    goto :goto_0

    :cond_0
    const v2, 0x7f050097

    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->setPopupOffset(II)V

    .line 68
    iput v3, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mSIP_ID:I

    .line 69
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mSIP_LP_ID:I

    .line 70
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 189
    return-void
.end method

.method public onClick(III)V
    .locals 4
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v0, v1, p1

    .line 142
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    sparse-switch v1, :sswitch_data_0

    .line 179
    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, -0x30

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    .line 184
    :goto_0
    return-void

    .line 145
    :sswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 148
    :sswitch_1
    const v1, 0xf000070

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 151
    :sswitch_2
    const v1, 0xf000077

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 155
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 159
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 163
    :sswitch_5
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x43

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 167
    :sswitch_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_0

    .line 170
    :sswitch_7
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_0

    .line 173
    :sswitch_8
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_0

    .line 176
    :sswitch_9
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_0

    .line 182
    :cond_0
    const/high16 v1, 0xf00

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        -0x15 -> :sswitch_7
        -0x14 -> :sswitch_6
        -0x13 -> :sswitch_9
        -0x12 -> :sswitch_8
        -0xb -> :sswitch_3
        -0xa -> :sswitch_2
        -0x9 -> :sswitch_1
        -0x4 -> :sswitch_0
        0x8 -> :sswitch_5
        0xa -> :sswitch_4
    .end sparse-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public startInput()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->init_lpd_data()V

    .line 83
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->InternalTest_ShowHint:Z

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->setPreviewEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->previewDismiss()V

    .line 87
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 90
    .local v0, mbPhoneEdit:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->setStatusIcon()V

    .line 93
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setImeOptions(II)V

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/phonesip/PortPhoneSIPView;->invalidateAll()V

    .line 97
    return-void

    .line 87
    .end local v0           #mbPhoneEdit:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
