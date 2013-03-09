.class public final Lcom/coremobility/app/customui/m;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private a:I

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;)V
    .locals 2

    const v1, 0x7f030009

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-boolean v0, p0, Lcom/coremobility/app/customui/m;->d:Z

    iput v1, p0, Lcom/coremobility/app/customui/m;->a:I

    iput-object p1, p0, Lcom/coremobility/app/customui/m;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/customui/m;->b:Landroid/view/LayoutInflater;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/customui/m;->d:Z

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coremobility/app/customui/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/n;

    if-eqz p2, :cond_3

    move-object v4, p2

    :goto_0
    const v1, 0x7f0b0022

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0b0023

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v8, p0, Lcom/coremobility/app/customui/m;->d:Z

    if-eqz v8, :cond_b

    const v3, 0x7f0b0024

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v10, v3

    :goto_1
    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->a()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_5

    move v9, v7

    :goto_2
    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v8, v7

    :goto_3
    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    if-eqz v9, :cond_8

    move v3, v5

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v8, :cond_9

    move v3, v5

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/coremobility/app/customui/m;->d:Z

    if-eqz v3, :cond_0

    if-eqz v7, :cond_a

    move v3, v5

    :goto_7
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/coremobility/app/customui/m;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/coremobility/app/customui/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    move-object v0, v4

    :goto_8
    return-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/coremobility/app/customui/m;->d:Z

    if-eqz v1, :cond_4

    new-instance v4, Lcom/coremobility/app/customui/f;

    iget-object v1, p0, Lcom/coremobility/app/customui/m;->c:Landroid/content/Context;

    iget v2, p0, Lcom/coremobility/app/customui/m;->a:I

    iget-object v8, p0, Lcom/coremobility/app/customui/m;->b:Landroid/view/LayoutInflater;

    invoke-direct {v4, v1, v2, v8}, Lcom/coremobility/app/customui/f;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/coremobility/app/customui/m;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    move v9, v5

    goto :goto_2

    :cond_6
    move v8, v5

    goto :goto_3

    :cond_7
    move v7, v5

    goto :goto_4

    :cond_8
    move v3, v6

    goto :goto_5

    :cond_9
    move v3, v6

    goto :goto_6

    :cond_a
    move v3, v6

    goto :goto_7

    :cond_b
    move-object v10, v3

    goto :goto_1
.end method
