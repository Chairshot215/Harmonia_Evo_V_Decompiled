.class public Lcom/htc/launcher/widget/ButtonBar;
.super Landroid/widget/RelativeLayout;
.source "ButtonBar.java"


# instance fields
.field private mButtons:Lcom/htc/launcher/widget/ButtonBar;

.field private mClickOnButton:Landroid/view/View$OnClickListener;

.field private mControl:Landroid/view/View;

.field private mFocusDelegate:Landroid/view/View;

.field private mLauncher:Lcom/htc/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 292
    new-instance v0, Lcom/htc/launcher/widget/ButtonBar$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/ButtonBar$1;-><init>(Lcom/htc/launcher/widget/ButtonBar;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mClickOnButton:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/widget/ButtonBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 292
    new-instance v0, Lcom/htc/launcher/widget/ButtonBar$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/widget/ButtonBar$1;-><init>(Lcom/htc/launcher/widget/ButtonBar;)V

    iput-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mClickOnButton:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/widget/ButtonBar;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method


# virtual methods
.method public ButtonBarViews_UpdateOrientation()V
    .locals 15

    .prologue
    .line 341
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v12}, Lcom/htc/launcher/Launcher;->isPortrait()Z

    move-result v12

    if-nez v12, :cond_0

    .line 342
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mControl:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 343
    .local v11, controlParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a005c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    const-string v12, "jojojojo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "controlParams.width: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v12, -0x1

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 346
    const/16 v12, 0x15

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v12}, Lcom/htc/launcher/widget/ButtonBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 349
    .local v10, buttonsParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a005f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 350
    const/4 v12, -0x1

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    const/16 v12, 0xf

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 353
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 354
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 356
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f07000e

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 357
    .local v8, buttonMiddle:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 358
    .local v2, MidParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 361
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 363
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070010

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 364
    .local v7, buttonLeft:Landroid/widget/ImageButton;
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    .local v0, LftParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x7

    const v13, 0x7f07000e

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 367
    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 368
    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 370
    const/4 v12, 0x0

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 372
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070011

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 373
    .local v9, buttonRight:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 374
    .local v3, RightParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v12, 0x7

    const v13, 0x7f07000e

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 375
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 376
    const/16 v12, 0xa

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 377
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 378
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 379
    const/4 v12, 0x0

    iput v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 381
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070012

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 382
    .local v5, ViewLeft:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 383
    .local v1, LftViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 384
    const/4 v12, 0x7

    const v13, 0x7f07000e

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 385
    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 386
    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 387
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 388
    const/4 v12, 0x0

    iput v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 390
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070013

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 391
    .local v6, ViewRight:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 392
    .local v4, RightViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 393
    const/4 v12, 0x7

    const v13, 0x7f07000e

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 394
    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 395
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 396
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 397
    const/4 v12, 0x0

    iput v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 458
    :goto_0
    return-void

    .line 400
    .end local v0           #LftParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #LftViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #MidParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #RightParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #RightViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #ViewLeft:Landroid/view/View;
    .end local v6           #ViewRight:Landroid/view/View;
    .end local v7           #buttonLeft:Landroid/widget/ImageButton;
    .end local v8           #buttonMiddle:Landroid/view/View;
    .end local v9           #buttonRight:Landroid/view/View;
    .end local v10           #buttonsParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #controlParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mControl:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 401
    .restart local v11       #controlParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a005c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 402
    const/4 v12, -0x1

    iput v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 403
    const-string v12, "jojojojo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "controlParams.height: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v12, 0x51

    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 406
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v12}, Lcom/htc/launcher/widget/ButtonBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .restart local v10       #buttonsParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a005f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 408
    const/4 v12, -0x1

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    const/16 v12, 0xe

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 411
    const/16 v12, 0xf

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 412
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 414
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f07000e

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 415
    .restart local v8       #buttonMiddle:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 416
    .restart local v2       #MidParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0xf

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 418
    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 419
    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 421
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070010

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 422
    .restart local v7       #buttonLeft:Landroid/widget/ImageButton;
    invoke-virtual {v7}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    .restart local v0       #LftParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const v13, 0x7f07000e

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 424
    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 425
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 426
    const/16 v12, 0x9

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 427
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 428
    const/4 v12, 0x0

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 430
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070011

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 431
    .restart local v9       #buttonRight:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    .restart local v3       #RightParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const v13, 0x7f07000e

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 433
    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 435
    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 436
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 437
    const/4 v12, 0x0

    iput v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 439
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070012

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 440
    .restart local v5       #ViewLeft:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 441
    .restart local v1       #LftViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const v13, 0x7f07000e

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 442
    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 443
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    const/16 v12, 0x9

    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 445
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 446
    const/4 v12, 0x0

    iput v12, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 448
    iget-object v12, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v13, 0x7f070013

    invoke-virtual {v12, v13}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 449
    .restart local v6       #ViewRight:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 450
    .restart local v4       #RightViewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v12, 0x8

    const v13, 0x7f07000e

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 451
    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 453
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 454
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0060

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 455
    const/4 v12, 0x0

    iput v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getChildCount()I

    move-result v0

    .line 118
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 119
    invoke-virtual {p0, v2}, Lcom/htc/launcher/widget/ButtonBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, childView:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setPressed(Z)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1           #childView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mFocusDelegate:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mFocusDelegate:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 96
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->setAnimationCacheEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v3, "bb_btn_left"

    const v4, 0x7f020003

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    check-cast v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v3, "bb_btn_right"

    const v4, 0x7f020008

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v3, "bb_btn_middle"

    const v4, 0x7f020006

    invoke-static {v2, v3, v4}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-static {}, Lcom/htc/launcher/settings/SettingUtil;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v2, "navbar"

    const v3, 0x2080061

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v2, "navbar"

    const v3, 0x2080172

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonBar(Lcom/htc/launcher/widget/ButtonBar;)V
    .locals 0
    .parameter "buttons"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    .line 255
    return-void
