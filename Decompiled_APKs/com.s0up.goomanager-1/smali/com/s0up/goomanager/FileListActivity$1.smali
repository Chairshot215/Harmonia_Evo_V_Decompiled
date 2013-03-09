.class Lcom/s0up/goomanager/FileListActivity$1;
.super Ljava/lang/Object;
.source "FileListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/FileListActivity;->AddArrayToList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/FileListActivity;

.field private final synthetic val$fileData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/FileListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    iput-object p2, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "path"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    .local v5, pathLink:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "filename"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    .local v6, pathText:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "gapps_link"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, gappsLink:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "description"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, fileDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "md5"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, fileMd5:Ljava/lang/String;
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "gapps_md5"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, gappsMd5:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    const-class v8, Lcom/s0up/goomanager/DownloadActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v4, i:Landroid/content/Intent;
    const-string v7, "pathLink"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v7, "pathText"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v7, "gappsLink"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v7, "gappsMd5"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v7, "fileMd5"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v7, "fileDescription"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v7, v4}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0           #fileDescription:Ljava/lang/String;
    .end local v1           #fileMd5:Ljava/lang/String;
    .end local v2           #gappsLink:Ljava/lang/String;
    .end local v3           #gappsMd5:Ljava/lang/String;
    .end local v5           #pathLink:Ljava/lang/String;
    .end local v6           #pathText:Ljava/lang/String;
    :goto_0
    return-void

    .line 92
    .end local v4           #i:Landroid/content/Intent;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    const-class v8, Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .restart local v4       #i:Landroid/content/Intent;
    const-string v8, "path"

    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->val$fileData:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "path"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v7, "board"

    iget-object v8, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    #getter for: Lcom/s0up/goomanager/FileListActivity;->mBoardName:Ljava/lang/String;
    invoke-static {v8}, Lcom/s0up/goomanager/FileListActivity;->access$1(Lcom/s0up/goomanager/FileListActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v7, p0, Lcom/s0up/goomanager/FileListActivity$1;->this$0:Lcom/s0up/goomanager/FileListActivity;

    invoke-virtual {v7, v4}, Lcom/s0up/goomanager/FileListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
