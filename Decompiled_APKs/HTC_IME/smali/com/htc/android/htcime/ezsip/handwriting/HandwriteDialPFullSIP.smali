.class public Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;
.super Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;
.source "HandwriteDialPFullSIP.java"

# interfaces
.implements Lcom/htc/android/htcime/Intf/IHTCSIP;


# static fields
.field private static final LOG_CLASS:Ljava/lang/String; = "[HandwriteDialPSIP] "

.field private static final LOG_TAG:Ljava/lang/String; = "HandwriteDialPSIP"

.field private static final LOG_TITLE:Ljava/lang/String; = "HandwritingDialLog"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const-string v1, "Handwriting SIP"

    iput-object v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipName:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    const/16 v1, 0x16

    iput v1, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 46
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->isWCLVisible:Z

    .line 48
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    iput-boolean v2, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->bDropBtnVisibile:Z

    .line 50
    const/high16 v0, 0x100

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mSipKeyBase:I

    .line 51
    iput v2, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mEngSipID:I

    .line 52
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mSymSipID:I

    .line 55
    const v0, 0x7f050010

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->m_nKeyboard:I

    .line 56
    const v0, 0x7f020035

    iput v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->m_nPanel:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->m_bIsPanelEmbeddedInSip:Z

    .line 58
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->closing()V

    .line 105
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->finishInput()V

    .line 106
    return-void
.end method

.method public getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mMyData:Lcom/htc/android/htcime/Intf/HTCSIPData;

    return-object v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 0
    .parameter "htcIMM"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 62
    return-void
.end method

.method public notify(IILjava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "iParam"
    .parameter "sParam"

    .prologue
    .line 116
    return-void
.end method

.method public onClick(III)V
    .locals 2
    .parameter "btnIdx"
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->getKeyboard()Lcom/htc/android/htcime/ezsip/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ezsip/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    .line 85
    .local v0, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-super {p0, p1, p2, p3}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->onClick(III)V

    .line 86
    return-void
.end method

.method public onCursorChanged()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public restartInput()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setStatusIcon()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public startInput()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteDialPFullSIP;->mContinuousInputMode:I

    .line 95
    invoke-super {p0}, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->startInput()V

    .line 96
    return-void
.end method
