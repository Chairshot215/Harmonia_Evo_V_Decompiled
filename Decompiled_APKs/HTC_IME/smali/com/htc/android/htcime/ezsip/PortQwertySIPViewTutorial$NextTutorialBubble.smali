.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;
.super Lcom/htc/android/htcime/ui/Bubble;
.source "PortQwertySIPViewTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NextTutorialBubble"
.end annotation


# instance fields
.field private mIntentClass:Ljava/lang/String;

.field private mIntentTarget:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "context"
    .parameter "inputView"
    .parameter "backgroundResource"
    .parameter "bx"
    .parameter "by"
    .parameter "bw"
    .parameter "gravity"
    .parameter "text"
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 1027
    invoke-direct/range {v0 .. v10}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    new-instance v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;

    invoke-direct {v0, p0, p1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble$1;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    .line 1075
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1076
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->PopupTouchIntercepter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1077
    return-void
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$3300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentTarget:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingWidth:I

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mPaddingHeight:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->ButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public setIntentTarget(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "t"

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentClass:Ljava/lang/String;

    .line 1081
    iput-object p2, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->mIntentTarget:Ljava/lang/String;

    .line 1082
    return-void
.end method
