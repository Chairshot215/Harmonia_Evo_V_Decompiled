.class Lcom/s0up/goomanager/DownloadActivity$ButtonListener;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final GAPPS:I = 0x3

.field private static final SHARE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/DownloadActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/DownloadActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p2, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->type:I

    .line 209
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 213
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    const-class v4, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v2, webViewIntent:Landroid/content/Intent;
    iget v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->type:I

    packed-switch v3, :pswitch_data_0

    .line 233
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/DownloadActivity;->access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "///"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, downloadLink:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://goo-inside.me"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v3, "downloadLink"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v3, "fileMd5"

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->fileMd5:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/DownloadActivity;->access$1(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v3, v2}, Lcom/s0up/goomanager/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 223
    .end local v0           #downloadLink:Ljava/lang/String;
    :pswitch_1
    const-string v3, "fileMd5"

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->gappsMd5:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/DownloadActivity;->access$3(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v3, "downloadLink"

    iget-object v4, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->gappsLink:Ljava/lang/String;
    invoke-static {v4}, Lcom/s0up/goomanager/DownloadActivity;->access$4(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v3, v2}, Lcom/s0up/goomanager/DownloadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    #getter for: Lcom/s0up/goomanager/DownloadActivity;->pathLink:Ljava/lang/String;
    invoke-static {v3}, Lcom/s0up/goomanager/DownloadActivity;->access$0(Lcom/s0up/goomanager/DownloadActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "///"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, shareLink:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.goo-inside.me"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v3, p0, Lcom/s0up/goomanager/DownloadActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/DownloadActivity;

    invoke-virtual {v3, v1}, Lcom/s0up/goomanager/DownloadActivity;->share(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
