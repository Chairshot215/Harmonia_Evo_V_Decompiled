.class public abstract Lcom/htc/android/fusion/calculator/Widget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INFINITY:Ljava/lang/String; = "Infinity"

.field private static final INFINITY_UNICODE:Ljava/lang/String; = "\u221e"

.field private static final MINUS:C = '\u2212'

.field private static final NAN:Ljava/lang/String; = "NaN"


# instance fields
.field protected mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

.field protected mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/fusion/fx/controls/FxButton;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeOrientationRunnable:Ljava/lang/Runnable;

.field private mDefaultPlaybackCompleteListenerLand:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultPlaybackCompleteListenerPort:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorString:Ljava/lang/String;

.field private mIsError:Z

.field private mIsResult:Z

.field private mLineLength:I

.field protected mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnBackButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOnBackButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClearButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClearButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEqualButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEqualButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected mOrientation:I

.field private mResult:Ljava/lang/String;

.field protected mSceneLand:Lcom/htc/fusion/fx/FxScene;

.field protected mScenePort:Lcom/htc/fusion/fx/FxScene;

.field private mSymbols:Lorg/javia/arity/Symbols;

.field protected mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextLabelLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextLabelPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTiltMarkerFrameEndLand:I

.field protected mTiltMarkerFrameEndPort:I

.field protected mTiltMarkerFrameStartLand:I

.field protected mTiltMarkerFrameStartPort:I

.field protected mTiltTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTiltTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

