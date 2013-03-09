.class public abstract Lcom/htc/android/htcime/ezsip/EZHWKBView;
.super Landroid/view/View;
.source "EZHWKBView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;,
        Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;,
        Lcom/htc/android/htcime/ezsip/EZHWKBView$shiftState;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true

.field protected static final LOCKED:I = 0x4

.field protected static final NORMAL:I = 0x0

.field public static final NOT_A_KEY:I = -0x1

.field protected static final PRESSED:I = 0x1

.field protected static final RELEASED:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "EZHWKBView"

.field protected static final USED:I = 0x3


# instance fields
.field protected mAccent_list_AZ:[Ljava/lang/String;

.field protected mAccent_list_others:[Ljava/lang/String;

.field protected mAutoCapMode:I

.field private mAutoSubstitute:Z

.field public mCID:Ljava/lang/String;

.field protected mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

.field protected mCurAccent:Ljava/lang/String;

.field protected mCurFnState:I

.field protected mCurrentKeyCode:I

.field protected mFirstDownFNState:I

.field protected mFirstDownShiftState:I

.field protected mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field protected mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field protected mHasAccent:Z

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field protected mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

.field private mPredictionMode:Z

.field protected mSIP_ID:I

.field protected mSIP_LP_ID:I

.field protected mSIPkeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

.field protected mShiftState:I

.field protected mShiftbyAutoCap:Z

.field protected mSystemCapState:I

.field protected mSystemFnState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 52
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 53
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSIP_ID:I

    .line 54
    const/high16 v0, 0x400

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSIP_LP_ID:I

    .line 55
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSIPkeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCurrentKeyCode:I

    .line 61
    new-instance v0, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;-><init>(Lcom/htc/android/htcime/ezsip/EZHWKBView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mMultiTapHandler:Lcom/htc/android/htcime/ezsip/EZHWKBView$MultiTapHandler;

    .line 64
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCID:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAccent_list_AZ:[Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAccent_list_others:[Ljava/lang/String;

    .line 431
    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mFirstDownShiftState:I

    .line 432
    iput v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mFirstDownFNState:I

    .line 433
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHasAccent:Z

    .line 434
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCurAccent:Ljava/lang/String;

    .line 435
    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCharPicker:Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;

    .line 115
    return-void
.end method


# virtual methods
.method protected doAutoCapCheck(I)I
    .locals 7
    .parameter "targetShiftState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x3

    .line 178
    const-string v4, "EZHWKBView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doAutoCapCheck, mAutoCapMode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoCapMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sput-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->mForceAutoCapCheck:Z

    .line 182
    iget v4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoCapMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v4, :cond_3

    .line 183
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    if-ne v2, v1, :cond_2

    .line 213
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, p1

    .line 183
    goto :goto_0

    .line 187
    :cond_3
    iget v4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    if-eq v4, v1, :cond_1

    .line 190
    if-ne p1, v2, :cond_6

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    .line 192
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mInputFieldAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v1, v4}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 193
    .local v0, cap:I
    const-string v1, "EZHWKBView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAutoCapCheck cap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoCapMode:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    if-eqz v1, :cond_5

    .line 211
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :goto_3
    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    :cond_5
    move v1, p1

    .line 213
    goto :goto_0

    .end local v0           #cap:I
    :cond_6
    move v1, v3

    .line 190
    goto :goto_1

    .line 198
    .restart local v0       #cap:I
    :pswitch_0
    const/4 p1, 0x3

    .line 199
    goto :goto_2

    .line 201
    :pswitch_1
    if-eqz v0, :cond_4

    .line 202
    const/4 p1, 0x2

    goto :goto_2

    .line 205
    :pswitch_2
    if-eqz v0, :cond_4

    .line 206
    const/4 p1, 0x2

    goto :goto_2

    :cond_7
    move v2, v3

    .line 211
    goto :goto_3

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected getAutoSubstitute()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoSubstitute:Z

    return v0
.end method

.method public getFnState()Z
    .locals 2

    .prologue
    .line 396
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCurFnState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPredictionMode()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mPredictionMode:Z

    return v0
.end method

.method public getShiftState()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    return v0
.end method

.method protected getSystemShiftState()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-static {v0}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->getSystemShiftState(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public refreshCurFnState()V
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSystemFnState:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mCurFnState:I

    .line 402
    return-void
.end method

.method protected sendKeyEvent(I)V
    .locals 1
    .parameter "keyID"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 324
    return-void
.end method

.method protected setIMECapMode(IZ)V
    .locals 3
    .parameter "capMode"
    .parameter "forceSync"

    .prologue
    .line 136
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSIPkeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mSIPkeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/Keyboard;->mXmlID:I

    const v1, 0x7f050024

    if-ne v0, v1, :cond_0

    .line 138
    const/4 p1, 0x2

    .line 140
    :cond_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_2

    .line 141
    :cond_1
    iput p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x701

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftState:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 144
    :cond_2
    return-void
.end method

.method protected abstract setIMEInputMode()V
.end method

.method protected setPredictionMode(ZZ)V
    .locals 4
    .parameter "mode"
    .parameter "isUser"

    .prologue
    const/4 v3, 0x7

    .line 223
    if-eqz p2, :cond_2

    .line 224
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sput-boolean p1, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    .line 257
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mPredictionMode:Z

    if-eq v1, p1, :cond_1

    .line 258
    iput-boolean p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mPredictionMode:Z

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->setIMEInputMode()V

    .line 261
    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mInputMethodType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 227
    const/4 p1, 0x0

    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mbUseExternalHWKB:Z

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mQWERTYPrediction:Z

    .line 235
    .local v0, hwkbPrediction:Z
    :goto_1
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-eq v1, v3, :cond_5

    .line 237
    const/4 p1, 0x0

    goto :goto_0

    .line 232
    .end local v0           #hwkbPrediction:Z
    :cond_4
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mHWQWERTYPrediction:Z

    goto :goto_1

    .line 238
    .restart local v0       #hwkbPrediction:Z
    :cond_5
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sIsIMECursorAdapter:Z

    if-eqz v1, :cond_6

    .line 239
    const/4 p1, 0x0

    goto :goto_0

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v1}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v1

    iget v1, v1, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v1, v3, :cond_7

    .line 242
    const/4 p1, 0x1

    goto :goto_0

    .line 243
    :cond_7
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletionPortrait:Z

    if-eqz v1, :cond_8

    .line 244
    const/4 p1, 0x0

    goto :goto_0

    .line 245
    :cond_8
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v1, :cond_0

    .line 246
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected setShiftCycle(I)I
    .locals 2
    .parameter "now"

    .prologue
    const/4 v0, 0x1

    .line 280
    packed-switch p1, :pswitch_data_0

    .line 299
    :cond_0
    const/4 v0, 0x4

    :goto_0
    :pswitch_0
    return v0

    .line 284
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 287
    :pswitch_2
    iget-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    goto :goto_0

    .line 280
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

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 314
    const/4 v0, 0x4

    :goto_0
    :pswitch_0
    return v0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mShiftbyAutoCap:Z

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public startInput()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mPredictionMode_Usr:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mPredictionMode:Z

    .line 163
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mAutoSubstitute:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoSubstitute:Z

    .line 164
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 167
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mAutoCapMode:I

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mAutoCapMode:I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mContentTypePredictionMode:Z

    .line 175
    return-void
.end method

.method public voiceTextCheck(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 411
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_VoiceInput_Enable:Z

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->getResultFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    sparse-switch p1, :sswitch_data_0

    .line 422
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->finishComposingText()V

    .line 425
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVoiceInput()Lcom/htc/android/htcime/deprecated/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/htcime/deprecated/voice/VoiceInput;->clearResultFlag()V

    .line 428
    :cond_0
    :sswitch_0
    return-void

    .line 419
    :sswitch_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->commitText(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method
