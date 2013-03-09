.class Leu/chainfire/supersu/AppsFragment$1;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;Landroid/content/Context;[Leu/chainfire/supersu/Settings$App;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$1;->a:Leu/chainfire/supersu/AppsFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment$1;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->b:Landroid/view/LayoutInflater;

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$1;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/AppsFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    const v1, 0x7f040027

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f040028

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f040029

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Leu/chainfire/supersu/Settings$App;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const v0, 0x7f020055

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_2
    iget v0, v0, Leu/chainfire/supersu/Settings$App;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const v0, 0x7f020054

    goto :goto_0

    :cond_3
    const v0, 0x7f020056

    goto :goto_0
.end method
