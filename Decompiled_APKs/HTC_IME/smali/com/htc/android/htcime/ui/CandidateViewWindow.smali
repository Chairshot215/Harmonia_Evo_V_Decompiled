.class public Lcom/htc/android/htcime/ui/CandidateViewWindow;
.super Ljava/lang/Object;
.source "CandidateViewWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CVW"


# instance fields
.field private mAttached:Lcom/htc/android/htcime/HTCIMMView;

.field private mCandidateContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mException:Z

.field private mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

.field private mIMEService:Lcom/htc/android/htcime/HTCIMEService;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

.field private mWCLWindow:Landroid/widget/PopupWindow;

.field private mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

.field private windowPositionY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 1
    .parameter "context"
    .parameter "htcIMM"
    .parameter "htcimmview"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/htc/android/htcime/ui/CandidateViewWindow;-><init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;Z)V
    .locals 2
    .parameter "context"
    .parameter "htcIMM"
    .parameter "htcimmview"
    .parameter "bIsFixed"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    .line 23
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    .line 24
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    .line 25
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    .line 28
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    .line 30
    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->windowPositionY:I

    .line 32
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    .line 33
    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mCandidateContainer:Landroid/widget/LinearLayout;

    .line 39
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    .line 42
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    .line 44
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p3, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    .line 48
    invoke-direct {p0, p4}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->inflateLayout(Z)V

    .line 49
    return-void
.end method

.method private inflateLayout(Z)V
    .locals 4
    .parameter "bIsFixed"

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 60
    if-eqz p1, :cond_2

    .line 61
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mCandidateContainer:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/FixedCandidateView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    .line 63
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mCandidateContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f030056

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/SymbolCandidateView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    .line 70
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mCandidateContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mCandidateContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 82
    :goto_1
    return-void

    .line 66
    :cond_1
    const v0, 0x7f030055

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030063

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/CandidateView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public calWCLBarWidth()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->calWCLBarWidth()I

    move-result v0

    .line 498
    :goto_0
    return v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->calWCLBarWidth()I

    move-result v0

    goto :goto_0

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearDragged()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->clearDragged()V

    .line 335
    :cond_0
    return-void
.end method

.method public clearText()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->clear()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->clear()V

    .line 262
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    .line 135
    const-string v1, "CVW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissWCL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCandidateCount()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getCandidateCount()I

    move-result v0

    .line 387
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getCandidateCount()I

    move-result v0

    goto :goto_0

    .line 387
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragStatus()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getDragStatus()Z

    move-result v0

    .line 446
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getDragStatus()Z

    move-result v0

    goto :goto_0

    .line 446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getException()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    return v0
.end method

.method public getPaddingSpace()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getPaddingSpace()I

    move-result v0

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWCLSelectionAtButton()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getWCLSelectionAtButton()Z

    move-result v0

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowPositionY()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->windowPositionY:I

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 97
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->setVisibility(I)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getWCLID()I

    move-result v0

    if-nez v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v0, v2}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->setVisibility(I)V

    .line 119
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setVisibility(I)V

    .line 122
    :cond_3
    return-void

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->setVisibility(I)V

    goto :goto_0
.end method

