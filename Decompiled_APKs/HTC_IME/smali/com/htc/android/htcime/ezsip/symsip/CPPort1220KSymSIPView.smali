.class public Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;
.super Lcom/htc/android/htcime/ezsip/KeyboardView;
.source "CPPort1220KSymSIPView.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final EmotIconIndex:[I = null

.field private static final LANG_BUTTON_INDEX:I = 0x11

.field private static final TAG:Ljava/lang/String; = "CPPort1220KSymSIPView"

.field private static final TYPE_EMOTICON:I = 0x4

.field private static final TYPE_FULL_NUM:I = 0x7

.field private static final TYPE_FULL_SYMBOL:I = 0x2

.field private static final TYPE_HALF_NUM:I = 0x6

.field private static final TYPE_HALF_SYMBOL:I = 0x1

.field private static final TYPE_MATH:I = 0x3

.field private static final TYPE_OTHER:I = 0x5

.field private static final sEmotIcon:[Ljava/lang/String;


# instance fields
.field private mHalfWidth:Z

.field private mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

.field private mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

.field private mType:I

.field private userPrefHalfKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 61
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ":)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ";)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":("

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ":o"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":P"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":$"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":S"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "(^o^)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "^o^y"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "(^_^)"

    aput-object v2, v0, v1

    const-string v1, "*^o^*"

    aput-object v1, v0, v3

    const/16 v1, 0xc

    const-string v2, "\\^o^/"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "^_~"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "(>_<)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "::>_<::"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "T_T"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "(~_~)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "-_-b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "@_@"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "*_*"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u518frz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sEmotIcon:[Ljava/lang/String;

    .line 78
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->EmotIconIndex:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/htc/android/htcime/Intf/HTCSIPData;

    invoke-direct {v0}, Lcom/htc/android/htcime/Intf/HTCSIPData;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Chinese Portrait 12/20Key Symbol"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "com.htc.android.ezsip"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->packageName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x13

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 96
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 98
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->closing()V

    .line 222
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->finishInput()V

    .line 223
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "htcIMM"

    .prologue
    const/4 v3, 0x0

    .line 107
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 109
    new-instance v0, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v2, 0x7f05000b

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 110
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setPopupOffset(II)V

    .line 113
    iput v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSIP_ID:I

    .line 114
    const/high16 v0, 0xf00

    iput v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSIP_LP_ID:I

    .line 115
    return-void
.end method

.method initPhonKeys()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v1, -0x33

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 530
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v1, -0x3d

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 531
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v1, -0x34

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 532
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v1, -0x36

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 533
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v1, -0x35

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 535
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_2

    .line 540
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 545
    :cond_4
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 526
    return-void
.end method