.field protected mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/android/fusion/calculator/Widget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    .line 37
    iput-boolean v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mSymbols:Lorg/javia/arity/Symbols;

    .line 68
    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartPort:I

    .line 69
    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartLand:I

    .line 70
    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndPort:I

    .line 71
    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndLand:I

    .line 434
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$1;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$1;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    .line 440
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$2;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$2;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    .line 446
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$3;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$3;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    .line 452
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$4;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$4;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    .line 458
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$5;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$5;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    .line 464
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$6;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$6;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    .line 470
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$7;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$7;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerPort:Lcom/htc/fusion/fx/MessageListener;

    .line 479
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$8;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$8;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerLand:Lcom/htc/fusion/fx/MessageListener;

    .line 731
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$9;

    invoke-direct {v0, p0}, Lcom/htc/android/fusion/calculator/Widget$9;-><init>(Lcom/htc/android/fusion/calculator/Widget;)V

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mChangeOrientationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private acceptInput(I)Z
    .locals 9
    .parameter "buttonId"

    .prologue
    const v8, 0x7f050018

    const v7, 0x7f050017

    const/4 v6, 0x0

    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, result:Z
    iget-object v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 573
    invoke-static {p1}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne p1, v7, :cond_1

    .line 574
    :cond_0
    const/4 v3, 0x1

    .line 612
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "acceptInput: "

    invoke-static {v5, v6, v3}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 613
    return v3

    .line 576
    :cond_2
    iget-boolean v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    if-eqz v5, :cond_8

    .line 577
    iget-boolean v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mErrorString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 578
    :cond_3
    iput-boolean v6, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    .line 579
    const-string v5, ""

    invoke-direct {p0, v5}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 580
    invoke-static {p1}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p1, v7, :cond_5

    .line 581
    :cond_4
    const/4 v3, 0x1

    .line 589
    :cond_5
    :goto_1
    iput-boolean v6, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    goto :goto_0

    .line 584
    :cond_6
    invoke-static {p1}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 585
    const-string v5, ""

    invoke-direct {p0, v5}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 587
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 592
    :cond_8
    invoke-static {p1}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 593
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 594
    .local v2, length:I
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, lastDigit:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 596
    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    .line 597
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 598
    const/4 v3, 0x1

    goto :goto_0

    .line 601
    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    .line 603
    .end local v0           #lastDigit:Ljava/lang/String;
    .end local v2           #length:I
    :cond_a
    if-ne p1, v8, :cond_b

    .line 604
    invoke-direct {p0, v4}, Lcom/htc/android/fusion/calculator/Widget;->getLastNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, lastNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 606
    const/4 v3, 0x1

    goto :goto_0

    .line 609
    .end local v1           #lastNumber:Ljava/lang/String;
    :cond_b
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->onEqualButtonClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->onBackButtonClick()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->onClearButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/fusion/calculator/Widget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/fusion/calculator/Widget;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/android/fusion/calculator/Widget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/android/fusion/calculator/Widget;->onButtonClick(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/android/fusion/calculator/Widget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->setReferences()V

    return-void
.end method

.method private checkValidity()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_4

    .line 491
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 492
    :cond_0
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 493
    :cond_1
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 494
    :cond_2
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_3
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_9

    .line 499
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 500
    :cond_5
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 501
    :cond_6
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 502
    :cond_7
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 503
    :cond_8
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 506
    :cond_9
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 507
    :cond_a
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_b
    sget-boolean v0, Lcom/htc/android/fusion/calculator/Widget;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 509
    :cond_c
    return-void
.end method

.method private evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "input: "

    invoke-static {v5, v6, p1}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 641
    const-string v5, ""

    .line 668
    :goto_0
    return-object v5

    .line 645
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 646
    .local v2, size:I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 647
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 648
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 659
    :cond_1
    iget-object v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mSymbols:Lorg/javia/arity/Symbols;

    invoke-virtual {v5, p1}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v3

    .line 661
    .local v3, value:D
    const-string v1, ""

    .line 662
    .local v1, result:Ljava/lang/String;
    iget v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mLineLength:I

    .local v0, precision:I
    :goto_2
    const/4 v5, 0x6

    if-le v0, v5, :cond_2

    .line 663
    invoke-direct {p0, v3, v4, v0}, Lcom/htc/android/fusion/calculator/Widget;->tryFormattingWithPrecision(DI)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/htc/android/fusion/calculator/Widget;->mLineLength:I

    if-gt v5, v6, :cond_3

    .line 668
    :cond_2
    const/16 v5, 0x2d

    const/16 v6, 0x2212

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Infinity"

    const-string v7, "\u221e"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 662
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V
    .locals 4
    .parameter "button"
    .parameter "buttonId"

    .prologue
    .line 424
    if-eqz p1, :cond_0

    .line 425
    new-instance v0, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;

    invoke-direct {v0, p0, p2}, Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;-><init>(Lcom/htc/android/fusion/calculator/Widget;I)V

    .line 426
    .local v0, listener:Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;,"Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 427
    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v0           #listener:Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener;,"Lcom/htc/android/fusion/calculator/Widget$CalculatorMessageListener<Ljava/lang/Void;>;"
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Button is null, "

    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/fusion/calculator/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getLastNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    .line 617
    const-string v2, ""

    .line 618
    .local v2, lastNumber:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 619
    .local v3, length:I
    const/4 v1, -0x1

    .line 620
    .local v1, index:I
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    move v1, v0

    .line 626
    :cond_0
    if-ltz v1, :cond_2

    .line 627
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "index: "

    invoke-static {v4, v5, v1}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 629
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lastNumber: "

    invoke-static {v4, v5, v2}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :goto_1
    return-object v2

    .line 620
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 631
    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method static isOperator(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 750
    const-string v0, "+\u2212\u00d7\u00f7/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(I)Z
    .locals 1
    .parameter "buttonId"

    .prologue
    .line 740
    const v0, 0x7f050016

    if-eq p0, v0, :cond_0

    const v0, 0x7f050017

    if-eq p0, v0, :cond_0

    const v0, 0x7f050015

    if-eq p0, v0, :cond_0

    const v0, 0x7f050014

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOperator(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/android/fusion/calculator/Widget;->isOperator(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onBackButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackButtonClick"

    invoke-static {v1, v2}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 549
    iget-boolean v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    if-eqz v1, :cond_3

    .line 550
    iget-boolean v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    :cond_0
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 554
    :goto_0
    iput-boolean v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    .line 555
    iput-boolean v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    .line 560
    :cond_1
    :goto_1
    return-void

    .line 553
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onButtonClick(I)V
    .locals 5
    .parameter "buttonId"

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/htc/android/fusion/calculator/Widget;->acceptInput(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, input:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, text:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-direct {p0, v1}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 526
    .end local v0           #input:Ljava/lang/String;
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onClearButtonClick()V
    .locals 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClearButtonClick"

    invoke-static {v0, v1}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/htc/android/fusion/calculator/Widget;->setInputFields(Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    .line 567
    return-void
.end method

.method private onEqualButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 529
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onEqualButtonClick"

    invoke-static {v2, v3}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getString()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    if-nez v2, :cond_0

    .line 533
    :try_start_0
    invoke-direct {p0, v1}, Lcom/htc/android/fusion/calculator/Widget;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    iput-boolean v6, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsResult:Z

    .line 539
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "go_up"

    const/4 v4, 0x0

    const v5, 0x3ecccccd

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;IFZ)V

    .line 543
    :cond_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Lorg/javia/arity/SyntaxException;
    iput-boolean v6, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    .line 536
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mErrorString:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private setInputFields(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 516
    :cond_1
    return-void
.end method

.method private setReferences()V
    .locals 2

    .prologue
    .line 412
    iget v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 414
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 415
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 421
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 418
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 419
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    goto :goto_0
.end method

.method private tryFormattingWithPrecision(DI)Ljava/lang/String;
    .locals 10
    .parameter "value"
    .parameter "precision"

    .prologue
    .line 675
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/android/fusion/calculator/Widget;->mLineLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "g"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, result:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NaN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 677
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mIsError:Z

    .line 678
    iget-object v5, p0, Lcom/htc/android/fusion/calculator/Widget;->mErrorString:Ljava/lang/String;

    .line 715
    :goto_0
    return-object v5

    .line 680
    :cond_0
    move-object v2, v4

    .line 681
    .local v2, mantissa:Ljava/lang/String;
    const/4 v1, 0x0

    .line 682
    .local v1, exponent:Ljava/lang/String;
    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 683
    .local v0, e:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    .line 684
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 687
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 688
    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 689
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    :goto_1
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 697
    .local v3, period:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 698
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 700
    :cond_2
    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    .line 702
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 703
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 693
    .end local v3           #period:I
    :cond_3
    move-object v2, v4

    goto :goto_1

    .line 705
    .restart local v3       #period:I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_5

    .line 706
    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 710
    :cond_5
    if-eqz v1, :cond_6

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 715
    goto/16 :goto_0

    .line 713
    :cond_6
    move-object v4, v2

    goto :goto_3
.end method


# virtual methods
.method protected abstract getLandscapeControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;
.end method

.method protected abstract getLandscapeScenePath()Ljava/lang/String;
.end method

.method protected abstract getPortraitControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;
.end method

.method protected abstract getPortraitScenePath()Ljava/lang/String;
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 3

    .prologue
    .line 206
    iget v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 211
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    return-object v0

    .line 209
    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    goto :goto_0
.end method

.method protected getScene(I)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "orientation"

    .prologue
    .line 217
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 222
    .local v0, scene:Lcom/htc/fusion/fx/FxScene;
    :goto_0
    return-object v0

    .line 220
    .end local v0           #scene:Lcom/htc/fusion/fx/FxScene;
    :cond_1
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .restart local v0       #scene:Lcom/htc/fusion/fx/FxScene;
    goto :goto_0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected initControls()V
    .locals 11

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "initControls begin"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f050004

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, clear:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    if-eqz v9, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getPortraitControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;

    move-result-object v8

    .line 230
    .local v8, wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    const/16 v9, 0x22

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimelineTilt:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimeline:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x2

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextInput:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x3

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextLabel:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x4

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton0:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x5

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton1:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x6

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton2:Ljava/lang/String;

    aput-object v10, v6, v9

    const/4 v9, 0x7

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton3:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x8

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton4:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x9

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton5:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xa

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton6:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xb

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton7:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xc

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton8:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xd

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton9:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xe

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDot:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0xf

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPlus:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x10

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMinus:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x11

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMul:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x12

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDiv:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x13

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonSin:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x14

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonCos:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x15

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonTan:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x16

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLn:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x17

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLog:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x18

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonFac:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x19

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPi:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1a

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonE:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1b

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonSqrt:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1c

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPower:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1d

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLeftParen:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1e

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonRightParen:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x1f

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonEqual:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x20

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonBack:Ljava/lang/String;

    aput-object v10, v6, v9

    const/16 v9, 0x21

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonClear:Ljava/lang/String;

    aput-object v10, v6, v9

    .line 240
    .local v6, portControlNames:[Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9, v6}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    .line 243
    .local v7, portControls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 244
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v9, :cond_3

    .line 245
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v10, "tilt"

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 246
    .local v5, marker:Lcom/htc/fusion/fx/Marker;
    iget v9, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartPort:I

    .line 247
    iget v9, v5, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndPort:I

    .line 248
    iget v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndPort:I

    if-nez v9, :cond_0

    .line 249
    const/16 v9, 0x1d

    iput v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndPort:I

    .line 255
    .end local v5           #marker:Lcom/htc/fusion/fx/Marker;
    :cond_0
    :goto_0
    const/4 v9, 0x1

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 256
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v9, :cond_4

    .line 257
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 258
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 262
    :goto_1
    const/4 v9, 0x2

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 263
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v9, :cond_5

    .line 264
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 267
    :goto_2
    const/4 v9, 0x3

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 268
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v9, :cond_6

    .line 269
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelPort:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 274
    :goto_3
    const/4 v9, 0x4

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000a

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 275
    const/4 v9, 0x5

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000b

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 276
    const/4 v9, 0x6

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000c

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 277
    const/4 v9, 0x7

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000d

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 278
    const/16 v9, 0x8

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000e

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 279
    const/16 v9, 0x9

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000f

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 280
    const/16 v9, 0xa

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050010

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 281
    const/16 v9, 0xb

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050011

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 282
    const/16 v9, 0xc

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050012

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 283
    const/16 v9, 0xd

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050013

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 284
    const/16 v9, 0xe

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050018

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 285
    const/16 v9, 0xf

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050016

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 286
    const/16 v9, 0x10

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050017

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 287
    const/16 v9, 0x11

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050015

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 288
    const/16 v9, 0x12

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050014

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 289
    const/16 v9, 0x13

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05001b

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 290
    const/16 v9, 0x14

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05001c

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 291
    const/16 v9, 0x15

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05001d

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 292
    const/16 v9, 0x16

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050020

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 293
    const/16 v9, 0x17

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050021

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 294
    const/16 v9, 0x18

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050026

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 295
    const/16 v9, 0x19

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05001e

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 296
    const/16 v9, 0x1a

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05001f

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 297
    const/16 v9, 0x1b

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050024

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 298
    const/16 v9, 0x1c

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050025

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 299
    const/16 v9, 0x1d

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050022

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 300
    const/16 v9, 0x1e

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050023

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 302
    const/16 v9, 0x1f

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    .line 303
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_7

    .line 304
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 307
    :goto_4
    const/16 v9, 0x20

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    .line 308
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_8

    .line 309
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 312
    :goto_5
    const/16 v9, 0x21

    aget-object v9, v7, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    .line 313
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_b

    .line 314
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 315
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextClear:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxButton;->getChild(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 316
    .local v1, label_clear:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v1, :cond_9

    .line 317
    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 320
    :goto_6
    iget-object v9, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextClearPress:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 321
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextClearPress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxButton;->getChild(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 322
    .local v2, label_clear_press:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v2, :cond_a

    .line 323
    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 331
    .end local v1           #label_clear:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #label_clear_press:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v6           #portControlNames:[Ljava/lang/String;
    .end local v7           #portControls:[Lcom/htc/fusion/fx/FxObject;
    .end local v8           #wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    :cond_1
    :goto_7
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-eqz v9, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getLandscapeControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;

    move-result-object v8

    .line 333
    .restart local v8       #wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    const/16 v9, 0x18

    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimelineTilt:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x1

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimeline:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x2

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextInput:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x3

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextLabel:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x4

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton0:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x5

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton1:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x6

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton2:Ljava/lang/String;

    aput-object v10, v3, v9

    const/4 v9, 0x7

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton3:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x8

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton4:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x9

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton5:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xa

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton6:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xb

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton7:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xc

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton8:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xd

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton9:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xe

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDot:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0xf

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPlus:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x10

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMinus:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x11

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMul:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x12

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDiv:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x13

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLeftParen:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x14

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonRightParen:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x15

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonEqual:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x16

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonBack:Ljava/lang/String;

    aput-object v10, v3, v9

    const/16 v9, 0x17

    iget-object v10, v8, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonClear:Ljava/lang/String;

    aput-object v10, v3, v9

    .line 341
    .local v3, landControlNames:[Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9, v3}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    .line 344
    .local v4, landControls:[Lcom/htc/fusion/fx/FxObject;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 345
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v9, :cond_c

    .line 346
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v10, "tilt"

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v5

    .line 347
    .restart local v5       #marker:Lcom/htc/fusion/fx/Marker;
    iget v9, v5, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartLand:I

    .line 348
    iget v9, v5, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    iput v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndLand:I

    .line 353
    .end local v5           #marker:Lcom/htc/fusion/fx/Marker;
    :goto_8
    const/4 v9, 0x1

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 354
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v9, :cond_d

    .line 355
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 356
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 360
    :goto_9
    const/4 v9, 0x2

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 361
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v9, :cond_e

    .line 362
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInputLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 365
    :goto_a
    const/4 v9, 0x3

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 366
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v9, :cond_f

    .line 367
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabelLand:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 372
    :goto_b
    const/4 v9, 0x4

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000a

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 373
    const/4 v9, 0x5

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000b

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 374
    const/4 v9, 0x6

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000c

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 375
    const/4 v9, 0x7

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000d

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 376
    const/16 v9, 0x8

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000e

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 377
    const/16 v9, 0x9

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f05000f

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 378
    const/16 v9, 0xa

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050010

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 379
    const/16 v9, 0xb

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050011

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 380
    const/16 v9, 0xc

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050012

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 381
    const/16 v9, 0xd

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050013

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 382
    const/16 v9, 0xe

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050018

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 383
    const/16 v9, 0xf

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050016

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 384
    const/16 v9, 0x10

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050017

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 385
    const/16 v9, 0x11

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050015

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 386
    const/16 v9, 0x12

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050014

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 387
    const/16 v9, 0x13

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050022

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 388
    const/16 v9, 0x14

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    const v10, 0x7f050023

    invoke-direct {p0, v9, v10}, Lcom/htc/android/fusion/calculator/Widget;->findAndSetButton(Lcom/htc/fusion/fx/controls/FxButton;I)V

    .line 390
    const/16 v9, 0x15

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    .line 391
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_10

    .line 392
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 395
    :goto_c
    const/16 v9, 0x16

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    .line 396
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_11

    .line 397
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 400
    :goto_d
    const/16 v9, 0x17

    aget-object v9, v4, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxButton;

    iput-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    .line 401
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v9, :cond_12

    .line 402
    iget-object v9, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 407
    .end local v3           #landControlNames:[Ljava/lang/String;
    .end local v4           #landControls:[Lcom/htc/fusion/fx/FxObject;
    .end local v8           #wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    :cond_2
    :goto_e
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->setReferences()V

    .line 408
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "initControls end"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void

    .line 252
    .restart local v6       #portControlNames:[Ljava/lang/String;
    .restart local v7       #portControls:[Lcom/htc/fusion/fx/FxObject;
    .restart local v8       #wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTiltTimelineControlPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTimelineControlPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTextInputPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 271
    :cond_6
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTextLabelPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonEqualPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonBackPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 319
    .restart local v1       #label_clear:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_9
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "label_clear = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 325
    .restart local v2       #label_clear_press:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_a
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "label_clear_press = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 328
    .end local v1           #label_clear:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v2           #label_clear_press:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_b
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonClearPort = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 350
    .end local v6           #portControlNames:[Ljava/lang/String;
    .end local v7           #portControls:[Lcom/htc/fusion/fx/FxObject;
    .restart local v3       #landControlNames:[Ljava/lang/String;
    .restart local v4       #landControls:[Lcom/htc/fusion/fx/FxObject;
    :cond_c
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTiltTimelineControlLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 358
    :cond_d
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTimelineControlLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 364
    :cond_e
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTextInputLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 369
    :cond_f
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mTextLabelLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 394
    :cond_10
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonEqualLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 399
    :cond_11
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonBackLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 404
    :cond_12
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mButtonClearLand = null"

    invoke-static {v9, v10}, Lcom/htc/android/fusion/calculator/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 176
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mOrientation:I

    .line 177
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mChangeOrientationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->cancel(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mErrorString:Ljava/lang/String;

    .line 90
    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mLineLength:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mOrientation:I

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mListeners:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getPortraitScenePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getLandscapeScenePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    .line 97
    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mScenePort:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mScenePort is null."

    invoke-static {v1, v2}, Lcom/htc/android/fusion/calculator/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mSceneLand:Lcom/htc/fusion/fx/FxScene;

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSceneLand is null."

    invoke-static {v1, v2}, Lcom/htc/android/fusion/calculator/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->initControls()V

    .line 105
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;->checkValidity()V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonEqualLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnEqualButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 131
    :cond_2
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonBackLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnBackButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_4

    .line 135
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearPort:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 137
    :cond_4
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v2, :cond_5

    .line 138
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtonClearLand:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mOnClearButtonClickListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 141
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 142
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 143
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/IMessageListener;

    invoke-interface {v3, v2}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_6
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_7
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_8

    .line 149
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerPort:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 151
    :cond_8
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_9

    .line 152
    iget-object v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mDefaultPlaybackCompleteListenerLand:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 154
    :cond_9
    iput-object v4, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 155
    iput-object v4, p0, Lcom/htc/android/fusion/calculator/Widget;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 156
    iput-object v4, p0, Lcom/htc/android/fusion/calculator/Widget;->mTimelineControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 157
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 158
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    iget-object v1, p0, Lcom/htc/android/fusion/calculator/Widget;->mChangeOrientationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mChangeOrientationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 169
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/Widget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 112
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 117
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onStop()V

    .line 118
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 6
    .parameter "tilt"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onTiltChanged(F)V

    .line 188
    iget v4, p0, Lcom/htc/android/fusion/calculator/Widget;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 189
    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlPort:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 190
    .local v3, timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    iget v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartPort:I

    .line 191
    .local v2, start:I
    iget v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndPort:I

    .line 197
    .local v0, end:I
    :goto_0
    if-eqz v3, :cond_0

    .line 198
    invoke-static {p1, v2, v0}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v1

    .line 199
    .local v1, newFrame:F
    invoke-virtual {v3, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 201
    .end local v1           #newFrame:F
    :cond_0
    return-void

    .line 193
    .end local v0           #end:I
    .end local v2           #start:I
    .end local v3           #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_1
    iget-object v3, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltTimelineControlLand:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 194
    .restart local v3       #timeline:Lcom/htc/fusion/fx/FxTimelineControl;
    iget v2, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameStartLand:I

    .line 195
    .restart local v2       #start:I
    iget v0, p0, Lcom/htc/android/fusion/calculator/Widget;->mTiltMarkerFrameEndLand:I

    .restart local v0       #end:I
    goto :goto_0
.end method
