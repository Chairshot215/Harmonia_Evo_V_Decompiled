.class Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;
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
    .line 1836
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 1840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-boolean v3, v3, Lcom/htc/android/htcime/HTCIMEService;->mTutorialBubbleAllocate:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/TutorialBubbles;->isAllocated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1841
    :cond_0
    const-string v3, "PortQwertySIPViewTutorial"

    const-string v4, "mMRCScenerioHandler - mTutorialBubbleAllocate == false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1940
    :goto_0
    return-void

    .line 1845
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 1846
    .local v27, r:Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1861
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->isTutorialing:Z

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const-string v4, ""

    iput-object v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    .line 1863
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, 0x0

    iput v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCharPos:I

    .line 1864
    new-instance v24, Landroid/content/Intent;

    const-string v3, "tutorChangeInput"

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1865
    .local v24, i:Landroid/content/Intent;
    const-string v3, "mrccount"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v4, v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5800(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1869
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v3}, Lcom/htc/android/htcime/HTCIMEService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    const/16 v4, 0xf

    const/16 v5, 0xf

    invoke-interface {v3, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->playMRCTutorial()V
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5900(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAcceptInput:Z

    goto :goto_0

    .line 1848
    .end local v24           #i:Landroid/content/Intent;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mAcceptInput:Z

    .line 1849
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1850
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v14, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    new-instance v3, Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const v6, 0x7f020016

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5600(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0052

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/4 v10, 0x0

    const v12, 0x7f090054

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    sget-object v16, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v3 .. v13}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZ)V

    iput-object v3, v14, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    .line 1856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/Bubble;->setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v3

    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/Bubble;->show(I)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1877
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, 0x0

    iput v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 1878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->finishTutorial()V
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/HTCIMEService;->sendSimKeyEvent(I)V

    goto/16 :goto_0

    .line 1882
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/high16 v4, 0x71c

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sendKeyEvent(I)V

    .line 1884
    const v3, 0x7f09003f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v7, v7, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCInputString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v8, v8, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    sget-object v9, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v10, v10, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1890
    .local v11, r2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v14, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    new-instance v3, Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6000(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const v6, 0x7f020016

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6100(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0051

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v3 .. v13}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZ)V

    iput-object v3, v14, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    .line 1896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/Bubble;->setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1898
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    sget-object v4, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->sMRCString:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 1900
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1903
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    .line 1904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/android/htcime/XT9IME/XT9IMETutorial;->activeString:I

    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mMRCScenerioHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$5700(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x5dc

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1910
    .end local v11           #r2:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6200(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 1911
    .local v28, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 1913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const/4 v4, -0x4

    #calls: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->tutorialGetKey(I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    invoke-static {v3, v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;I)Lcom/htc/android/htcime/ezsip/Keyboard$Key;

    move-result-object v26

    .line 1916
    .local v26, key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v6, v6, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v6}, Lcom/htc/android/htcime/HTCIMMView;->getFixedWCLHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->pos:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, v26

    iget v6, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->width:I

    move-object/from16 v0, v26

    iget v7, v0, Lcom/htc/android/htcime/ezsip/Keyboard$Key;->height:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->setCenterLocation(FFII)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->show()V

    goto/16 :goto_0

    .line 1923
    .end local v26           #key:Lcom/htc/android/htcime/ezsip/Keyboard$Key;
    :cond_4
    new-instance v29, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v29 .. v29}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1924
    .local v29, text:Landroid/text/SpannableStringBuilder;
    const v3, 0x7f090087

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1925
    invoke-virtual/range {v29 .. v29}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v25

    .line 1926
    .local v25, icon_pos:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090055

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1927
    new-instance v23, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6300(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020118

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    .line 1928
    .local v23, backKeyIcon:Landroid/text/style/ImageSpan;
    add-int/lit8 v3, v25, 0x1

    const/16 v4, 0x21

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    new-instance v12, Lcom/htc/android/htcime/ui/Bubble;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6400(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    const v15, 0x7f020016

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    #getter for: Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->access$6500(Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    const/16 v19, 0x0

    const-string v20, ""

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v12 .. v22}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZ)V

    invoke-virtual/range {v23 .. v23}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/htc/android/htcime/ui/Bubble;->setTextHeight(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    .line 1935
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/Bubble;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial$4;->this$0:Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;

    iget-object v3, v3, Lcom/htc/android/htcime/ezsip/PortQwertySIPViewTutorial;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mTutorialBubbles:Lcom/htc/android/htcime/ui/TutorialBubbles;

    iget-object v3, v3, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/Bubble;->setTextGravity(I)Lcom/htc/android/htcime/ui/Bubble;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/htcime/ui/Bubble;->show(II)V

    goto/16 :goto_0

    .line 1846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