.method public onClick(III)V
    .locals 13
    .parameter "ButtonIndex"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 255
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v5, v10, p1

    .line 256
    .local v5, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    iget-object v10, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v0, v10, v11

    .line 258
    .local v0, code:I
    iget-object v10, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    array-length v10, v10

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-lez v10, :cond_0

    .line 259
    iget-object v10, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->codes:[I

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v11, v11, -0x1

    aget v0, v10, v11

    .line 260
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 511
    int-to-char v10, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, codeLabel:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, shiftCodeLabel:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 515
    const/high16 v10, 0xf00

    or-int/2addr v10, v0

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sendKeyEvent(I)V

    .line 517
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-ne v10, v11, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 518
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v11, v11, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    .line 522
    .end local v1           #codeLabel:Ljava/lang/String;
    .end local v7           #shiftCodeLabel:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 263
    :sswitch_0
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v10, v10, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMMView;->hideIMMView()V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v10, Lcom/htc/android/htcime/HTCIMMData;->mForceUpdateSIP:Ljava/lang/Boolean;

    .line 268
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v11, v11, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/htc/android/htcime/HTCIMEService;->setSIP(IZ)V

    goto :goto_0

    .line 272
    :sswitch_2
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendKeyChar(C)V

    goto :goto_0

    .line 276
    :sswitch_3
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0x43

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 279
    :sswitch_4
    iget v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mShiftState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 280
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 282
    :cond_2
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setIMECapMode(IZ)V

    goto :goto_0

    .line 285
    :sswitch_5
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v10}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 286
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_1

    .line 288
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 289
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v10, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 290
    const/high16 v10, 0xf00

    iget-object v11, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v11, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sendKeyEvent(I)V

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 292
    :cond_3
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 295
    .end local v3           #i:I
    .end local v4           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_6
    const/high16 v10, 0xf00

    iget-object v11, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sendKeyEvent(I)V

    goto :goto_0

    .line 298
    :sswitch_7
    iget-boolean v10, v5, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->on:Z

    if-eqz v10, :cond_5

    .line 299
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 302
    :goto_2
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    if-le v10, v11, :cond_6

    .line 303
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 308
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mAccentPage:I

    if-ne v10, v11, :cond_7

    .line 309
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 313
    :goto_4
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 316
    iget v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 317
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v10, v10, -0x1

    sget-object v11, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->EmotIconIndex:[I

    array-length v11, v11

    mul-int v8, v10, v11

    .line 319
    .local v8, start:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    sget-object v10, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->EmotIconIndex:[I

    array-length v10, v10

    if-ge v3, v10, :cond_9

    .line 320
    add-int v2, v8, v3

    .line 321
    .local v2, ele_index:I
    sget-object v10, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->EmotIconIndex:[I

    aget v6, v10, v3

    .line 323
    .local v6, key_index:I
    sget-object v10, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sEmotIcon:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_8

    .line 324
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v6

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 325
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v6

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    .line 319
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 301
    .end local v2           #ele_index:I
    .end local v3           #i:I
    .end local v6           #key_index:I
    .end local v8           #start:I
    :cond_5
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_2

    .line 304
    :cond_6
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    if-gtz v10, :cond_4

    .line 305
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    goto :goto_3

    .line 311
    :cond_7
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setSplitKeyLayout(I)[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    goto :goto_4

    .line 327
    .restart local v2       #ele_index:I
    .restart local v3       #i:I
    .restart local v6       #key_index:I
    .restart local v8       #start:I
    :cond_8
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v6

    sget-object v11, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sEmotIcon:[Ljava/lang/String;

    aget-object v11, v11, v2

    iput-object v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 328
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v6

    sget-object v11, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->sEmotIcon:[Ljava/lang/String;

    aget-object v11, v11, v2

    iput-object v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 329
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeys:[Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    aget-object v10, v10, v6

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->enable:Z

    goto :goto_6

    .line 334
    .end local v2           #ele_index:I
    .end local v3           #i:I
    .end local v6           #key_index:I
    .end local v8           #start:I
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 337
    :sswitch_8
    iget-boolean v9, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 338
    .local v9, tmpB:Z
    iget v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    packed-switch v10, :pswitch_data_0

    .line 388
    :cond_a
    :goto_7
    :pswitch_0
    iget-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->isSingleLine:Z

    if-nez v10, :cond_b

    .line 389
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 390
    iget-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    if-eq v9, v10, :cond_b

    .line 391
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    :cond_b
    const-string v10, "CPPort1220KSymSIPView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEYCODE_SYMB_WIDTH NEW mType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mHalfWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 398
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 400
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v11, -0x37

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 340
    :pswitch_1
    const/4 v10, 0x7

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 341
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050006

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 342
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 343
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 344
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 345
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_a

    .line 346
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto/16 :goto_7

    .line 349
    :pswitch_2
    const/4 v10, 0x6

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 350
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050009

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 351
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 352
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 353
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 354
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_a

    .line 355
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto/16 :goto_7

    .line 358
    :pswitch_3
    const/4 v10, 0x2

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 359
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050007

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 360
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x2

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 361
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 362
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 363
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_c

    .line 364
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 367
    :cond_c
    iget-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->isSingleLine:Z

    if-nez v10, :cond_a

    .line 368
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 369
    iget-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    if-eq v9, v10, :cond_a

    .line 370
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    .line 377
    :pswitch_4
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 378
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f05000b

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 379
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x3

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 380
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 381
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 382
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_a

    .line 383
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto/16 :goto_7

    .line 407
    .end local v9           #tmpB:Z
    :sswitch_9
    const/4 v10, 0x6

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 408
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050009

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 409
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 416
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 417
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 420
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 421
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_d

    .line 422
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymNumKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 425
    :cond_d
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 428
    :sswitch_a
    const/4 v10, 0x3

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 429
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050008

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 430
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x3

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 431
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 432
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 435
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 436
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_e

    .line 437
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 439
    :cond_e
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 443
    :sswitch_b
    const/4 v10, 0x4

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 444
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050005

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 445
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x2

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 446
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 447
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 450
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 451
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_f

    .line 452
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymEmoKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 454
    :cond_f
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 458
    :sswitch_c
    const/4 v10, 0x5

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 459
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f05000a

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 460
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x3

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 461
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 462
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 465
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 466
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_10

    .line 467
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymOtherKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 469
    :cond_10
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 473
    :sswitch_d
    iget-boolean v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    if-eqz v10, :cond_12

    .line 474
    const/4 v10, 0x1

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 475
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f05000b

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 476
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x3

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 483
    :goto_8
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x1

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    .line 484
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v11, v11, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 486
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v11, -0x37

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v10

    iget-boolean v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 489
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v10, :cond_11

    .line 490
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymPunKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 492
    :cond_11
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    goto/16 :goto_0

    .line 479
    :cond_12
    const/4 v10, 0x2

    iput v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 480
    new-instance v10, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v11, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v12, 0x7f050007

    invoke-direct {v10, v11, v12}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 481
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/4 v11, 0x2

    iput v11, v10, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    goto :goto_8

    .line 497
    :sswitch_e
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0x15

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 500
    :sswitch_f
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0x16

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 503
    :sswitch_10
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0x13

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 506
    :sswitch_11
    iget-object v10, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v11, 0x14

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto/16 :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        -0x40 -> :sswitch_b
        -0x3f -> :sswitch_9
        -0x3d -> :sswitch_d
        -0x37 -> :sswitch_8
        -0x36 -> :sswitch_c
        -0x35 -> :sswitch_b
        -0x34 -> :sswitch_a
        -0x33 -> :sswitch_9
        -0x15 -> :sswitch_f
        -0x14 -> :sswitch_e
        -0x13 -> :sswitch_11
        -0x12 -> :sswitch_10
        -0xe -> :sswitch_6
        -0xd -> :sswitch_5
        -0xc -> :sswitch_7
        -0xb -> :sswitch_1
        -0x4 -> :sswitch_0
        -0x1 -> :sswitch_4
        0x8 -> :sswitch_3
        0xa -> :sswitch_2
    .end sparse-switch

    .line 338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public startInput()V
    .locals 8

    .prologue
    const v7, 0x7f050008

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 124
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/KeyboardView;->startInput()V

    .line 126
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getSIPSwitcher()Lcom/htc/android/htcime/util/SIPSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/htcime/util/SIPSwitcher;->getCurSIPID()I

    move-result v0

    .line 127
    .local v0, act_sip:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    .line 129
    if-gt v0, v6, :cond_4

    .line 132
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->isSingleLine:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 135
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    if-eqz v2, :cond_2

    .line 136
    iput v6, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 137
    new-instance v2, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 198
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard;->mPage:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->setPage(I)V

    .line 202
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    const/16 v3, -0x37

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v1

    .line 203
    .local v1, mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    if-eqz v1, :cond_1

    .line 204
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->invalidateAll()V

    .line 212
    return-void

    .line 139
    .end local v1           #mKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_2
    const/4 v2, 0x7

    iput v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 140
    new-instance v2, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    const v4, 0x7f050006

    invoke-direct {v2, v3, v4}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    goto :goto_0

    .line 143
    :cond_3
    iput v6, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 144
    new-instance v2, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 145
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    goto :goto_0

    .line 180
    :cond_4
    new-instance v2, Lcom/htc/android/htcime/ezsip/Keyboard;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Lcom/htc/android/htcime/ezsip/Keyboard;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->setKeyboard(Lcom/htc/android/htcime/ezsip/Keyboard;)V

    .line 181
    iput v5, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mType:I

    .line 182
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mKeyboard:Lcom/htc/android/htcime/ezsip/Keyboard;

    iput v5, v2, Lcom/htc/android/htcime/ezsip/Keyboard;->mTotalPage:I

    .line 184
    iget-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->isSingleLine:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 185
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSharePref:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->userPrefHalfKey:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->initPhonKeys()V

    .line 192
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mSymMathKey:Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->setToggle(Z)V

    goto :goto_1

    .line 187
    :cond_5
    iput-boolean v4, p0, Lcom/htc/android/htcime/ezsip/symsip/CPPort1220KSymSIPView;->mHalfWidth:Z

    goto :goto_2
.end method
