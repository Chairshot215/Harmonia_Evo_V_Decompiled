.class Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;
.super Landroid/widget/PopupWindow;
.source "EZHWKBView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZHWKBView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcCharacterPicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;
    }
.end annotation


# instance fields
.field private mAllButton:[Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mCount:I

.field private mCurPos:I

.field private mCurTouchView:Landroid/view/View;

.field private mFlag:I

.field private mGrid:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKbID:I

.field private mOptions:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/EZHWKBView;Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "options"
    .parameter "kbID"
    .parameter "flag"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 449
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    .line 450
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 444
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    .line 445
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I

    .line 446
    const/16 v1, 0x10

    new-array v1, v1, [Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    .line 452
    iput-object p4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mOptions:Ljava/lang/String;

    .line 453
    iput p5, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mKbID:I

    .line 454
    iput p6, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mFlag:I

    .line 455
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mInflater:Landroid/view/LayoutInflater;

    .line 456
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x20900c3

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, contentView:Landroid/view/View;
    const v1, 0x20201ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mGrid:Landroid/widget/GridView;

    .line 459
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mGrid:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;

    invoke-virtual {p1}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker$OptionsAdapter;-><init>(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    :cond_0
    const v1, 0x202016e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCancelButton:Landroid/widget/Button;

    .line 462
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 467
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->setWidth(I)V

    .line 469
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->setHeight(I)V

    .line 470
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->setContentView(Landroid/view/View;)V

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)[Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    iput p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    iput p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mFirstDownShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->setIMECapMode(IZ)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/EZHWKBView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->resetMetaState()V

    .line 544
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 545
    return-void
.end method

.method public handleKey(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 513
    sparse-switch p1, :sswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 515
    :sswitch_0
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    if-lez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    invoke-static {v2}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 517
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    .line 518
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    invoke-static {v3}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 522
    :sswitch_1
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    invoke-static {v2}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 524
    iget v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    .line 525
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    invoke-static {v3}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 530
    :sswitch_2
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 531
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 513
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->dismiss()V

    .line 482
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 477
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 478
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 479
    .local v0, result:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->this$0:Lcom/htc/android/htcime/ezsip/EZHWKBView;

    iget v2, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mKbID:I

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    iget v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mFlag:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/EZHWKBView;->sendKeyEvent(I)V

    .line 480
    invoke-virtual {p0}, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->dismiss()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 486
    instance-of v3, p1, Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 487
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 489
    .local v0, action:I
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurTouchView:Landroid/view/View;

    if-eq v3, p1, :cond_2

    .line 490
    const/4 v1, 0x0

    .line 491
    .local v1, curPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCount:I

    if-ge v2, v3, :cond_1

    .line 492
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_0

    .line 493
    move v1, v2

    .line 491
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    if-eq v3, v1, :cond_2

    .line 496
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mAllButton:[Landroid/widget/Button;

    iget v4, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 498
    iput v1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurPos:I

    .line 501
    .end local v1           #curPos:I
    .end local v2           #i:I
    :cond_2
    if-nez v0, :cond_3

    .line 502
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZHWKBView$HtcCharacterPicker;->mCurTouchView:Landroid/view/View;

    .line 504
    :cond_3
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    .line 505
    :cond_4
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 509
    .end local v0           #action:I
    :cond_5
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 506
    .restart local v0       #action:I
    :cond_6
    if-nez v0, :cond_5

    .line 507
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/htc/android/htcime/util/CommonResourceUtil;->getCommonControlResource(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
