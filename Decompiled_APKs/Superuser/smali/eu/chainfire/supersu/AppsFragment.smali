.class public Leu/chainfire/supersu/AppsFragment;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Leu/chainfire/supersu/Settings;

.field private b:[Leu/chainfire/supersu/Settings$App;

.field private c:Leu/chainfire/supersu/Settings$App;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment;)Landroid/widget/ListAdapter;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/AppsFragment;Leu/chainfire/supersu/Settings;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    return-void
.end method

.method private b()Landroid/widget/ListAdapter;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings;->b()[Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    new-instance v0, Leu/chainfire/supersu/AppsFragment$1;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    invoke-direct {v0, p0, v1, v2}, Leu/chainfire/supersu/AppsFragment$1;-><init>(Leu/chainfire/supersu/AppsFragment;Landroid/content/Context;[Leu/chainfire/supersu/Settings$App;)V

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/supersu/AppsFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/AppsFragment$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/AppsFragment$2;-><init>(Leu/chainfire/supersu/AppsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setListShown(Z)V

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->c()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/AppsFragment;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->b()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment;->c()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->a:Leu/chainfire/supersu/Settings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    array-length v0, v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    aget-object v0, v0, p3

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment;->c:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment;->b:[Leu/chainfire/supersu/Settings$App;

    aget-object v1, v1, p3

    iget-object v1, v1, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/supersu/AppDetailActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
