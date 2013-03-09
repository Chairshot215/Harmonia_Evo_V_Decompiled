.class Lcom/android/phone/HtcMCCallCard$CallGroup;
.super Ljava/lang/Object;
.source "HtcMCCallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcMCCallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallGroup"
.end annotation


# instance fields
.field mBottomRoundVisible:Z

.field private mCall:Lcom/android/internal/telephony/Call;

.field private mConnection:Lcom/android/internal/telephony/Connection;

.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/HtcMCCallCardItem;",
            ">;"
        }
    .end annotation
.end field

.field mListLayout:Landroid/view/ViewGroup;

.field mTitleElapsed:Landroid/widget/TextView;

.field mTitleIcon:Landroid/widget/ImageView;

.field mTitleLayout:Landroid/view/ViewGroup;

.field mTitleStatus:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/HtcMCCallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter
    .parameter "call"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mBottomRoundVisible:Z

    .line 367
    iput-object p2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    .line 369
    return-void
.end method

.method constructor <init>(Lcom/android/phone/HtcMCCallCard;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mBottomRoundVisible:Z

    .line 374
    iput-object p2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    .line 375
    iput-object p3, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setBottomRoundVisibleOnSingleConnections(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HtcMCCallCard$CallGroup;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcMCCallCard$CallGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/phone/HtcMCCallCard$CallGroup;->updateScreen(Z)V

    return-void
.end method

.method private setBottomRoundVisibleOnSingleConnections(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mBottomRoundVisible:Z

    .line 413
    return-void
.end method

.method private updateScreen(Z)V
    .locals 7
    .parameter "isMultiple"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 421
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    if-nez v2, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard$CallGroup;->reset()V

    .line 480
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-virtual {p0, v4}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setVisibility(I)V

    .line 444
    :goto_1
    if-eqz p1, :cond_6

    .line 446
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 447
    iget-object v5, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemTopRoundVisible(Landroid/view/View;Z)V
    invoke-static {v5, v2, v4}, Lcom/android/phone/HtcMCCallCard;->access$300(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 448
    const v1, 0x7f0200d1

    .line 456
    .local v1, statusIconRes:I
    const/4 v0, 0x0

    .line 457
    .local v0, connIsActive:Z
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_3

    .line 458
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    if-ne v2, v5, :cond_2

    move v0, v3

    .line 463
    :goto_2
    if-eqz v0, :cond_5

    .line 465
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleStatus:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v1, 0x7f0200d1

    .line 467
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleElapsed:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    :goto_3
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    .end local v0           #connIsActive:Z
    .end local v1           #statusIconRes:I
    :goto_4
    if-nez p1, :cond_7

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/phone/HtcMCCallCard$CallGroup;->updateCallList(Z)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard$CallGroup;->reset()V

    goto :goto_1

    .restart local v0       #connIsActive:Z
    .restart local v1       #statusIconRes:I
    :cond_2
    move v0, v4

    .line 458
    goto :goto_2

    .line 461
    :cond_3
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v5, :cond_4

    move v0, v3

    :goto_6
    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_6

    .line 469
    :cond_5
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleStatus:Landroid/widget/TextView;

    const v5, 0x7f0e03a2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 470
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleElapsed:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const v1, 0x7f0200d2

    goto :goto_3

    .line 475
    .end local v0           #connIsActive:Z
    .end local v1           #statusIconRes:I
    :cond_6
    iget-object v5, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemTopRoundVisible(Landroid/view/View;Z)V
    invoke-static {v5, v2, v3}, Lcom/android/phone/HtcMCCallCard;->access$300(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 476
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    :cond_7
    move v3, v4

    .line 479
    goto :goto_5
.end method


# virtual methods
.method destroy()V
    .locals 3

    .prologue
    .line 645
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/HtcMCCallCardItem;

    .line 646
    .local v1, item:Lcom/android/phone/HtcMCCallCardItem;
    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {v1}, Lcom/android/phone/HtcMCCallCardItem;->destroy()V

    goto :goto_0

    .line 650
    .end local v1           #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_1
    return-void
.end method

.method public findLayoutById(II)V
    .locals 2
    .parameter "title"
    .parameter "list"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v1, p1}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, group:Landroid/view/View;
    move-object v1, v0

    .line 383
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    .line 384
    const v1, 0x2020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleStatus:Landroid/widget/TextView;

    .line 385
    const v1, 0x2020013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleElapsed:Landroid/widget/TextView;

    .line 386
    const v1, 0x202001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleIcon:Landroid/widget/ImageView;

    .line 387
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v1, p2}, Lcom/android/phone/HtcMCCallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    .line 389
    return-void
.end method

.method getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method getElapsedView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method initListLayout(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 397
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 398
    const v3, 0x7f030034

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/HtcMCCallCardItem;

    .line 400
    .local v2, view:Lcom/android/phone/HtcMCCallCardItem;
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    invoke-virtual {v2, v3}, Lcom/android/phone/HtcMCCallCardItem;->setParent(Lcom/android/phone/HtcMCCallCard;)V

    .line 401
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 402
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 405
    .end local v2           #view:Lcom/android/phone/HtcMCCallCardItem;
    :cond_2
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemTopRoundVisible(Landroid/view/View;Z)V
    invoke-static {v3, v4, v6}, Lcom/android/phone/HtcMCCallCard;->access$300(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    goto :goto_0
.end method

.method isDisplayTitle()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStateEquals(Lcom/android/internal/telephony/Call$State;)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 612
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_3

    .line 615
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_2

    .line 616
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 617
    .local v0, connState:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->htcGetActiveConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    if-ne v1, v4, :cond_0

    .line 619
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    .line 621
    :cond_0
    if-ne v0, p1, :cond_1

    move v1, v2

    .line 629
    .end local v0           #connState:Lcom/android/internal/telephony/Call$State;
    :goto_0
    return v1

    .restart local v0       #connState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    move v1, v3

    .line 621
    goto :goto_0

    .line 624
    .end local v0           #connState:Lcom/android/internal/telephony/Call$State;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-ne v1, p1, :cond_3

    move v1, v2

    .line 625
    goto :goto_0

    :cond_3
    move v1, v3

    .line 629
    goto :goto_0
.end method

.method reset()V
    .locals 3

    .prologue
    .line 575
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 580
    iget-object v2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/HtcMCCallCardItem;

    .line 581
    .local v1, item:Lcom/android/phone/HtcMCCallCardItem;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/HtcMCCallCardItem;->setUsed(Z)V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 583
    .end local v1           #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/phone/HtcMCCallCard$CallGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method setCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 551
    return-void
.end method

.method setCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "call"
    .parameter "conn"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    .line 557
    iput-object p2, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 558
    return-void
.end method

.method setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mTitleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 601
    :cond_1
    return-void
.end method

.method updateCallList(Z)V
    .locals 12
    .parameter "canSeparate"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 489
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    #calls: Lcom/android/phone/HtcMCCallCard;->onlyCdmaCalls()Z
    invoke-static {v6}, Lcom/android/phone/HtcMCCallCard;->access$400(Lcom/android/phone/HtcMCCallCard;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v6, :cond_0

    .line 491
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/HtcMCCallCardItem;

    .line 492
    .local v4, item:Lcom/android/phone/HtcMCCallCardItem;
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4, v6, v8, v8}, Lcom/android/phone/HtcMCCallCardItem;->updateByConnection(Lcom/android/internal/telephony/Connection;ZZ)V

    .line 493
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemBottomRoundVisible(Landroid/view/View;Z)V
    invoke-static {v6, v4, v7}, Lcom/android/phone/HtcMCCallCard;->access$500(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 494
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemDividerVisible(Landroid/view/View;Z)V
    invoke-static {v6, v4, v8}, Lcom/android/phone/HtcMCCallCard;->access$600(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 495
    const/4 v2, 0x1

    .local v2, index:I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 496
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    check-cast v4, Lcom/android/phone/HtcMCCallCardItem;

    .line 497
    .restart local v4       #item:Lcom/android/phone/HtcMCCallCardItem;
    invoke-virtual {v4, v11, v8, v8}, Lcom/android/phone/HtcMCCallCardItem;->updateByConnection(Lcom/android/internal/telephony/Connection;ZZ)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    .end local v2           #index:I
    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_0
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v6, :cond_8

    .line 503
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 505
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    #calls: Lcom/android/phone/HtcMCCallCard;->getAliveCount(Ljava/util/List;)I
    invoke-static {v1}, Lcom/android/phone/HtcMCCallCard;->access$700(Ljava/util/List;)I

    move-result v0

    .line 507
    .local v0, aliveCount:I
    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard$CallGroup;->reset()V

    .line 543
    .end local v0           #aliveCount:I
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_1
    :goto_1
    return-void

    .line 512
    .restart local v0       #aliveCount:I
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 517
    if-le v0, v7, :cond_4

    move v3, v7

    .line 518
    .local v3, isConference:Z
    :goto_2
    const/4 v4, 0x0

    .line 519
    .restart local v4       #item:Lcom/android/phone/HtcMCCallCardItem;
    const/4 v2, 0x0

    .line 520
    .restart local v2       #index:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    .line 521
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    check-cast v4, Lcom/android/phone/HtcMCCallCardItem;

    .line 522
    .restart local v4       #item:Lcom/android/phone/HtcMCCallCardItem;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4, v6, v3, p1}, Lcom/android/phone/HtcMCCallCardItem;->updateByConnection(Lcom/android/internal/telephony/Connection;ZZ)V

    .line 524
    iget-boolean v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mBottomRoundVisible:Z

    if-ne v7, v6, :cond_3

    .line 525
    add-int/lit8 v6, v0, -0x1

    if-ne v2, v6, :cond_5

    move v5, v7

    .line 526
    .local v5, visible:Z
    :goto_4
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v6

    if-nez v6, :cond_3

    .line 527
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemBottomRoundVisible(Landroid/view/View;Z)V
    invoke-static {v6, v4, v5}, Lcom/android/phone/HtcMCCallCard;->access$500(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 528
    iget-object v9, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->this$0:Lcom/android/phone/HtcMCCallCard;

    if-nez v5, :cond_6

    move v6, v7

    :goto_5
    #calls: Lcom/android/phone/HtcMCCallCard;->setListItemDividerVisible(Landroid/view/View;Z)V
    invoke-static {v9, v4, v6}, Lcom/android/phone/HtcMCCallCard;->access$600(Lcom/android/phone/HtcMCCallCard;Landroid/view/View;Z)V

    .line 520
    .end local v5           #visible:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #index:I
    .end local v3           #isConference:Z
    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_4
    move v3, v8

    .line 517
    goto :goto_2

    .restart local v2       #index:I
    .restart local v3       #isConference:Z
    .restart local v4       #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_5
    move v5, v8

    .line 525
    goto :goto_4

    .restart local v5       #visible:Z
    :cond_6
    move v6, v8

    .line 528
    goto :goto_5

    .line 533
    .end local v5           #visible:Z
    :cond_7
    :goto_6
    if-ge v2, v10, :cond_1

    .line 534
    iget-object v6, p0, Lcom/android/phone/HtcMCCallCard$CallGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    check-cast v4, Lcom/android/phone/HtcMCCallCardItem;

    .line 535
    .restart local v4       #item:Lcom/android/phone/HtcMCCallCardItem;
    invoke-virtual {v4, v11, v8, v8}, Lcom/android/phone/HtcMCCallCardItem;->updateByConnection(Lcom/android/internal/telephony/Connection;ZZ)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 541
    .end local v0           #aliveCount:I
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #index:I
    .end local v3           #isConference:Z
    .end local v4           #item:Lcom/android/phone/HtcMCCallCardItem;
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/HtcMCCallCard$CallGroup;->reset()V

    goto :goto_1
.end method
