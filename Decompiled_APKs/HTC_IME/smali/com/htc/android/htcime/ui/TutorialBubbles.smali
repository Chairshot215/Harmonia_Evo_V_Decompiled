.class public Lcom/htc/android/htcime/ui/TutorialBubbles;
.super Ljava/lang/Object;
.source "TutorialBubbles.java"


# instance fields
.field private bubbleAllocated:Z

.field public bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

.field public bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

.field public bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

.field public bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

.field public bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

.field protected mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field public mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

.field public mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleSYMHint:Lcom/htc/android/htcime/ui/BubbleAni;

.field public mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

.field public mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

.field public mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

.field public mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

.field public mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 2
    .parameter "htcIMM"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleAllocated:Z

    .line 49
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 52
    iput-object p1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 53
    return-void
.end method


# virtual methods
.method public allocatBubbles(Landroid/content/Context;ZLandroid/view/View;Ljava/lang/String;)V
    .locals 14
    .parameter "mContext"
    .parameter "mISZH"
    .parameter "v"
    .parameter "rcString"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 61
    .local v13, res:Landroid/content/res/Resources;
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020011

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const v1, 0x7f0a0057

    :goto_0
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09003b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-virtual {v13, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    .line 67
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020015

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    const v1, 0x7f0a005b

    :goto_1
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09003c

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    .line 73
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020014

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    const v1, 0x7f0a0059

    :goto_2
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09003d

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    .line 79
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020012

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_3

    const v1, 0x7f0a0055

    :goto_3
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09003e

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    .line 87
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020011

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    const v1, 0x7f0a0046

    :goto_4
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f090046

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    .line 93
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020011

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    const v1, 0x7f0a0037

    :goto_5
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09004b

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    .line 99
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020016

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_6

    const v1, 0x7f0a0050

    :goto_6
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f090048

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    .line 106
    new-instance v0, Lcom/htc/android/htcime/ui/BubbleAni;

    const v3, 0x7f020016

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_7

    const v1, 0x7f0a0044

    :goto_7
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f090047

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v11}, Lcom/htc/android/htcime/ui/BubbleAni;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    .line 114
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsLargeTablet:Z

    if-eqz v0, :cond_a

    .line 115
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020012

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_8

    const v1, 0x7f0a003b

    :goto_8
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09004e

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    .line 121
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020012

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_9

    const v1, 0x7f0a003e

    :goto_9
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09004f

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    .line 157
    :goto_a
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    .line 159
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMEService;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->init(Landroid/view/View;)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleAllocated:Z

    .line 162
    return-void

    .line 61
    :cond_0
    const v1, 0x7f0a0056

    goto/16 :goto_0

    .line 67
    :cond_1
    const v1, 0x7f0a005a

    goto/16 :goto_1

    .line 73
    :cond_2
    const v1, 0x7f0a0058

    goto/16 :goto_2

    .line 79
    :cond_3
    const v1, 0x7f0a0054

    goto/16 :goto_3

    .line 87
    :cond_4
    const v1, 0x7f0a0045

    goto/16 :goto_4

    .line 93
    :cond_5
    const v1, 0x7f0a0036

    goto/16 :goto_5

    .line 99
    :cond_6
    const v1, 0x7f0a004f

    goto/16 :goto_6

    .line 106
    :cond_7
    const v1, 0x7f0a003f

    goto/16 :goto_7

    .line 115
    :cond_8
    const v1, 0x7f0a003a

    goto/16 :goto_8

    .line 121
    :cond_9
    const v1, 0x7f0a003c

    goto :goto_9

    .line 128
    :cond_a
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020012

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_b

    const v1, 0x7f0a003b

    :goto_b
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09004c

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    .line 134
    new-instance v0, Lcom/htc/android/htcime/ui/Bubble;

    const v3, 0x7f020012

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_c

    const v1, 0x7f0a003e

    :goto_c
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const v1, 0x7f09004d

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v12}, Lcom/htc/android/htcime/ui/Bubble;-><init>(Landroid/content/Context;Landroid/view/View;IIIIILjava/lang/String;ZZZI)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    goto/16 :goto_a

    .line 128
    :cond_b
    const v1, 0x7f0a003a

    goto :goto_b

    .line 134
    :cond_c
    const v1, 0x7f0a003c

    goto :goto_c
.end method

.method public destroyBubbles()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleAllocated:Z

    .line 168
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 173
    :cond_4
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleResult:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSpace:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleSuggest:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleTyped:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    .line 175
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/BubbleAni;->hide()V

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 179
    :cond_7
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 182
    :cond_a
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 187
    :cond_b
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 188
    :cond_c
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleTry:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYM:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleF:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleFHint:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleClose:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleStart:Lcom/htc/android/htcime/ui/Bubble;

    .line 189
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleG:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleGHint:Lcom/htc/android/htcime/ui/Bubble;

    .line 190
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleHint:Lcom/htc/android/htcime/ui/BubbleAni;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mLPBubbleSYMHint:Lcom/htc/android/htcime/ui/BubbleAni;

    .line 192
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 193
    :cond_d
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/Bubble;->hide()V

    .line 194
    :cond_e
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCCorrect:Lcom/htc/android/htcime/ui/Bubble;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mMRCInputHint:Lcom/htc/android/htcime/ui/Bubble;

    .line 196
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 197
    iget-object v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/TutorialTouchZone;->dismiss()V

    .line 198
    :cond_f
    iput-object v1, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->mTutorialTouchZone:Lcom/htc/android/htcime/ui/TutorialTouchZone;

    .line 199
    return-void
.end method

.method public isAllocated()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/TutorialBubbles;->bubbleAllocated:Z

    return v0
.end method
