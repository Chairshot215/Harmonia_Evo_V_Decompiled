.class Lcom/s0up/goomanager/GetRecoveryActivity$4;
.super Ljava/lang/Object;
.source "GetRecoveryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;->processRecoveryJSON(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 105
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v1}, Lcom/s0up/goomanager/GetRecoveryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/s0up/goomanager/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, webViewIntent:Landroid/content/Intent;
    const-string v1, "downloadLink"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    iget-object v3, v3, Lcom/s0up/goomanager/GetRecoveryActivity;->downloadLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "fileMd5"

    iget-object v2, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    iget-object v2, v2, Lcom/s0up/goomanager/GetRecoveryActivity;->fileMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v1, v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v1}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    goto :goto_0

    .line 112
    .end local v0           #webViewIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$4;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v1}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
