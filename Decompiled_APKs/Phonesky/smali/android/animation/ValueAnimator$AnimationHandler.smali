.class Landroid/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 594
    const/4 v2, 0x1

    .line 595
    .local v2, callAgain:Z
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 599
    :pswitch_0
    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 600
    :cond_1
    const/4 v2, 0x0

    .line 607
    :cond_2
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 609
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 611
    .local v10, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 612
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 613
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v3, :cond_2

    .line 614
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 616
    .local v1, anim:Landroid/animation/ValueAnimator;
    #getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v1}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    #getter for: Landroid/animation/ValueAnimator;->mPlayingState:I
    invoke-static {v1}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_3

    #getter for: Landroid/animation/ValueAnimator;->mPlayingState:I
    invoke-static {v1}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 618
    :cond_3
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v1}, Landroid/animation/ValueAnimator;->access$500(Landroid/animation/ValueAnimator;)V

    .line 613
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 620
    :cond_4
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 629
    .end local v1           #anim:Landroid/animation/ValueAnimator;
    .end local v3           #count:I
    .end local v6           #i:I
    .end local v10           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_5
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 633
    .local v4, currentTime:J
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 634
    .local v8, numDelayedAnims:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    if-ge v6, v8, :cond_7

    .line 635
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 636
    .restart local v1       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v1, v4, v5}, Landroid/animation/ValueAnimator;->access$600(Landroid/animation/ValueAnimator;J)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 637
    invoke-static {}, Landroid/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 640
    .end local v1           #anim:Landroid/animation/ValueAnimator;
    :cond_7
    invoke-static {}, Landroid/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 641
    .local v9, numReadyAnims:I
    if-lez v9, :cond_9

    .line 642
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_8

    .line 643
    invoke-static {}, Landroid/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 644
    .restart local v1       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v1}, Landroid/animation/ValueAnimator;->access$500(Landroid/animation/ValueAnimator;)V

    .line 645
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 647
    .end local v1           #anim:Landroid/animation/ValueAnimator;
    :cond_8
    invoke-static {}, Landroid/animation/ValueAnimator;->access$700()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 652
    :cond_9
    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 653
    .local v7, numAnims:I
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_b

    .line 654
    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 655
    .restart local v1       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->animationFrame(J)Z
    invoke-static {v1, v4, v5}, Landroid/animation/ValueAnimator;->access$800(Landroid/animation/ValueAnimator;J)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 656
    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 659
    .end local v1           #anim:Landroid/animation/ValueAnimator;
    :cond_b
    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_d

    .line 660
    const/4 v6, 0x0

    :goto_6
    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_c

    .line 661
    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->endAnimation()V
    invoke-static {v11}, Landroid/animation/ValueAnimator;->access$1000(Landroid/animation/ValueAnimator;)V

    .line 660
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 663
    :cond_c
    invoke-static {}, Landroid/animation/ValueAnimator;->access$900()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 668
    :cond_d
    if-eqz v2, :cond_0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 669
    :cond_e
    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$1100()J

    move-result-wide v14

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    sub-long v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 595
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
