.class public Lcom/htc/android/htcime/ui/SymbolCandidateView;
.super Landroid/widget/LinearLayout;
.source "SymbolCandidateView.java"

# interfaces
.implements Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

.field private mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

.field private mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 27
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 28
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 29
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 30
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 31
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 32
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    .line 33
    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

    .line 120
    new-instance v0, Lcom/htc/android/htcime/ui/SymbolCandidateView$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/SymbolCandidateView$1;-><init>(Lcom/htc/android/htcime/ui/SymbolCandidateView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    .line 41
    iput-object p1, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/htc/android/htcime/HTCIMEService;->peekInstance()Lcom/htc/android/htcime/HTCIMEService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/SymbolCandidateView;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v6, 0x7f020028

    const v5, 0x7f020027

    .line 48
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 49
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020134

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 55
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_1:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 64
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 65
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_2:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 69
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_3:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    const v0, 0x7f0e0060

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbolKbuttonHandler:Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setOnKeyButtonListener(Lcom/htc/android/htcime/ui/OnDefaultKeyButtonListener;)V

    .line 76
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyUpBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mSymbol_4:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/DefaultKeyButton;->setKeyDownBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const-string v3, "RRRLOG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDPADLeftBtn - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "RRRLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDPADRightBtn - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    :cond_1
    move v1, v2

    .line 81
    goto :goto_1
.end method

.method public onKeyButtonDown(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 114
    return-void
.end method

.method public onKeyButtonUp(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 118
    return-void
.end method

.method public onKeyPress(Lcom/htc/android/htcime/ui/DefaultKeyButton;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADLeftBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mDPADRightBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mHTCIMEService:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendArrowKeyEvent(I)V

    goto :goto_0
.end method

.method public updateDimension()V
    .locals 4

    .prologue
    .line 86
    const-string v2, "RRRLOG"

    const-string v3, "updateDimension - "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/htc/android/htcime/ui/SymbolCandidateView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 89
    .local v1, winMgr:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 102
    .local v0, mDisplayWidth:I
    return-void
.end method
