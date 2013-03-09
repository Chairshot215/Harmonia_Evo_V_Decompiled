.class Lcom/android/phone/NetworkUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "NetworkUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mEight:Landroid/view/View;

.field private mFive:Landroid/view/View;

.field private mFour:Landroid/view/View;

.field private mNine:Landroid/view/View;

.field private mOne:Landroid/view/View;

.field private mSeven:Landroid/view/View;

.field private mSix:Landroid/view/View;

.field private mThree:Landroid/view/View;

.field private mTwo:Landroid/view/View;

.field private mZero:Landroid/view/View;

.field final synthetic this$0:Lcom/android/phone/NetworkUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 570
    const v0, 0x2020189

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    .line 571
    const v0, 0x2020180

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    .line 572
    const v0, 0x2020181

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    .line 573
    const v0, 0x2020182

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    .line 574
    const v0, 0x2020183

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    .line 575
    const v0, 0x2020184

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    .line 576
    const v0, 0x2020185

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    .line 577
    const v0, 0x2020186

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    .line 578
    const v0, 0x2020187

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    .line 579
    const v0, 0x2020188

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    .line 580
    const v0, 0x202016e

    invoke-virtual {p1, v0}, Lcom/android/phone/NetworkUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    .line 582
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkUnlockScreen;Lcom/android/phone/NetworkUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen$TouchInput;-><init>(Lcom/android/phone/NetworkUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 611
    const/4 v0, -0x1

    .line 612
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 613
    const/4 v0, 0x0

    .line 633
    :cond_0
    :goto_0
    return v0

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 615
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 617
    const/4 v0, 0x2

    goto :goto_0

    .line 618
    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 619
    const/4 v0, 0x3

    goto :goto_0

    .line 620
    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 621
    const/4 v0, 0x4

    goto :goto_0

    .line 622
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    if-ne p1, v1, :cond_6

    .line 623
    const/4 v0, 0x5

    goto :goto_0

    .line 624
    :cond_6
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    if-ne p1, v1, :cond_7

    .line 625
    const/4 v0, 0x6

    goto :goto_0

    .line 626
    :cond_7
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    if-ne p1, v1, :cond_8

    .line 627
    const/4 v0, 0x7

    goto :goto_0

    .line 628
    :cond_8
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    if-ne p1, v1, :cond_9

    .line 629
    const/16 v0, 0x8

    goto :goto_0

    .line 630
    :cond_9
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 631
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 604
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #getter for: Lcom/android/phone/NetworkUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/phone/NetworkUnlockScreen;->access$400(Lcom/android/phone/NetworkUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 606
    iget-object v1, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->this$0:Lcom/android/phone/NetworkUnlockScreen;

    #calls: Lcom/android/phone/NetworkUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/phone/NetworkUnlockScreen;->access$1300(Lcom/android/phone/NetworkUnlockScreen;I)V

    goto :goto_0
.end method

.method public toggoleButtonsEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 637
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mZero:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 638
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mOne:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 639
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mTwo:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 640
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mThree:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 641
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFour:Landroid/view/View;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mFive:Landroid/view/View;

    if-eqz p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 643
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSix:Landroid/view/View;

    if-eqz p1, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 644
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mSeven:Landroid/view/View;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 645
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mEight:Landroid/view/View;

    if-eqz p1, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 646
    iget-object v3, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mNine:Landroid/view/View;

    if-eqz p1, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/NetworkUnlockScreen$TouchInput;->mCancelButton:Landroid/view/View;

    if-eqz p1, :cond_a

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    return-void

    :cond_0
    move v0, v2

    .line 637
    goto :goto_0

    :cond_1
    move v0, v2

    .line 638
    goto :goto_1

    :cond_2
    move v0, v2

    .line 639
    goto :goto_2

    :cond_3
    move v0, v2

    .line 640
    goto :goto_3

    :cond_4
    move v0, v2

    .line 641
    goto :goto_4

    :cond_5
    move v0, v2

    .line 642
    goto :goto_5

    :cond_6
    move v0, v2

    .line 643
    goto :goto_6

    :cond_7
    move v0, v2

    .line 644
    goto :goto_7

    :cond_8
    move v0, v2

    .line 645
    goto :goto_8

    :cond_9
    move v0, v2

    .line 646
    goto :goto_9

    :cond_a
    move v1, v2

    .line 647
    goto :goto_a
.end method
