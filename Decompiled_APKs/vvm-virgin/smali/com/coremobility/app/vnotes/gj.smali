.class public final Lcom/coremobility/app/vnotes/gj;
.super Landroid/widget/ResourceCursorAdapter;


# instance fields
.field private a:I

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/gj;->d:I

    iput p2, p0, Lcom/coremobility/app/vnotes/gj;->a:I

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gj;->c:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/coremobility/app/vnotes/gj;->b:Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/gj;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/gj;->d:I

    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/coremobility/app/vnotes/gk;

    move-object v7, v0

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v1, 0x1

    new-array v10, v1, [I

    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v13

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    const/4 v2, 0x1

    move v8, v2

    :goto_0
    const/4 v2, 0x0

    int-to-long v14, v5

    const-wide/16 v16, 0x2000

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v6, v14, v16

    if-lez v6, :cond_d

    const/4 v4, 0x1

    move v6, v4

    :goto_1
    int-to-long v4, v5

    const-wide/16 v14, 0x100

    and-long/2addr v4, v14

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-lez v4, :cond_c

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    if-eqz v8, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, v7, Lcom/coremobility/app/vnotes/gk;->a:Landroid/widget/TextView;

    const v13, 0x7f0c012f

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, v10}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v1

    move/from16 v18, v2

    move v2, v3

    move-object v3, v1

    move/from16 v1, v18

    :goto_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->F()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_5

    sget-object v1, Lcom/coremobility/app/vnotes/cu;->b:Lcom/coremobility/app/vnotes/cu;

    iget v1, v1, Lcom/coremobility/app/vnotes/cu;->e:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/gj;->c:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v3, v7, Lcom/coremobility/app/vnotes/gk;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    iget-object v1, v7, Lcom/coremobility/app/vnotes/gk;->b:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coremobility/app/vnotes/gj;->d:I

    invoke-static {v3, v4, v13}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v7, Lcom/coremobility/app/vnotes/gk;->c:Landroid/widget/TextView;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v11

    const/4 v11, 0x3

    invoke-static {v3, v4, v11}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_8

    const/4 v1, 0x0

    :goto_6
    iget-object v2, v7, Lcom/coremobility/app/vnotes/gk;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v7, Lcom/coremobility/app/vnotes/gk;->d:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v7, Lcom/coremobility/app/vnotes/gk;->e:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x6

    const-string v2, "bindView MIME query started"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x6

    const-string v3, "bindView MIME query started"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    iget-object v4, v7, Lcom/coremobility/app/vnotes/gk;->b:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_9
    return-void

    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v4

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_a
    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, v7, Lcom/coremobility/app/vnotes/gk;->a:Landroid/widget/TextView;

    const v13, 0x7f0c00db

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(I)V

    move-object v3, v4

    goto/16 :goto_3

    :cond_4
    iget-object v3, v7, Lcom/coremobility/app/vnotes/gk;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v4

    goto/16 :goto_3

    :cond_5
    sget-object v1, Lcom/coremobility/app/vnotes/cu;->c:Lcom/coremobility/app/vnotes/cu;

    iget v1, v1, Lcom/coremobility/app/vnotes/cu;->e:I

    goto/16 :goto_4

    :cond_6
    iget-object v1, v7, Lcom/coremobility/app/vnotes/gk;->g:Landroid/widget/ImageView;

    const v3, 0x7f020086

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindView exception, Reason["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_7
    :try_start_1
    iget-object v1, v7, Lcom/coremobility/app/vnotes/gk;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_8
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/coremobility/app/vnotes/cq;->a(IZZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto/16 :goto_6

    :cond_9
    const/16 v1, 0x8

    goto/16 :goto_7

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_8

    :cond_b
    move v2, v3

    goto :goto_a

    :cond_c
    move v5, v1

    goto/16 :goto_2

    :cond_d
    move v6, v4

    goto/16 :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/coremobility/app/vnotes/gj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gj;->c:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, p3}, Lcom/coremobility/app/vnotes/gj;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gj;->c:Landroid/content/Context;

    invoke-virtual {p0, p2, v1, v0}, Lcom/coremobility/app/vnotes/gj;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-object p2
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/gj;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/app/customui/a;

    iget v1, p0, Lcom/coremobility/app/vnotes/gj;->a:I

    invoke-direct {v0, p1, v1}, Lcom/coremobility/app/customui/a;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    :goto_0
    new-instance v2, Lcom/coremobility/app/vnotes/gk;

    invoke-direct {v2}, Lcom/coremobility/app/vnotes/gk;-><init>()V

    const v0, 0x7f0b003b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->a:Landroid/widget/TextView;

    const v0, 0x7f0b007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->b:Landroid/widget/TextView;

    const v0, 0x7f0b007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->c:Landroid/widget/TextView;

    const v0, 0x7f0b0079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->d:Landroid/widget/ImageView;

    const v0, 0x7f0b007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->e:Landroid/widget/ImageView;

    const v0, 0x7f0b007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->f:Landroid/widget/ImageView;

    const v0, 0x7f0b0039

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/coremobility/app/vnotes/gk;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method
