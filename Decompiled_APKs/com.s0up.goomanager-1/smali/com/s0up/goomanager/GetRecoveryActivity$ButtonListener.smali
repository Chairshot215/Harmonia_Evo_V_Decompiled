.class Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;
.super Ljava/lang/Object;
.source "GetRecoveryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GetRecoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonListener"
.end annotation


# static fields
.field private static final INSTALL_RECOVERY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/GetRecoveryActivity;I)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput p2, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->type:I

    .line 266
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 270
    iget v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->type:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iget-object v0, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    #getter for: Lcom/s0up/goomanager/GetRecoveryActivity;->extras:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/s0up/goomanager/GetRecoveryActivity;->access$1(Lcom/s0up/goomanager/GetRecoveryActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_recovery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/s0up/goomanager/GetRecoveryActivity$GetRecoveryFromUrl;

    iget-object v1, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im/json2&action=recovery&ro_board="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/GetRecoveryActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GetRecoveryActivity;

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

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
