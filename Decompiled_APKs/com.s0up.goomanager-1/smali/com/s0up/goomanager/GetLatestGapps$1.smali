.class Lcom/s0up/goomanager/GetLatestGapps$1;
.super Ljava/lang/Object;
.source "GetLatestGapps.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GetLatestGapps;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetLatestGapps;

.field private final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GetLatestGapps;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->this$0:Lcom/s0up/goomanager/GetLatestGapps;

    iput-object p2, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->val$i:Landroid/content/Intent;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 63
    packed-switch p2, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->this$0:Lcom/s0up/goomanager/GetLatestGapps;

    #getter for: Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/s0up/goomanager/GetLatestGapps;->access$2(Lcom/s0up/goomanager/GetLatestGapps;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->val$i:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->this$0:Lcom/s0up/goomanager/GetLatestGapps;

    #getter for: Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/s0up/goomanager/GetLatestGapps;->access$2(Lcom/s0up/goomanager/GetLatestGapps;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/s0up/goomanager/FileListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, fileListActivity:Landroid/content/Intent;
    const-string v1, "path"

    const-string v2, "/gapps"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/s0up/goomanager/GetLatestGapps$1;->this$0:Lcom/s0up/goomanager/GetLatestGapps;

    #getter for: Lcom/s0up/goomanager/GetLatestGapps;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/s0up/goomanager/GetLatestGapps;->access$2(Lcom/s0up/goomanager/GetLatestGapps;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