.end method

.method public setControl(Landroid/view/View;)V
    .locals 0
    .parameter "control"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/htc/launcher/widget/ButtonBar;->mControl:Landroid/view/View;

    .line 251
    return-void
.end method

.method public setFocusDelegate(Landroid/view/View;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/launcher/widget/ButtonBar;->mFocusDelegate:Landroid/view/View;

    .line 86
    return-void
.end method

.method public setLauncher(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/htc/launcher/widget/ButtonBar;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 247
    return-void
.end method

.method public setMoveAction(Z)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 90
    return-void
.end method

.method public setOnLongClick(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "longClickListener"

    .prologue
    .line 130
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 127
    return-void
.end method

.method public setup2DButtonBarViews()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 258
    iget-object v0, p0, Lcom/htc/launcher/widget/ButtonBar;->mClickOnButton:Landroid/view/View$OnClickListener;

    .line 259
    .local v0, bl:Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0064

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 260
    .local v9, touchWidth:I
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 262
    .local v6, touchHeight:I
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v11, 0x7f070010

    invoke-virtual {v10, v11}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 263
    .local v1, buttonLeft:Landroid/widget/ImageButton;
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    invoke-virtual {v1, v12}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 265
    new-instance v4, Landroid/view/TouchDelegate;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v10, v1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 267
    .local v4, delegateLeft:Landroid/view/TouchDelegate;
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v11, 0x7f070012

    invoke-virtual {v10, v11}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 268
    .local v7, touchLeft:Landroid/view/View;
    invoke-virtual {v7, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 272
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v11, 0x7f07000e

    invoke-virtual {v10, v11}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 273
    .local v2, buttonMiddle:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v11, 0x7f070011

    invoke-virtual {v10, v11}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 277
    .local v3, buttonRight:Landroid/view/View;
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-virtual {v3, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 281
    new-instance v5, Landroid/view/TouchDelegate;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v9, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v5, v10, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 283
    .local v5, delegateRight:Landroid/view/TouchDelegate;
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    const v11, 0x7f070013

    invoke-virtual {v10, v11}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 284
    .local v8, touchRight:Landroid/view/View;
    invoke-virtual {v8, v5}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 286
    iget-object v10, p0, Lcom/htc/launcher/widget/ButtonBar;->mButtons:Lcom/htc/launcher/widget/ButtonBar;

    invoke-virtual {v10}, Lcom/htc/launcher/widget/ButtonBar;->clearFocus()V

    .line 287
    return-void
.end method

.method public update2DButtonBarViews()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public updateOrientation(I)V
    .locals 14
    .parameter "CurrentOrientation"

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/htc/launcher/widget/ButtonBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 136
    .local v3, res:Landroid/content/res/Resources;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "navbar"

    const v8, 0x2080172

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v5, tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    invoke-virtual {p0, v5}, Lcom/htc/launcher/widget/ButtonBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 148
    .local v1, middle_background:Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 150
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 151
    const v6, 0x7f0a00f4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v9, v9, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_middle"

    const v8, 0x7f020006

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    const v6, 0x7f070010

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 157
    .local v0, left_btn:Landroid/widget/ImageButton;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    const v6, 0x7f0a00f5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0a0060

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_left"

    const v8, 0x7f020003

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_left_src_on"

    const v8, 0x7f020005

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    const v6, 0x7f070011

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 168
    .local v4, right_btn:Landroid/widget/ImageButton;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v6, 0x7

    const v7, 0x7f070010

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 170
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    const v6, 0x7f0a0060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v9, v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_right"

    const v8, 0x7f020008

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_right_personalize_src"

    const v8, 0x7f020009

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_right_personalize_src"

    const v8, 0x7f020009

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 179
    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 180
    .local v2, middle_label:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    const v6, 0x7f0a0063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0a0062

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v9, v6, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_middle_src"

    const v8, 0x7f020007

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 187
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .end local v0           #left_btn:Landroid/widget/ImageButton;
    .end local v1           #middle_background:Landroid/widget/RelativeLayout;
    .end local v2           #middle_label:Landroid/widget/TextView;
    .end local v4           #right_btn:Landroid/widget/ImageButton;
    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 193
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const v7, 0x7f0a005f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 194
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/htc/launcher/widget/ButtonBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "navbar"

    const v8, 0x2080172

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    const v6, 0x7f07000e

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 201
    .restart local v1       #middle_background:Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_middle"

    const v8, 0x7f020006

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    .restart local v2       #middle_label:Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 211
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    const v6, 0x7f0a0063

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0a0062

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v9, v9, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 215
    const v6, 0x7f0b0038

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_middle_src"

    const v8, 0x7f020007

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6, v11, v11, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    const v6, 0x7f070010

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 220
    .restart local v0       #left_btn:Landroid/widget/ImageButton;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x8

    const v7, 0x7f07000e

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 222
    const v6, 0x7f0a0060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 223
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_left"

    const v8, 0x7f020003

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_left_src_on"

    const v8, 0x7f020005

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    const v6, 0x7f070011

    invoke-virtual {p0, v6}, Lcom/htc/launcher/widget/ButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 231
    .restart local v4       #right_btn:Landroid/widget/ImageButton;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v5           #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    .restart local v5       #tmp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x8

    const v7, 0x7f07000e

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 233
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    const v6, 0x7f0a0060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v9, v9, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 235
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_right"

    const v8, 0x7f020008

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v6, p0, Lcom/htc/launcher/widget/ButtonBar;->mContext:Landroid/content/Context;

    const-string v7, "bb_btn_right_personalize_src"

    const v8, 0x7f020009

    invoke-static {v6, v7, v8}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method