.method public init(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateView;->setService(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setService(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 89
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/CandidateViewWindow;->setListener(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 90
    return-void
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->isDragged()Z

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFoucsAtTop()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->isFoucsAtTop()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingAndVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 245
    goto :goto_0

    .line 248
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 252
    goto :goto_0
.end method

.method public onDpadKeyEventDown(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->onDpadKeyEventDown(I)Z

    move-result v0

    .line 364
    :goto_0
    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->onDpadKeyEventDown(I)Z

    move-result v0

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDpadKeyEventUp(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->onDpadKeyEventUp(I)Z

    move-result v0

    .line 352
    :goto_0
    return v0

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->onDpadKeyEventUp(I)Z

    move-result v0

    goto :goto_0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(Z[I)V
    .locals 1
    .parameter "showDropdown"
    .parameter "stateSet"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->setButton(Z[I)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setButton(Z[I)V

    goto :goto_0
.end method

.method public setButtonState([I)V
    .locals 1
    .parameter "stateSet"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setButtonState([I)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setButtonState([I)V

    goto :goto_0
.end method

.method public setCandidateHeight(I)V
    .locals 2
    .parameter "h"

    .prologue
    .line 391
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setHeight(I)V

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setHeight(I)V

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    if-eqz v1, :cond_3

    .line 401
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 402
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 403
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method public setDimension(II)V
    .locals 1
    .parameter "h"
    .parameter "w"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 377
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 378
    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 380
    :cond_1
    return-void
.end method

.method public setDragStatus(Z)V
    .locals 1
    .parameter "d"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setDragStatus(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method public setListener(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setCallBack(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setCallBack(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V

    .line 455
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setSelection(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setSelection(I)V

    .line 329
    :cond_1
    return-void
.end method

.method public setSuggestions(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "idx"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->clear()V

    .line 290
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 291
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->clear()V

    .line 296
    :cond_1
    :goto_1
    return-void

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->setSuggestions(Ljava/lang/String;I)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setSuggestions(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "idx"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->setSuggestions(Ljava/lang/String;I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setSuggestions(Ljava/lang/String;I)V

    .line 279
    :cond_1
    return-void
.end method

.method public setTwoLinesWCLSuggestions(Ljava/lang/String;I)V
    .locals 1
    .parameter "s"
    .parameter "idx"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 300
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->clear()V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->setTwoLinesWCLSuggestions(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setWCLID(I)V
    .locals 1
    .parameter "idx"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->setWCLID(I)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setWCLID(I)V

    .line 461
    :cond_1
    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "w"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 487
    :cond_0
    return-void
.end method

.method public setWindowPositionY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 427
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->windowPositionY:I

    .line 428
    return-void
.end method

.method public showWindow(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 142
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    .line 143
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    if-eqz v2, :cond_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateView;->calWCLBarWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->calWCLBarWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 160
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/htc/android/htcime/HTCIMMData;->WCL_Show_Time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v2, :cond_4

    .line 169
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v2, v6}, Lcom/htc/android/htcime/ui/CandidateView;->setVisibility(I)V

    .line 172
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->getWCLID()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->setVisibility(I)V

    .line 177
    :cond_5
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2, v6}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setVisibility(I)V

    .line 178
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->isPhoneHWR()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 179
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v0

    .line 180
    .local v0, bIsCandidatesViewShown:Z
    if-nez v0, :cond_0

    .line 181
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 182
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 183
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    goto :goto_0

    .line 163
    .end local v0           #bIsCandidatesViewShown:Z
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    .line 165
    const-string v2, "CVW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateDimension()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/CandidateView;->updateDimension()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/FixedCandidateView;->updateDimension()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    if-eqz v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mSymbolCandidateView:Lcom/htc/android/htcime/ui/SymbolCandidateView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SymbolCandidateView;->updateDimension()V

    .line 420
    :cond_2
    return-void
.end method

.method public updatePositionY(I)V
    .locals 0
    .parameter "Offset"

    .prologue
    .line 231
    return-void
.end method

.method public updatePositionY(III)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "offset"

    .prologue
    .line 234
    return-void
.end method

.method public updateWCL(IIII)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 190
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_1

    .line 191
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    if-eqz v2, :cond_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/CandidateView;->calWCLBarWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->calWCLBarWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 204
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWCLWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v2, :cond_4

    .line 211
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v2, v6}, Lcom/htc/android/htcime/ui/CandidateView;->setVisibility(I)V

    .line 214
    :cond_4
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2, v6}, Lcom/htc/android/htcime/ui/FixedCandidateView;->setVisibility(I)V

    .line 216
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL_Symbol:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->isPhoneHWR()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/FixedCandidateView;->isFixed()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 217
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->isCandidatesViewShown()Z

    move-result v0

    .line 218
    .local v0, bIsCandidatesViewShown:Z
    if-nez v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mAttached:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMMView;->adjustWCLHeight()V

    .line 220
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->setCandidatesViewShown(Z)V

    .line 221
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mIMEService:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v5}, Lcom/htc/android/htcime/HTCIMEService;->broadcastHTC_IMEState(Z)V

    goto :goto_0

    .line 205
    .end local v0           #bIsCandidatesViewShown:Z
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mException:Z

    .line 207
    const-string v2, "CVW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWCL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updatemRSpaceReserve(I)V
    .locals 1
    .parameter "w"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mWordCandsList:Lcom/htc/android/htcime/ui/CandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->updatemRSpaceReserve(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateViewWindow;->mFixedWordList:Lcom/htc/android/htcime/ui/FixedCandidateView;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/FixedCandidateView;->updatemRSpaceReserve(I)V

    .line 469
    :cond_1
    return-void
.end method
