.class public Lcom/htc/android/htcime/ui/AddHandwritePatternWord;
.super Lcom/htc/android/htcime/util/IMEWithListViewBase;
.source "AddHandwritePatternWord.java"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private btnReDraw:Landroid/widget/Button;

.field private etPattern:Landroid/widget/EditText;

.field private ges:Landroid/gesture/Gesture;

.field private gesPath:Ljava/lang/String;

.field private geslib:Landroid/gesture/GestureLibrary;

.field private mGestureName:Ljava/lang/String;

.field private mHomePressedFilter:Landroid/content/IntentFilter;

.field private mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

.field mScroll:Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

.field private mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

.field private m_bRecognizerHasBeenInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;-><init>()V

    .line 68
    const-string v0, "AddHandwritePatternWord"

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->DEBUG:Z

    .line 70
    iput-object v2, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 84
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Lcom/htc/android/htcime/ui/PatternStrokeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->etPattern:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtnEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtnEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private addGestures(Ljava/lang/String;)V
    .locals 7
    .parameter "gesName"

    .prologue
    .line 443
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/PatternStrokeView;->getGesture()Landroid/gesture/Gesture;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->ges:Landroid/gesture/Gesture;

    .line 446
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v3, file:Ljava/io/File;
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    .line 449
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 450
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->ges:Landroid/gesture/Gesture;

    invoke-virtual {v5, p1, v6}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 453
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->save()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V

    .line 487
    .end local v3           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 457
    .restart local v3       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v5

    if-nez v5, :cond_3

    .line 463
    const-string v5, "AddHandwritePatternWord"

    const-string v6, "[addGestures], Gesture library load fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v2

    .line 468
    .local v2, en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 469
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, p1}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 470
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 471
    iget-object v6, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Gesture;

    invoke-virtual {v6, p1, v5}, Landroid/gesture/GestureLibrary;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 475
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v4           #i:I
    :cond_4
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    iget-object v6, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->ges:Landroid/gesture/Gesture;

    invoke-virtual {v5, p1, v6}, Landroid/gesture/GestureLibrary;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 478
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->save()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private buildAIrecord(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    const/high16 v1, -0x4000

    .line 529
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 532
    .local v0, ptStroke:Landroid/graphics/PointF;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    if-nez v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v2, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    .line 537
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v1, p1, p2}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->buildAIrecord(Ljava/util/ArrayList;I)Z

    .line 540
    :cond_1
    return-void
.end method

.method private getExtraValue()V
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "gestureName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    .line 409
    :cond_0
    return-void
.end method

.method private receiverRegister()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    .line 419
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$6;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$6;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private receiverUnRegister()V
    .locals 2

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mHomePressedIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    return-void
.end method

