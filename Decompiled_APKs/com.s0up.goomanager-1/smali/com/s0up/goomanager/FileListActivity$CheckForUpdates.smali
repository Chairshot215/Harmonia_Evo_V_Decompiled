.class Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;
.super Landroid/os/AsyncTask;
.source "FileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForUpdates"
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
.field final synthetic this$0:Lcom/s0up/goomanager/FileListActivity;


# direct methods
.method private constructor <init>(Lcom/s0up/goomanager/FileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/s0up/goomanager/FileListActivity;Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;-><init>(Lcom/s0up/goomanager/FileListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/FileListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, i:Landroid/content/Intent;
    const-string v2, "manual_check"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    new-instance v1, Lcom/s0up/goomanager/RomUpdateReciever;

    invoke-direct {v1}, Lcom/s0up/goomanager/RomUpdateReciever;-><init>()V

    .line 188
    .local v1, receiver:Lcom/s0up/goomanager/RomUpdateReciever;
    iget-object v2, p0, Lcom/s0up/goomanager/FileListActivity$CheckForUpdates;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v2}, Lcom/s0up/goomanager/FileListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/s0up/goomanager/RomUpdateReciever;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 189
    const/4 v2, 0x0

    return-object v2
.end method
