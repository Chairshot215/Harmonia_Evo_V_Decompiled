.class Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;
.super Landroid/os/AsyncTask;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecursiveDelete"
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
    .line 406
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->this$0:Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/FlashActivity;Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;-><init>(Lcom/s0up/goomanager/FlashActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    .line 414
    iget-object v5, p0, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-string v6, "goomanager"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/s0up/goomanager/FlashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 415
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v5, "download_path"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/goomanager/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, download_path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 418
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, children:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v0

    if-lt v3, v5, :cond_1

    .line 423
    .end local v0           #children:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 420
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    new-instance v5, Ljava/io/File;

    aget-object v6, v0, v3

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 419
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->this$0:Lcom/s0up/goomanager/FlashActivity;

    #calls: Lcom/s0up/goomanager/FlashActivity;->getZipFiles()V
    invoke-static {v0}, Lcom/s0up/goomanager/FlashActivity;->access$4(Lcom/s0up/goomanager/FlashActivity;)V

    .line 410
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$RecursiveDelete;->this$0:Lcom/s0up/goomanager/FlashActivity;

    const-string v1, "Operation complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method
