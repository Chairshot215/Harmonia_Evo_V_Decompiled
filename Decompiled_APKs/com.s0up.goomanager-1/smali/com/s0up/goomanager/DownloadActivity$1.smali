.class Lcom/s0up/goomanager/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/s0up/goomanager/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/DownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 112
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 113
    .local v0, DOWNLOAD:I
    const/4 v1, 0x1

    .line 114
    .local v1, DOWNLOAD_GAPPS:I
    const/4 v2, 0x2

    .line 115
    .local v2, SHARE:I
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    const-class v6, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v4, webViewIntent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 118
    :pswitch_0
    new-instance v5, Lcom/s0up/goomanager/DownloadActivity$StartDownload;

    iget-object v6, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/s0up/goomanager/DownloadActivity$StartDownload;-><init>(Lcom/s0up/goomanager/DownloadActivity;Lcom/s0up/goomanager/DownloadActivity$StartDownload;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/s0up/goomanager/DownloadActivity$StartDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->has_gapps:Ljava/lang/Boolean;
    invoke-static {v5}, Lcom/s0up/goomanager/DownloadActivity;->access$5(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const-string v5, "fileMd5"

    iget-object v6, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->gappsMd5:Ljava/lang/String;
    invoke-static {v6}, Lcom/s0up/goomanager/DownloadActivity;->access$3(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v5, "downloadLink"

    iget-object v6, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;
    invoke-static {v6}, Lcom/s0up/goomanager/DownloadActivity;->access$4(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v5, v4}, Lcom/s0up/goomanager/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/DownloadActivity;->access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "///"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, shareLink:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://goo.im"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v5, v3}, Lcom/s0up/goomanager/DownloadActivity;->share(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v3           #shareLink:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;
    invoke-static {v5}, Lcom/s0up/goomanager/DownloadActivity;->access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "///"

    const-string v7, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .restart local v3       #shareLink:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://www.goo.im"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v5, p0, Lcom/s0up/goomanager/DownloadActivity$1;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v5, v3}, Lcom/s0up/goomanager/DownloadActivity;->share(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
