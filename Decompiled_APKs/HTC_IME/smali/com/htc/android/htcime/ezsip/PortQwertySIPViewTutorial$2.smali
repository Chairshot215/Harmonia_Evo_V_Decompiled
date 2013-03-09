.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;
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
    .line 693
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-boolean v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/TutorialBubbles;->isAllocated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    :cond_0
    const-string v1, "PortQwertySIPViewTutorial"

    const-string v2, "mFuzzyScenerioHandler - mTutorialBubbleAllocate == false"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 772
    :goto_0
    return-void

    .line 702
    :cond_1
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 704
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    .line 705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playRCTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const-string v3, "simple "

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const-string v4, "simple "

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41c8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v5}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    goto :goto_0

    .line 711
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto :goto_0

    .line 715
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/high16 v2, 0x71c

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 718
    .local v13, r:Landroid/content/res/Resources;
    const v1, 0x7f09003f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v5, v5, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mInputString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "simple "

    const/4 v6, 0x0

    const-string v7, "simple "

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v13, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 720
    .local v14, r2:Ljava/lang/String;
    const v1, 0x7f090040

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 723
    .local v15, r3:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    move-object/from16 v16, v0

    new-instance v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const v5, 0x7f020016

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0053

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x20c0124

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v17, 0x7f090043

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;-><init>(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    .line 730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    check-cast v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;

    const-string v2, "com.htc.android.htcime"

    const-string v3, "com.htc.android.htcime.tutorial.LongPress"

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$NextTutorialBubble;->setIntentTarget(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/Bubble;->setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    goto/16 :goto_0

    .line 751
    .end local v13           #r:Landroid/content/res/Resources;
    .end local v14           #r2:Ljava/lang/String;
    .end local v15           #r3:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 754
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v3, 0x20

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/16 v4, 0x20

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 755
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mWaitingSpace:Z

    .line 756
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const-string v2, "simple "

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mCharPos:I

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->showInput(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 759
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v1, v1, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$1000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$1100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mScaledMetric:F
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v4}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$1200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$2;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mFuzzyScenerioHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$1200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
