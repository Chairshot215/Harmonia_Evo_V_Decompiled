.class Leu/chainfire/supersu/LogsFragment$1;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/LogsFragment;

.field private b:Landroid/view/LayoutInflater;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$1;->a:Leu/chainfire/supersu/LogsFragment;

    iput-object p4, p0, Leu/chainfire/supersu/LogsFragment$1;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment$1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->b:Landroid/view/LayoutInflater;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$1;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/LogsFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Logs$Log;

    const v1, 0x7f04002a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f04002b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f04002c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f04002d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Leu/chainfire/supersu/LogsFragment$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Leu/chainfire/supersu/Logs$Log;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Leu/chainfire/supersu/LogsFragment$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Leu/chainfire/supersu/Logs$Log;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-lez p1, :cond_2

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Leu/chainfire/supersu/LogsFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/chainfire/supersu/Logs$Log;

    iget v8, v5, Leu/chainfire/supersu/Logs$Log;->c:I

    mul-int/lit16 v8, v8, 0x2710

    iget v9, v5, Leu/chainfire/supersu/Logs$Log;->d:I

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v8, v9

    iget v9, v5, Leu/chainfire/supersu/Logs$Log;->e:I

    add-int/2addr v8, v9

    iget v9, v0, Leu/chainfire/supersu/Logs$Log;->c:I

    mul-int/lit16 v9, v9, 0x2710

    iget v10, v0, Leu/chainfire/supersu/Logs$Log;->d:I

    mul-int/lit8 v10, v10, 0x64

    add-int/2addr v9, v10

    iget v10, v0, Leu/chainfire/supersu/Logs$Log;->e:I

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_2

    const-string v7, ""

    iget v8, v5, Leu/chainfire/supersu/Logs$Log;->f:I

    mul-int/lit8 v8, v8, 0x64

    iget v5, v5, Leu/chainfire/supersu/Logs$Log;->g:I

    add-int/2addr v5, v8

    iget v8, v0, Leu/chainfire/supersu/Logs$Log;->f:I

    mul-int/lit8 v8, v8, 0x64

    iget v9, v0, Leu/chainfire/supersu/Logs$Log;->g:I

    add-int/2addr v8, v9

    if-ne v5, v8, :cond_2

    const-string v5, ""

    move-object v6, v7

    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Leu/chainfire/supersu/Logs$Log;->m:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, v0, Leu/chainfire/supersu/Logs$Log;->l:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-object p2

    :pswitch_0
    const v0, 0x7f020055

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    const v0, 0x7f020054

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f020056

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    move-object v5, v6

    move-object v6, v7

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
