.class public final Lcom/coremobility/app/vnotes/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Lcom/coremobility/app/vnotes/bh;

.field private f:I

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    const v0, 0x7f0b00d7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bi;->g:Landroid/widget/Button;

    const-string v0, "0"

    iget v1, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "--"

    :cond_0
    :goto_0
    iput v4, p0, Lcom/coremobility/app/vnotes/bi;->d:I

    iput-object p2, p0, Lcom/coremobility/app/vnotes/bi;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v2, 0x7f0c02b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/bi;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/coremobility/app/vnotes/bi;->f:I

    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v1, 0x7f0c00c3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v1, 0x7f0c00c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iput p1, p0, Lcom/coremobility/app/vnotes/bi;->d:I

    iget v0, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    const v2, 0x7f0c02b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/bi;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    iget v1, p0, Lcom/coremobility/app/vnotes/bi;->d:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bh;->a(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    const-string v0, "--"

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/bi;->f:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coremobility/app/vnotes/bi;->f:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bh;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bh;->a()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/coremobility/app/vnotes/bh;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/bi;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/coremobility/app/vnotes/bi;->c:I

    iget v4, p0, Lcom/coremobility/app/vnotes/bi;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coremobility/app/vnotes/bh;-><init>(Landroid/content/Context;Landroid/app/Activity;II)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bi;->e:Lcom/coremobility/app/vnotes/bh;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bi;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bh;->showAsDropDown(Landroid/view/View;)V

    :cond_0
    return-void
.end method
