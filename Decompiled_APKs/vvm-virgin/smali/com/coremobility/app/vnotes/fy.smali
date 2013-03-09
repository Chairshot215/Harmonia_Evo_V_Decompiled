.class public final Lcom/coremobility/app/vnotes/fy;
.super Landroid/widget/ResourceCursorAdapter;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Lcom/coremobility/app/vnotes/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/fy;->a:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/fy;->b:Z

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/fy;->c:Z

    iput v1, p0, Lcom/coremobility/app/vnotes/fy;->f:I

    iput p2, p0, Lcom/coremobility/app/vnotes/fy;->d:I

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/coremobility/app/vnotes/fy;->c:Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/fy;->f:I

    return-void
.end method

.method private a(IIJIJJLcom/coremobility/app/vnotes/fx;Lcom/coremobility/integration/f/b;Ljava/lang/String;Z)V
    .locals 16

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-wide/from16 v0, p6

    move-object/from16 v2, p10

    iput-wide v0, v2, Lcom/coremobility/app/vnotes/fx;->r:J

    move-wide/from16 v0, p8

    move-object/from16 v2, p10

    iput-wide v0, v2, Lcom/coremobility/app/vnotes/fx;->s:J

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->f:Landroid/widget/ImageView;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p10

    iget-wide v3, v0, Lcom/coremobility/app/vnotes/fx;->r:J

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-nez v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    move/from16 v0, p13

    invoke-static {v4, v0}, Lcom/coremobility/app/vnotes/cq;->a(ZZ)I

    move-result v9

    if-lez p2, :cond_0

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    const v12, 0x7f0c006e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz p12, :cond_5

    move-object/from16 v0, p10

    iget-object v10, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v10, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    invoke-static/range {p12 .. p12}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x3

    const v11, 0x7f0b007c

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    move-object/from16 v0, p10

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/fx;->r:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-nez v3, :cond_6

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->b:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const-wide/16 v10, 0x2

    and-long v10, v10, p3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_1

    const/4 v3, 0x1

    move v8, v3

    :cond_1
    const-wide/16 v10, 0x2000

    and-long v10, v10, p3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_2

    const/4 v3, 0x1

    move v7, v3

    :cond_2
    const-wide/16 v10, 0x100

    and-long v10, v10, p3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_3

    const/4 v3, 0x1

    move v6, v3

    :cond_3
    const-wide/16 v10, 0x10

    and-long v10, v10, p3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_10

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p10

    iget-object v10, v0, Lcom/coremobility/app/vnotes/fx;->h:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v7, v0, Lcom/coremobility/app/vnotes/fx;->g:Landroid/widget/ImageView;

    if-eqz v6, :cond_a

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v5, v0, Lcom/coremobility/app/vnotes/fx;->i:Landroid/widget/ImageView;

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v8, :cond_c

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->j:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/cf;->F()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    move-object/from16 v0, p11

    invoke-static {v3, v0, v9}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p10

    iget-object v4, v0, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_8
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    invoke-static/range {p1 .. p1}, Lcom/coremobility/app/vnotes/cq;->c(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    return-void

    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p10

    iget-object v10, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v10, 0x3

    const v11, 0x7f0b003a

    invoke-virtual {v3, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->b:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    move-object/from16 v0, p10

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/fx;->r:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p10

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/fx;->s:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    const-string v3, ""

    :goto_a
    move-object/from16 v0, p10

    iget-object v10, v0, Lcom/coremobility/app/vnotes/fx;->b:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p10

    iget-wide v12, v0, Lcom/coremobility/app/vnotes/fx;->r:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coremobility/app/vnotes/fy;->f:I

    invoke-static {v12, v13, v14}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ") "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_8
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->b:Landroid/widget/TextView;

    move-object/from16 v0, p10

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/fx;->r:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/coremobility/app/vnotes/fy;->f:I

    invoke-static {v10, v11, v12}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_4

    :cond_a
    const/16 v5, 0x8

    goto/16 :goto_5

    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->j:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p10

    iget-object v5, v0, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    const v3, 0x7f020091

    :goto_b
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_e
    const v3, 0x7f020086

    goto :goto_b

    :cond_f
    move-object/from16 v0, p10

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_10
    move v3, v5

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/fy;->b:Z

    return-void
.end method

.method public final a(Lcom/coremobility/app/vnotes/at;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fy;->g:Lcom/coremobility/app/vnotes/at;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/fy;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/fy;->f:I

    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 28

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/coremobility/app/vnotes/fx;

    const/4 v13, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v18, v0

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/4 v2, 0x6

    new-array v0, v2, [J

    move-object/from16 v23, v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v18, v2

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/ka;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v13

    if-eqz v13, :cond_1f

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v5

    move v7, v4

    move-object v4, v5

    move v5, v3

    move-object/from16 v3, v21

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v3, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v7}, Lcom/coremobility/app/vnotes/cq;->a(IZZ)I

    move-result v7

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    iput-wide v3, v12, Lcom/coremobility/app/vnotes/fx;->q:J

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    iput-wide v3, v12, Lcom/coremobility/app/vnotes/fx;->r:J

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v3

    iput-wide v3, v12, Lcom/coremobility/app/vnotes/fx;->s:J

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_2
    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_3
    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v3

    iget-wide v5, v12, Lcom/coremobility/app/vnotes/fx;->q:J

    iget-wide v8, v12, Lcom/coremobility/app/vnotes/fx;->r:J

    iget-wide v10, v12, Lcom/coremobility/app/vnotes/fx;->s:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/coremobility/app/vnotes/fy;->a(IIJIJJLcom/coremobility/app/vnotes/fx;Lcom/coremobility/integration/f/b;Ljava/lang/String;Z)V

    :cond_0
    :goto_4
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1e

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x1

    :cond_2
    const-string v7, "unknown@"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static/range {v21 .. v21}, Lcom/coremobility/app/vnotes/cq;->j(Ljava/lang/String;)Z

    move-result v15

    move v7, v4

    move-object v4, v5

    move v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1d

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    :goto_5
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_6
    iget-object v4, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed bindView in during Inbox renedering vnote info, Reason["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :try_start_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object v3, v6

    goto :goto_5

    :cond_7
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v2, v6

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :cond_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x1

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->o:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/coremobility/app/vnotes/fx;->r:J

    const/4 v2, 0x4

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->k:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/4 v2, 0x5

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->l:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/4 v2, 0x6

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v6, v2

    iput-wide v6, v12, Lcom/coremobility/app/vnotes/fx;->q:J

    const/16 v2, 0x8

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->n:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/16 v2, 0x9

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->p:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v6}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0x13

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->k:Landroid/database/CharArrayBuffer;

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v2, :cond_f

    new-instance v22, Ljava/lang/String;

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->k:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v7, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v13

    if-eqz v13, :cond_1c

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-object v5, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v2, :cond_10

    iget-object v3, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    const/4 v2, 0x0

    aget v2, v18, v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v4}, Lcom/coremobility/app/vnotes/cq;->a(IZZ)I

    move-result v26

    sget-object v2, Lcom/coremobility/integration/app/k;->n:Landroid/net/Uri;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-eqz v18, :cond_19

    const/4 v7, 0x0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    new-array v5, v9, [I

    new-array v10, v9, [J

    new-array v4, v9, [I

    new-array v2, v9, [I

    new-array v3, v9, [Ljava/lang/String;

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    const/4 v11, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v7

    const/4 v11, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    aput v11, v5, v7

    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    aput-wide v16, v10, v7

    const/4 v11, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    aput v11, v4, v7

    const/4 v11, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    aput v11, v2, v7

    const/4 v11, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_c

    :cond_d
    if-lez v9, :cond_e

    const/4 v7, 0x0

    aget-wide v9, v10, v7

    iput-wide v9, v12, Lcom/coremobility/app/vnotes/fx;->s:J

    :cond_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_9
    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->n:Landroid/database/CharArrayBuffer;

    iget v4, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_18

    new-instance v2, Ljava/lang/String;

    iget-object v3, v12, Lcom/coremobility/app/vnotes/fx;->o:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v3

    :goto_a
    iget-wide v5, v12, Lcom/coremobility/app/vnotes/fx;->q:J

    iget-wide v8, v12, Lcom/coremobility/app/vnotes/fx;->r:J

    iget-wide v10, v12, Lcom/coremobility/app/vnotes/fx;->s:J

    move-object/from16 v2, p0

    move/from16 v7, v26

    invoke-direct/range {v2 .. v15}, Lcom/coremobility/app/vnotes/fy;->a(IIJIJJLcom/coremobility/app/vnotes/fx;Lcom/coremobility/integration/f/b;Ljava/lang/String;Z)V

    new-instance v3, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v3}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v0, v24

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/coremobility/app/vnotes/ka;->a(J)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->b(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Lcom/coremobility/app/vnotes/ka;->a(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/coremobility/app/vnotes/fx;->q:J

    invoke-virtual {v3, v4, v5}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    const/4 v2, 0x0

    iget-wide v4, v12, Lcom/coremobility/app/vnotes/fx;->r:J

    aput-wide v4, v23, v2

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    iget-wide v4, v12, Lcom/coremobility/app/vnotes/fx;->s:J

    invoke-virtual {v3, v4, v5}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->o:Landroid/database/CharArrayBuffer;

    iget v4, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v4, :cond_15

    new-instance v2, Ljava/lang/String;

    iget-object v5, v12, Lcom/coremobility/app/vnotes/fx;->o:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_b
    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/ka;->d(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->p:Landroid/database/CharArrayBuffer;

    iget v4, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v4, :cond_16

    new-instance v2, Ljava/lang/String;

    iget-object v5, v12, Lcom/coremobility/app/vnotes/fx;->p:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_c
    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/ka;->e(Ljava/lang/String;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->n:Landroid/database/CharArrayBuffer;

    iget v4, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v4, :cond_17

    new-instance v2, Ljava/lang/String;

    iget-object v5, v12, Lcom/coremobility/app/vnotes/fx;->n:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v4}, Ljava/lang/String;-><init>([CII)V

    :goto_d
    invoke-virtual {v3, v2}, Lcom/coremobility/app/vnotes/ka;->f(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ka;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_f
    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->l:Landroid/database/CharArrayBuffer;

    iget v2, v2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    if-eqz v2, :cond_1c

    new-instance v21, Ljava/lang/String;

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->l:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6, v7, v2}, Ljava/lang/String;-><init>([CII)V

    const-string v2, "unknown@"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v13

    if-eqz v13, :cond_1a

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    :goto_f
    invoke-static/range {v21 .. v21}, Lcom/coremobility/app/vnotes/cq;->j(Ljava/lang/String;)Z

    move-result v15

    move/from16 v27, v2

    move-object v2, v4

    move v4, v3

    move/from16 v3, v27

    goto/16 :goto_7

    :cond_10
    new-instance v2, Ljava/lang/String;

    iget-object v6, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    if-eqz v21, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_12

    move-object/from16 v2, v21

    :cond_11
    :goto_10
    if-eqz v3, :cond_13

    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    const v5, 0x7f0c000d

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_12
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    move-object/from16 v2, v22

    goto :goto_10

    :cond_13
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    iget-object v2, v12, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    iget-object v3, v12, Lcom/coremobility/app/vnotes/fx;->m:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/TextView;->setText([CII)V

    goto/16 :goto_8

    :cond_15
    const-string v2, ""

    goto/16 :goto_b

    :cond_16
    const-string v2, ""

    goto/16 :goto_c

    :cond_17
    const-string v2, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    :cond_18
    move v3, v8

    goto/16 :goto_a

    :cond_19
    move-object/from16 v18, v11

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v17, v10

    move-object/from16 v16, v9

    goto/16 :goto_9

    :cond_1a
    move v3, v4

    move-object v4, v5

    goto :goto_f

    :cond_1b
    move v2, v3

    goto/16 :goto_e

    :cond_1c
    move-object v2, v5

    goto/16 :goto_7

    :cond_1d
    move-object v3, v4

    goto/16 :goto_5

    :cond_1e
    move v7, v4

    move-object v4, v5

    move v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_0

    :cond_1f
    move v7, v4

    move-object v4, v5

    move v5, v3

    move-object/from16 v3, v21

    goto/16 :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, p3}, Lcom/coremobility/app/vnotes/fy;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/fy;->e:Landroid/content/Context;

    invoke-virtual {p0, p2, v1, v0}, Lcom/coremobility/app/vnotes/fy;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public final isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/fy;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/fy;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/fy;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/app/customui/a;

    iget v1, p0, Lcom/coremobility/app/vnotes/fy;->d:I

    invoke-direct {v0, p1, v1}, Lcom/coremobility/app/customui/a;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/coremobility/app/vnotes/fx;

    invoke-direct {v2}, Lcom/coremobility/app/vnotes/fx;-><init>()V

    const v0, 0x7f0b003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    const v0, 0x7f0b007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->b:Landroid/widget/TextView;

    const v0, 0x7f0b007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b0079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->h:Landroid/widget/ImageView;

    const v0, 0x7f0b005c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->i:Landroid/widget/ImageView;

    const v0, 0x7f0b007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->g:Landroid/widget/ImageView;

    const v0, 0x7f0b007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->f:Landroid/widget/ImageView;

    const v0, 0x7f0b007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/fx;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected final onContentChanged()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const-string v0, "onContentChanged"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    const-string v0, "onContentChanged done"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fy;->g:Lcom/coremobility/app/vnotes/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fy;->g:Lcom/coremobility/app/vnotes/at;

    invoke-interface {v0}, Lcom/coremobility/app/vnotes/at;->a()V

    :cond_0
    return-void
.end method
