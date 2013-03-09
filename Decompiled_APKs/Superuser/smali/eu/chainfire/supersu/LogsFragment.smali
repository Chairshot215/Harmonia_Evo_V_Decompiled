.class public Leu/chainfire/supersu/LogsFragment;
.super Landroid/support/v4/app/ListFragment;


# instance fields
.field private a:Leu/chainfire/supersu/Logs;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->b:Z

    return-void
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;Ljava/util/List;)Landroid/widget/ListAdapter;
    .locals 5

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "default"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/LogsFragment$1;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Leu/chainfire/supersu/LogsFragment$1;-><init>(Leu/chainfire/supersu/LogsFragment;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    return-object v0
.end method

.method static synthetic a(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/LogsFragment$2;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/LogsFragment$2;-><init>(Leu/chainfire/supersu/LogsFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Leu/chainfire/supersu/LogsFragment;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/supersu/LogsFragment;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    invoke-direct {p0}, Leu/chainfire/supersu/LogsFragment;->b()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/LogsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Leu/chainfire/supersu/LogsFragment;->b()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    if-ltz p3, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment;->a:Leu/chainfire/supersu/Logs;

    sput-object v0, Leu/chainfire/supersu/Logs;->a:Leu/chainfire/supersu/Logs;

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Leu/chainfire/supersu/LogDetailActivity;->a(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/supersu/LogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
