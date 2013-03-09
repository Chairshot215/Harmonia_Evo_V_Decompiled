.class public Lcom/htc/android/fusion/calculator/ControlNameWrapper;
.super Ljava/lang/Object;
.source "ControlNameWrapper.java"


# instance fields
.field public mButton0:Ljava/lang/String;

.field public mButton1:Ljava/lang/String;

.field public mButton2:Ljava/lang/String;

.field public mButton3:Ljava/lang/String;

.field public mButton4:Ljava/lang/String;

.field public mButton5:Ljava/lang/String;

.field public mButton6:Ljava/lang/String;

.field public mButton7:Ljava/lang/String;

.field public mButton8:Ljava/lang/String;

.field public mButton9:Ljava/lang/String;

.field public mButtonBack:Ljava/lang/String;

.field public mButtonClear:Ljava/lang/String;

.field public mButtonCos:Ljava/lang/String;

.field public mButtonDiv:Ljava/lang/String;

.field public mButtonDot:Ljava/lang/String;

.field public mButtonE:Ljava/lang/String;

.field public mButtonEqual:Ljava/lang/String;

.field public mButtonFac:Ljava/lang/String;

.field public mButtonLeftParen:Ljava/lang/String;

.field public mButtonLn:Ljava/lang/String;

.field public mButtonLog:Ljava/lang/String;

.field public mButtonMinus:Ljava/lang/String;

.field public mButtonMul:Ljava/lang/String;

.field public mButtonPi:Ljava/lang/String;

.field public mButtonPlus:Ljava/lang/String;

.field public mButtonPower:Ljava/lang/String;

.field public mButtonRightParen:Ljava/lang/String;

.field public mButtonSin:Ljava/lang/String;

.field public mButtonSqrt:Ljava/lang/String;

.field public mButtonTan:Ljava/lang/String;

.field public mTextClear:Ljava/lang/String;

.field public mTextClearPress:Ljava/lang/String;

.field public mTextInput:Ljava/lang/String;

.field public mTextLabel:Ljava/lang/String;

.field public mTimeline:Ljava/lang/String;

.field public mTimelineTilt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "timeline.tiltanim"

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimelineTilt:Ljava/lang/String;

    .line 44
    const-string v0, "timeline.type_numbers"

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTimeline:Ljava/lang/String;

    .line 45
    const-string v0, "textlabel.type_number01"

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextInput:Ljava/lang/String;

    .line 46
    const-string v0, "textlabel.type_number02"

    iput-object v0, p0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextLabel:Ljava/lang/String;

    .line 47
    return-void
.end method
