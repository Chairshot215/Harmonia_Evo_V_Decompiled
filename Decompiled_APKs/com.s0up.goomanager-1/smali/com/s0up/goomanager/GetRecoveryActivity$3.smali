.class Lcom/s0up/goomanager/GetRecoveryActivity$3;
.super Ljava/lang/Object;
.source "GetRecoveryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$3;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 56
    packed-switch p2, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$3;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    #getter for: Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->access$1(Lcom/s0up/goomanager/GetRecoveryActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_recovery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$3;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im/json2&action=recovery&ro_board="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/GetRecoveryActivity$3;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    iget-object v3, v3, Lcom/s0up/goomanager/GetRecoveryActivity;->ro_board:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;-><init>(Lcom/s0up/goomanager/GetRecoveryActivity;Ljava/lang/String;Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$3;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-virtual {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->finish()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
