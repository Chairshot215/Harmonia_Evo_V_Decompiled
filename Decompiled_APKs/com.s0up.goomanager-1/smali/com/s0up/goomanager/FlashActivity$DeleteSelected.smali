.class Lcom/s0up/goomanager/FlashActivity$DeleteSelected;
.super Landroid/os/AsyncTask;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteSelected"
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
.field final synthetic this$0:Lcom/s0up/goomanager/FlashActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/FlashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$DeleteSelected;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    .line 392
    iget-object v4, p0, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-string v5, "goomanager"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/s0up/goomanager/FlashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 393
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "download_path"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/goomanager/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, download_path:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 402
    const/4 v4, 0x0

    return-object v4

    .line 395
    :cond_0
    sget-object v4, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/s0up/goomanager/FlashActivity$FileName;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/s0up/goomanager/FlashActivity;->mFileName:[Lcom/s0up/goomanager/FlashActivity$FileName;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/s0up/goomanager/FlashActivity$FileName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v2, mFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 394
    .end local v2           #mFile:Ljava/io/File;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #calls: Lcom/s0up/goomanager/FlashActivity;->getZipFiles()V
    invoke-static {v0}, Lcom/s0up/goomanager/FlashActivity;->access$4(Lcom/s0up/goomanager/FlashActivity;)V

    .line 388
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$DeleteSelected;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-string v1, "Operation complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    return-void
.end method
