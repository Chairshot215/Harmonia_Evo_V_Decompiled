.class Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;
.super Landroid/os/AsyncTask;
.source "FileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadJson"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field private mExtras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/s0up/goomanager/FileListActivity;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/FileListActivity;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter "extras"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 121
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->dialog:Landroid/app/ProgressDialog;

    .line 126
    iput-object p2, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->mExtras:Landroid/os/Bundle;

    .line 127
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 153
    new-instance v1, Lcom/s0up/goomanager/ReadJson;

    invoke-direct {v1}, Lcom/s0up/goomanager/ReadJson;-><init>()V

    iget-object v2, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/s0up/goomanager/ReadJson;->getFileArray(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 154
    .local v0, fileArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/s0up/goomanager/Singleton;->setArrayList(Ljava/util/ArrayList;)V

    .line 156
    const-string v1, "SUCCESS"

    .line 160
    :goto_0
    return-object v1

    .line 157
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 158
    const-string v1, "NO_ROMS"

    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "FAILURE"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 138
    const-string v0, "SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    #calls: Lcom/s0up/goomanager/FileListActivity;->AddArrayToList()V
    invoke-static {v0}, Lcom/s0up/goomanager/FileListActivity;->access$0(Lcom/s0up/goomanager/FileListActivity;)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 148
    return-void

    .line 140
    :cond_0
    const-string v0, "NO_ROMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    const-string v1, "No roms were found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/FileListActivity;->finish()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    const-string v1, "Unable to retrieve file list"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/FileListActivity;->finish()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Requesting list..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading file list..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/s0up/goomanager/FileListActivity$AsyncLoadJson;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 134
    return-void
.end method
