.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;
.super Landroid/os/Handler;
.source "PortQwertySIPViewTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 1111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialBubbles;->isAllocated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    :cond_0
    const-string v1, "PortQwertySIPViewTutorial"

    const-string v2, "mLongPressScenerioHandler - mTutorialBubbleAllocate == false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1214
    :goto_0
    return-void

    .line 1116
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$4800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1117
    .local v16, res:Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1119
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0x61

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v13

    .line 1120
    .local v13, key_a:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v2, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAdjustKeyWidth:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$4900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v13, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 1125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5102(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z

    move-result v2

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mStartLP:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1131
    .end local v13           #key_a:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x2

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    .line 1132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    const v2, 0x7f0a0042

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const v3, 0x7f0a0043

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v4

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    const v4, 0x7f0a0040

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const v5, 0x7f0a0041

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v6}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/BubbleAni;->show(IIII)V

    goto/16 :goto_0

    .line 1136
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v3, -0x2

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x2

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v3, -0x2

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x2

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0a0061

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0a005d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 1142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x4

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    .line 1143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5102(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z

    goto/16 :goto_0

    .line 1146
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYMHint:Lcom/htc/android/htcime/ui/BubbleAni;

    const v2, 0x7f0a004c

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0a004d

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x7f0a004a

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0a004b

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/BubbleAni;->show(IIII)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x5

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1151
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v3, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v3, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0a0061

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0a005d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 1160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x3

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1164
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    move-object/from16 v17, v0

    new-instance v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const v5, 0x7f020016

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v9, 0x0

    const v10, 0x7f090050

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x20c0124

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v18, 0x7f090043

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    check-cast v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.MoreRegionalCorrection"

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->setIntentTarget(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/Bubble;->setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0x8

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1178
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_0

    .line 1182
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0x66

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v14

    .line 1183
    .local v14, key_f:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v2, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAdjustKeyWidth:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$4900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v14, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x6

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5102(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z

    goto/16 :goto_0

    .line 1193
    .end local v14           #key_f:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v3, 0x66

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v4, 0x66

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const v4, 0x7f0a003d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x7

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1198
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0x67

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v15

    .line 1199
    .local v15, key_g:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v2, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    iget v4, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAdjustKeyWidth:I
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$4900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v15, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    .line 1205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0x9

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x1

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPAcceptInput:Z
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5102(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Z)Z

    goto/16 :goto_0

    .line 1209
    .end local v15           #key_g:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v3, 0x67

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v4, 0x67

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const v4, 0x7f0a003d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$3;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v2, 0xa

    #setter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mLPTutorState:I
    invoke-static {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$002(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)I

    goto/16 :goto_0

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
