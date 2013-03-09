.class Leu/chainfire/supersu/AppsFragment$2;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/AppsFragment;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/AppsFragment;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->b:Landroid/widget/ListAdapter;

    return-void
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    new-instance v1, Leu/chainfire/supersu/Settings;

    iget-object v2, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-virtual {v2}, Leu/chainfire/supersu/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Leu/chainfire/supersu/AppsFragment;->a(Leu/chainfire/supersu/AppsFragment;Leu/chainfire/supersu/Settings;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->a(Leu/chainfire/supersu/AppsFragment;)Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->b:Landroid/widget/ListAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Leu/chainfire/supersu/AppsFragment$2;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/AppsFragment$2;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/AppsFragment;->setListShown(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/AppsFragment$2;->a:Leu/chainfire/supersu/AppsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/AppsFragment;->b(Leu/chainfire/supersu/AppsFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
