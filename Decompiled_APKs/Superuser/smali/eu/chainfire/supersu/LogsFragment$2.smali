.class Leu/chainfire/supersu/LogsFragment$2;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/LogsFragment;

.field private b:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/LogsFragment;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->b:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    new-instance v1, Leu/chainfire/supersu/Logs;

    iget-object v2, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-virtual {v2}, Leu/chainfire/supersu/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Leu/chainfire/supersu/Logs;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;Leu/chainfire/supersu/Logs;)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;)Leu/chainfire/supersu/Logs;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/supersu/Logs;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Leu/chainfire/supersu/LogsFragment;->a(Leu/chainfire/supersu/LogsFragment;Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->b:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    iget-object v1, p0, Leu/chainfire/supersu/LogsFragment$2;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/LogsFragment;->setListShown(Z)V

    iget-object v0, p0, Leu/chainfire/supersu/LogsFragment$2;->a:Leu/chainfire/supersu/LogsFragment;

    invoke-static {v0}, Leu/chainfire/supersu/LogsFragment;->b(Leu/chainfire/supersu/LogsFragment;)V
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