.method private removeAIrecord(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    sget-object v1, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget v1, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->cur_db:I

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->init(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    .line 547
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->removeAIrecord(I)Z

    .line 550
    :cond_1
    return-void
.end method

.method private removeGestures(Ljava/lang/String;)V
    .locals 7
    .parameter "gesName"

    .prologue
    .line 491
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v3, file:Ljava/io/File;
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    .line 498
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 500
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v5

    if-nez v5, :cond_2

    .line 501
    const-string v5, "AddHandwritePatternWord"

    const-string v6, "[removeGestures], Gesture library load fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    .end local v3           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 522
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v2

    .line 506
    .local v2, en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 507
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, p1}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 508
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 509
    iget-object v6, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Gesture;

    invoke-virtual {v6, p1, v5}, Landroid/gesture/GestureLibrary;->removeGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 514
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v4           #i:I
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->save()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 516
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->removeAIrecord(I)V

    goto :goto_0

    .line 518
    :cond_4
    const-string v5, "AddHandwritePatternWord"

    const-string v6, "[removeGestures], Gesture library save fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .parameter "word"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 395
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 396
    return-void
.end method


# virtual methods
.method protected doButtonFunction()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method initialSetting()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xa

    const/4 v5, 0x6

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, bUpdated:Z
    const/4 v1, 0x0

    .line 348
    .local v1, nValue:I
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->loadPropertiesEx(Landroid/content/Context;)V

    .line 350
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 353
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    sget-object v4, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->YELLOW:Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;

    invoke-virtual {v4}, Lcom/htc/android/htcime/PPIME/PPConfigProperty$PENCOLOR;->ordinal()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 357
    const/4 v0, 0x1

    .line 359
    :cond_0
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 361
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    const/4 v4, 0x2

    invoke-virtual {v3, v6, v4}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->setProperty(II)Z

    .line 363
    const/4 v0, 0x1

    .line 367
    :cond_1
    if-eqz v0, :cond_2

    .line 368
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->saveProperties(Landroid/content/Context;)V

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    if-eqz v3, :cond_3

    .line 373
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v2

    .line 376
    .local v2, pcidx:I
    sget-object v3, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->pen_color:[I

    const/16 v4, 0xc

    aget v1, v3, v4

    .line 377
    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->setPenColor(I)V

    .line 379
    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mPPConfigProperty:Lcom/htc/android/htcime/PPIME/PPConfigProperty;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/PPIME/PPConfigProperty;->getProperty(I)I

    move-result v1

    .line 380
    iget-object v3, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v3, v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->setPenWidth(I)V

    .line 383
    .end local v2           #pcidx:I
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->bNeedMenuItem:Z

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->requestWindowFeature(I)Z

    .line 99
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setContentView(I)V

    .line 108
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setHeaderBarText(I)V

    .line 110
    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mScroll:Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

    .line 113
    sget v0, Lcom/htc/android/htcime/HTCIMMData;->sHtcSenseVer:F

    const/high16 v1, 0x4060

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mScroll:Lcom/htc/android/htcime/ui/ScrollViewNotScroll;

    invoke-static {v0}, Lcom/htc/android/htcime/util/SIPUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 116
    :cond_0
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->etPattern:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0e001c

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->btnReDraw:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/PatternStrokeView;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    .line 121
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    new-instance v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$1;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-direct {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 138
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->initialSetting()V

    .line 149
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/com.htc.android.htcime/app_hwr/gestures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->btnReDraw:Landroid/widget/Button;

    new-instance v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$2;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$2;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v0, 0x20c013c

    new-instance v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$3;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtn(ILandroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setLeftCmdBarBtnEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->etPattern:Landroid/widget/EditText;

    new-instance v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$4;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    const v0, 0x20c013d

    new-instance v1, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord$5;-><init>(Lcom/htc/android/htcime/ui/AddHandwritePatternWord;)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->setRightCmdBarBtn(ILandroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->receiverRegister()V

    .line 239
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->receiverUnRegister()V

    .line 300
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;->finish()Z

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mRecognize:Lcom/htc/android/htcime/ezsip/handwriting/PPRecognize;

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->m_bRecognizerHasBeenInitialized:Z

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onDestroy()V

    .line 307
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 336
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 312
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->finish()V

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    .line 331
    invoke-super {p0, p1, p2}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 14

    .prologue
    .line 243
    invoke-super {p0}, Lcom/htc/android/htcime/util/IMEWithListViewBase;->onResume()V

    .line 244
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->getExtraValue()V

    .line 246
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 248
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v3, file:Ljava/io/File;
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->gesPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    .line 251
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 253
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v11}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v11

    if-nez v11, :cond_2

    .line 254
    const-string v11, "AddHandwritePatternWord"

    const-string v12, "[onResume], Gesture library load fail"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v3           #file:Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->etPattern:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_1
    return-void

    .line 256
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v11}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v2

    .line 258
    .local v2, en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 259
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->geslib:Landroid/gesture/GestureLibrary;

    iget-object v12, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    const/4 v4, 0x0

    .line 262
    .local v4, gs:Landroid/gesture/Gesture;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_0

    .line 263
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #gs:Landroid/gesture/Gesture;
    check-cast v4, Landroid/gesture/Gesture;

    .line 264
    .restart local v4       #gs:Landroid/gesture/Gesture;
    invoke-virtual {v4}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v5

    .line 266
    .local v5, gstroke:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 267
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/gesture/GestureStroke;

    .line 270
    .local v10, stroke:Landroid/gesture/GestureStroke;
    const/4 v8, 0x0

    .local v8, k:I
    :goto_3
    iget-object v11, v10, Landroid/gesture/GestureStroke;->points:[F

    array-length v11, v11

    div-int/lit8 v11, v11, 0x2

    if-ge v8, v11, :cond_3

    .line 271
    new-instance v9, Landroid/graphics/PointF;

    iget-object v11, v10, Landroid/gesture/GestureStroke;->points:[F

    mul-int/lit8 v12, v8, 0x2

    aget v11, v11, v12

    iget-object v12, v10, Landroid/gesture/GestureStroke;->points:[F

    mul-int/lit8 v13, v8, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v12, v12, v13

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 273
    .local v9, pt:Landroid/graphics/PointF;
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v11, v9}, Lcom/htc/android/htcime/ui/PatternStrokeView;->addPoint(Landroid/graphics/PointF;)V

    .line 270
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 275
    .end local v9           #pt:Landroid/graphics/PointF;
    :cond_3
    new-instance v9, Landroid/graphics/PointF;

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 278
    .restart local v9       #pt:Landroid/graphics/PointF;
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v11, v9}, Lcom/htc/android/htcime/ui/PatternStrokeView;->addPoint(Landroid/graphics/PointF;)V

    .line 280
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v10}, Landroid/gesture/GestureStroke;->getPath()Landroid/graphics/Path;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/htc/android/htcime/ui/PatternStrokeView;->setPath(Landroid/graphics/Path;)V

    .line 281
    iget-object v11, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v11, v10}, Lcom/htc/android/htcime/ui/PatternStrokeView;->addGesStroke(Landroid/gesture/GestureStroke;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 262
    .end local v8           #k:I
    .end local v9           #pt:Landroid/graphics/PointF;
    .end local v10           #stroke:Landroid/gesture/GestureStroke;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 288
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Gesture;>;"
    .end local v2           #en:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #file:Ljava/io/File;
    .end local v4           #gs:Landroid/gesture/Gesture;
    .end local v5           #gstroke:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .end local v6           #i:I
    .end local v7           #j:I
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected submitPattern(Ljava/lang/String;)V
    .locals 2
    .parameter "gesName"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mGestureName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->removeGestures(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->mStrokeView:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/PatternStrokeView;->getPointArray()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->buildAIrecord(Ljava/util/ArrayList;I)V

    .line 389
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/ui/AddHandwritePatternWord;->addGestures(Ljava/lang/String;)V

    .line 390
    return-void
.end method
