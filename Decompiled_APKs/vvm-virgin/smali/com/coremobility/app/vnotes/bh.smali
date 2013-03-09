.class public final Lcom/coremobility/app/vnotes/bh;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/coremobility/app/vnotes/bg;

.field private e:I

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;II)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    iput p3, p0, Lcom/coremobility/app/vnotes/bh;->a:I

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bh;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/coremobility/app/vnotes/bg;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bh;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p3, p4}, Lcom/coremobility/app/vnotes/bg;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/bh;->d:Lcom/coremobility/app/vnotes/bg;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bh;->d:Lcom/coremobility/app/vnotes/bg;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bh;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/bh;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/bh;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/bh;->b()V

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/bh;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/bh;->e:I

    iget v0, p0, Lcom/coremobility/app/vnotes/bh;->e:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/bh;->setWidth(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/bh;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/bh;->b()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/bh;->e:I

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bh;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bh;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v2, v0, v1

    iget v0, p0, Lcom/coremobility/app/vnotes/bh;->e:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v4, v0, 0x4

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bh;->g:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v5, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/bh;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->d:Lcom/coremobility/app/vnotes/bg;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/bg;->a(I)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bh;->dismiss()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->c:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/bh;->a:I

    int-to-long v0, v0

    cmp-long v0, v0, p4

    if-eqz v0, :cond_0

    long-to-int v0, p4

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->j(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bh;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->h(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final showAsDropDown(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/bh;->e:I

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/bh;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, -0x5

    invoke-super {p0, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bh;->g:Landroid/view/View;

    return-void
.end method
