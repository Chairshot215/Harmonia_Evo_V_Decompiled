.class public Lcom/htc/android/htcime/ui/FullWCL;
.super Landroid/widget/FrameLayout;
.source "FullWCL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# static fields
.field public static final DEFAULT_WCL_HEIGHT:I = 0xbe

.field public static final DEFAULT_WCL_LINE:I = 0x1

.field private static final MARK_DEBUG:Z


# instance fields
.field private isNoSIP:Z

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field public mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mWCLID:I

.field private mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

.field mWcvHeight:I

.field mWcvWidth:I

.field private mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

.field private mbWclSpreaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/FullWCL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 52
    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 53
    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 55
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->isNoSIP:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mbWclSpreaded:Z

    .line 58
    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    .line 59
    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 61
    iput v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvHeight:I

    .line 62
    iput v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvWidth:I

    .line 65
    iput v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWCLID:I

    .line 75
    return-void
.end method


# virtual methods
.method public findLineSelection(Z)I
    .locals 1
    .parameter "toNextLine"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->findLineSelection(Z)I

    move-result v0

    return v0
.end method

.method public getFirstPageCandNum(I)I
    .locals 1
    .parameter "idWCL"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getFirstPageCandNum(I)I

    move-result v0

    return v0
.end method

.method public getPerPageCandNum(I)I
    .locals 1
    .parameter "nPage"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getPerPageCandNum(I)I

    move-result v0

    return v0
.end method

.method public getTotalVisibleCandPage()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalVisibleCandPage()I

    move-result v0

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 2
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 174
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 175
    iput-object p2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 177
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V

    .line 181
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setLineCount(I)V

    .line 184
    return-void
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->nextPage()V

    .line 162
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getSelectionIndex()I

    move-result v0

    .line 190
    .local v0, selectIndx:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getSelectionIndex()I

    move-result v2

    iget v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWCLID:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendWordToEditText(II)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->setWclSpread(Z)Z

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FullWCL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandsListEX;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    .line 89
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setVerticalFadingEdgeEnabled(Z)V

    .line 99
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/FullWCL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/SimpleWCL;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 100
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    const/high16 v1, -0x100

    const v2, -0xffff01

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setColorSet(III)V

    .line 101
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setEndDrawListenner(Ljava/util/Observer;)V

    .line 140
    return-void
.end method

.method public prePage()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->prePage()V

    .line 166
    return-void
.end method

.method public setCandidateViewHeight(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 378
    iput p1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvWidth:I

    .line 379
    iput p2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvHeight:I

    .line 380
    return-void
.end method

.method public setLastLineWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setLastLineMaskWidth(I)V

    .line 384
    return-void
.end method

.method public setPressAtBottomLine(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setPressAtBottomLine(Z)V

    .line 393
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "indx"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelection(I)V

    .line 143
    return-void
.end method

.method public setVisiableLineCount(I)V
    .locals 1
    .parameter "lines"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setLineCount(I)V

    .line 361
    return-void
.end method

.method public setWCLID(I)V
    .locals 1
    .parameter "idx"

    .prologue
    .line 387
    iput p1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWCLID:I

    .line 388
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setWCLID(I)V

    .line 389
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setWCLID(I)V

    .line 390
    return-void
.end method

.method public setWclSpread(Z)Z
    .locals 5
    .parameter "changeToFullWCL"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 272
    iget-object v4, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v4

    if-gt v4, v2, :cond_0

    if-eqz p1, :cond_0

    .line 273
    const/4 p1, 0x0

    .line 275
    :cond_0
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/FullWCL;->mbWclSpreaded:Z

    if-ne v4, p1, :cond_1

    .line 356
    :goto_0
    return p1

    .line 278
    :cond_1
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mbWclSpreaded:Z

    .line 280
    iget-object v4, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v4, v3, :cond_3

    move v1, v2

    .line 281
    .local v1, isLandscape:Z
    :goto_1
    iget v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvHeight:I

    .line 291
    .local v0, height:I
    if-eqz p1, :cond_5

    .line 297
    iget-object v4, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->isNoSIP:Z

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    const/4 v2, 0x5

    :goto_2
    invoke-virtual {v4, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setLineCount(I)V

    .line 305
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->isNoSIP:Z

    if-eqz v2, :cond_2

    .line 330
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->updateWCView(II)V

    .line 334
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/SimpleWCL;->preDraw()V

    .line 355
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/FullWCL;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 280
    .end local v0           #height:I
    .end local v1           #isLandscape:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0       #height:I
    .restart local v1       #isLandscape:Z
    :cond_4
    move v2, v3

    .line 297
    goto :goto_2

    .line 319
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setLineCount(I)V

    .line 320
    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method

.method public showWCL(I)V
    .locals 4
    .parameter "idx"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvWidth:I

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewWidth(I)V

    .line 236
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvHeight:I

    invoke-virtual {v0, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewHeight(I)V

    .line 239
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v0

    iget v0, v0, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipHeight:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMMView;->getHeight()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->isNoSIP:Z

    .line 243
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v0, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v0}, Lcom/htc/android/htcime/Intf/IHTCIM;->expandFullWCL()I

    .line 246
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mWCLId:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mDropDownBottomWCL:Z

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    const-string v1, "-"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->m2LinesWCLIdx:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    .line 251
    :goto_2
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/FullWCL;->setWclSpread(Z)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 240
    goto :goto_1

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    const-string v1, "-"

    iget-object v3, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    aget v3, v3, p1

    invoke-virtual {v0, v1, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    goto :goto_2

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLText:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    const-string v2, ""

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/FullWCL;->setWclSpread(Z)Z

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 370
    .local v0, scrollable:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/FullWCL;->mWordCandsList:Lcom/htc/android/htcime/ui/WordCandsListEX;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setVerticalScrollBarEnabled(Z)V

    .line 374
    return-void

    .line 368
    .end local v0           #scrollable:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
