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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    const/4 v6, 0x1

    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    :cond_1
    const/4 v6, 0x0

    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    #getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_3

    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/animation/ValueAnimator;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-static {}, Landroid/animation/ValueAnimator;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_6

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Landroid/animation/ValueAnimator;->access$700(Landroid/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_8

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    #setter for: Landroid/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v0}, Landroid/animation/ValueAnimator;->access$802(Landroid/animation/ValueAnimator;Z)Z

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v13, :cond_b

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_a

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_c

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v19 .. v19}, Landroid/animation/ValueAnimator;->access$900(Landroid/animation/ValueAnimator;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_d
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    :cond_e
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$1000()J

    move-result-wide v22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
