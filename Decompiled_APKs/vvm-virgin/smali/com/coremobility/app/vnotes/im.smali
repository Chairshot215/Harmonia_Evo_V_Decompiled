.class public final Lcom/coremobility/app/vnotes/im;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Landroid/database/Cursor;

.field private d:Lcom/coremobility/app/vnotes/da;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/im;->f:Z

    iput v0, p0, Lcom/coremobility/app/vnotes/im;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/im;->h:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/im;->a:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/coremobility/app/vnotes/im;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/im;->d:Lcom/coremobility/app/vnotes/da;

    iput p2, p0, Lcom/coremobility/app/vnotes/im;->e:I

    iput-boolean p4, p0, Lcom/coremobility/app/vnotes/im;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/im;->c:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/im;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/im;->c:Landroid/database/Cursor;

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/im;->g:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/im;->h:Z

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/im;->d:Lcom/coremobility/app/vnotes/da;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/da;->a()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/im;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/im;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/im;->d:Lcom/coremobility/app/vnotes/da;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/da;->a(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    if-nez p2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/coremobility/app/vnotes/im;->f:Z

    if-eqz v2, :cond_5

    new-instance v2, Lcom/coremobility/app/customui/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/im;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/im;->e:I

    invoke-direct {v2, v3, v4}, Lcom/coremobility/app/customui/a;-><init>(Landroid/content/Context;I)V

    move-object v3, v2

    :goto_0
    new-instance v4, Lcom/coremobility/app/vnotes/il;

    invoke-direct {v4}, Lcom/coremobility/app/vnotes/il;-><init>()V

    const v2, 0x7f0b003b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    const v2, 0x7f0b007c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    const v2, 0x7f0b007e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    const v2, 0x7f0b007f

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const v2, 0x7f0b0039

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    const v2, 0x7f0b0077

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->j:Landroid/widget/ImageView;

    const v2, 0x7f0b0079

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->h:Landroid/widget/ImageView;

    const v2, 0x7f0b005c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->i:Landroid/widget/ImageView;

    const v2, 0x7f0b007a

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->g:Landroid/widget/ImageView;

    const v2, 0x7f0b007b

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->f:Landroid/widget/ImageView;

    const v2, 0x7f0b007d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v4, Lcom/coremobility/app/vnotes/il;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v12, v4

    move-object/from16 p2, v3

    :goto_1
    const/4 v9, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v13, v2, [I

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v13, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/im;->d:Lcom/coremobility/app/vnotes/da;

    iget-object v2, v3, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move-object v11, v2

    :goto_2
    if-eqz v11, :cond_1c

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v3, v13}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-static {v9}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v9

    move v9, v4

    move-object v4, v2

    move-object v2, v7

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v6}, Lcom/coremobility/app/vnotes/cq;->a(IZZ)I

    move-result v7

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/coremobility/app/vnotes/il;->q:J

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iput-wide v2, v12, Lcom/coremobility/app/vnotes/il;->r:J

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/coremobility/app/vnotes/il;->s:J

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v2

    :goto_5
    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v11

    iget-wide v14, v12, Lcom/coremobility/app/vnotes/il;->q:J

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->s:J

    move-wide/from16 v18, v0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/coremobility/app/vnotes/il;->s:J

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->f:Landroid/widget/ImageView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-nez v2, :cond_10

    const/4 v2, 0x1

    move v7, v2

    :goto_6
    invoke-static {v7, v9}, Lcom/coremobility/app/vnotes/cq;->a(ZZ)I

    move-result v9

    if-lez v8, :cond_0

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/im;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0c006e

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    if-eqz v13, :cond_11

    iget-object v8, v12, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v12, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x3

    const v13, 0x7f0b007c

    invoke-virtual {v2, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_7
    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-nez v2, :cond_12

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    const-wide/16 v16, 0x2

    and-long v16, v16, v14

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_1

    const/4 v2, 0x1

    move v6, v2

    :cond_1
    const-wide/16 v16, 0x2000

    and-long v16, v16, v14

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v5, v2

    :cond_2
    const-wide/16 v16, 0x100

    and-long v16, v16, v14

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-lez v2, :cond_3

    const/4 v2, 0x1

    move v4, v2

    :cond_3
    const-wide/16 v16, 0x10

    and-long v13, v14, v16

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-lez v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :cond_4
    iget-object v8, v12, Lcom/coremobility/app/vnotes/il;->h:Landroid/widget/ImageView;

    if-eqz v5, :cond_15

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, v12, Lcom/coremobility/app/vnotes/il;->g:Landroid/widget/ImageView;

    if-eqz v4, :cond_16

    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, v12, Lcom/coremobility/app/vnotes/il;->i:Landroid/widget/ImageView;

    if-eqz v3, :cond_17

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v6, :cond_18

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->j:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->F()Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/im;->b:Landroid/content/Context;

    invoke-static {v2, v10, v9}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v3, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_d
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    invoke-static {v11}, Lcom/coremobility/app/vnotes/cq;->c(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_e
    return-object p2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/im;->a:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coremobility/app/vnotes/im;->e:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/il;

    move-object v12, v2

    goto/16 :goto_1

    :cond_7
    :try_start_1
    iget-object v2, v3, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_8

    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_2

    :cond_8
    iget-object v2, v3, Lcom/coremobility/app/vnotes/da;->a:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v3, Lcom/coremobility/app/vnotes/da;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/db;

    const/4 v3, 0x0

    if-eqz v2, :cond_22

    iget-object v2, v2, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/ka;

    :goto_f
    move-object v11, v2

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v7, v13}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-static {v9}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    :cond_a
    const-string v2, "unknown@"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v4, 0x1

    :goto_10
    invoke-static {v7}, Lcom/coremobility/app/vnotes/cq;->j(Ljava/lang/String;)Z

    move-result v2

    move v5, v4

    move-object v10, v9

    move-object v4, v8

    move v9, v2

    move-object v2, v7

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v11}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_d

    :goto_11
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/im;->b:Landroid/content/Context;

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    :goto_12
    iget-object v3, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed bindView in during saved renedering vnote info, Reason["

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

    goto/16 :goto_e

    :cond_d
    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v3

    goto :goto_11

    :cond_e
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_f
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_5

    :cond_10
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_6

    :cond_11
    iget-object v8, v12, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v8, 0x3

    const v13, 0x7f0b003a

    invoke-virtual {v2, v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_7

    :cond_12
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    const/4 v8, 0x3

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->s:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v8, v16, v18

    if-nez v8, :cond_13

    const-string v2, ""

    :goto_13
    iget-object v8, v12, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/im;->g:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " ("

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ") "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_14
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    iget-wide v0, v12, Lcom/coremobility/app/vnotes/il;->r:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coremobility/app/vnotes/im;->g:I

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_9

    :cond_16
    const/16 v2, 0x8

    goto/16 :goto_a

    :cond_17
    const/16 v2, 0x8

    goto/16 :goto_b

    :cond_18
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->j:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_19
    iget-object v3, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    if-eqz v7, :cond_1a

    const v2, 0x7f020091

    :goto_14
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :cond_1a
    const v2, 0x7f020086

    goto :goto_14

    :cond_1b
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1c
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    const-string v3, "Loading..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->F()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_15
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->h:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->i:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->j:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->f:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_1d
    iget-object v2, v12, Lcom/coremobility/app/vnotes/il;->e:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_15

    :cond_1e
    move-object v2, v4

    goto/16 :goto_11

    :cond_1f
    move v4, v5

    goto/16 :goto_10

    :cond_20
    move-object v2, v7

    move-object v10, v9

    move v9, v4

    move-object v4, v8

    goto/16 :goto_3

    :cond_21
    move-object v2, v7

    move-object v10, v9

    move v9, v4

    move-object v4, v8

    goto/16 :goto_3

    :cond_22
    move-object v2, v3

    goto/16 :goto_f
.end method
