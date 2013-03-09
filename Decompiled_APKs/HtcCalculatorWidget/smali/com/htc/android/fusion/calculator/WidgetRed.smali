.class public Lcom/htc/android/fusion/calculator/WidgetRed;
.super Lcom/htc/android/fusion/calculator/Widget;
.source "WidgetRed.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/htc/android/fusion/calculator/WidgetRed;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/fusion/calculator/WidgetRed;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/android/fusion/calculator/Widget;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLandscapeControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;

    invoke-direct {v0}, Lcom/htc/android/fusion/calculator/ControlNameWrapper;-><init>()V

    .line 69
    .local v0, wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    const-string v1, "button.calculator03.0"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton0:Ljava/lang/String;

    .line 70
    const-string v1, "button.calculator03.1"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton1:Ljava/lang/String;

    .line 71
    const-string v1, "button.calculator03.2"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton2:Ljava/lang/String;

    .line 72
    const-string v1, "button.calculator03.3"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton3:Ljava/lang/String;

    .line 73
    const-string v1, "button.calculator03.4"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton4:Ljava/lang/String;

    .line 74
    const-string v1, "button.calculator03.5"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton5:Ljava/lang/String;

    .line 75
    const-string v1, "button.calculator03.6"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton6:Ljava/lang/String;

    .line 76
    const-string v1, "button.calculator03.7"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton7:Ljava/lang/String;

    .line 77
    const-string v1, "button.calculator03.8"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton8:Ljava/lang/String;

    .line 78
    const-string v1, "button.calculator03.9"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton9:Ljava/lang/String;

    .line 79
    const-string v1, "button.calculator03.dot"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDot:Ljava/lang/String;

    .line 81
    const-string v1, "button.calculator03.plus"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPlus:Ljava/lang/String;

    .line 82
    const-string v1, "button.calculator03.minus"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMinus:Ljava/lang/String;

    .line 83
    const-string v1, "button.calculator03.times"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMul:Ljava/lang/String;

    .line 84
    const-string v1, "button.calculator03.div"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDiv:Ljava/lang/String;

    .line 85
    const-string v1, "button.calculator03.par.1"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLeftParen:Ljava/lang/String;

    .line 86
    const-string v1, "button.calculator03.par.2"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonRightParen:Ljava/lang/String;

    .line 87
    const-string v1, "button.calculator03.equal"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonEqual:Ljava/lang/String;

    .line 88
    const-string v1, "button.calculator03.bk"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonBack:Ljava/lang/String;

    .line 89
    const-string v1, "button.clean"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonClear:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method protected getLandscapeScenePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/WidgetRed;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, path:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fusion/calculator/WidgetRed;->TAG:Ljava/lang/String;

    const-string v2, "land path: "

    invoke-static {v1, v2, v0}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method protected getPortraitControlNameWrapper()Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;

    invoke-direct {v0}, Lcom/htc/android/fusion/calculator/ControlNameWrapper;-><init>()V

    .line 29
    .local v0, wrapper:Lcom/htc/android/fusion/calculator/ControlNameWrapper;
    const-string v1, "button.calculator03.0"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton0:Ljava/lang/String;

    .line 30
    const-string v1, "button.calculator03.1"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton1:Ljava/lang/String;

    .line 31
    const-string v1, "button.calculator03.2"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton2:Ljava/lang/String;

    .line 32
    const-string v1, "button.calculator03.3"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton3:Ljava/lang/String;

    .line 33
    const-string v1, "button.calculator03.4"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton4:Ljava/lang/String;

    .line 34
    const-string v1, "button.calculator03.5"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton5:Ljava/lang/String;

    .line 35
    const-string v1, "button.calculator03.6"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton6:Ljava/lang/String;

    .line 36
    const-string v1, "button.calculator03.7"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton7:Ljava/lang/String;

    .line 37
    const-string v1, "button.calculator03.8"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton8:Ljava/lang/String;

    .line 38
    const-string v1, "button.calculator03.9"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButton9:Ljava/lang/String;

    .line 39
    const-string v1, "button.calculator03.dot"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDot:Ljava/lang/String;

    .line 41
    const-string v1, "button.calculator03.plus"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPlus:Ljava/lang/String;

    .line 42
    const-string v1, "button.calculator03.minus"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMinus:Ljava/lang/String;

    .line 43
    const-string v1, "button.calculator03.times"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonMul:Ljava/lang/String;

    .line 44
    const-string v1, "button.calculator03.div"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonDiv:Ljava/lang/String;

    .line 46
    const-string v1, "button.calculator03.sin"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonSin:Ljava/lang/String;

    .line 47
    const-string v1, "button.calculator03.cos"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonCos:Ljava/lang/String;

    .line 48
    const-string v1, "button.calculator03.tan"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonTan:Ljava/lang/String;

    .line 49
    const-string v1, "button.calculator03.ln"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLn:Ljava/lang/String;

    .line 50
    const-string v1, "button.calculator03.log"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLog:Ljava/lang/String;

    .line 51
    const-string v1, "button.calculator03.exc"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonFac:Ljava/lang/String;

    .line 52
    const-string v1, "button.calculator03.pi"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPi:Ljava/lang/String;

    .line 53
    const-string v1, "button.calculator03.e"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonE:Ljava/lang/String;

    .line 54
    const-string v1, "button.calculator03.rad"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonSqrt:Ljava/lang/String;

    .line 55
    const-string v1, "button.calculator03.arr"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonPower:Ljava/lang/String;

    .line 56
    const-string v1, "button.calculator03.par.1"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonLeftParen:Ljava/lang/String;

    .line 57
    const-string v1, "button.calculator03.par.2"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonRightParen:Ljava/lang/String;

    .line 58
    const-string v1, "button.calculator03.equal"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonEqual:Ljava/lang/String;

    .line 59
    const-string v1, "button.calculator03.bk"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonBack:Ljava/lang/String;

    .line 60
    const-string v1, "button.clear"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mButtonClear:Ljava/lang/String;

    .line 61
    const-string v1, "textlable.clear"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextClear:Ljava/lang/String;

    .line 62
    const-string v1, "textlable.clear2"

    iput-object v1, v0, Lcom/htc/android/fusion/calculator/ControlNameWrapper;->mTextClearPress:Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method protected getPortraitScenePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/htc/android/fusion/calculator/WidgetRed;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, path:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/fusion/calculator/WidgetRed;->TAG:Ljava/lang/String;

    const-string v2, "port path: "

    invoke-static {v1, v2, v0}, Lcom/htc/android/fusion/calculator/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/htc/android/fusion/calculator/WidgetRed;->TAG:Ljava/lang/String;

    return-object v0
.end method
