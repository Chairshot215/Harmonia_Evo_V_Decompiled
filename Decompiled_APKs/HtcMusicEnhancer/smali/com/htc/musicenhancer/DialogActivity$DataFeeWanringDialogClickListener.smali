.class Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataFeeWanringDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/DialogActivity;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/DialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 122
    packed-switch p2, :pswitch_data_0

    .line 134
    const-string v0, "[EnhancerService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown button clicked. which is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    #calls: Lcom/htc/musicenhancer/DialogActivity;->startEnhanceService()V
    invoke-static {v0}, Lcom/htc/musicenhancer/DialogActivity;->access$000(Lcom/htc/musicenhancer/DialogActivity;)V

    .line 125
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    #calls: Lcom/htc/musicenhancer/DialogActivity;->saveFirstDownload(Z)V
    invoke-static {v0, v1}, Lcom/htc/musicenhancer/DialogActivity;->access$100(Lcom/htc/musicenhancer/DialogActivity;Z)V

    .line 126
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/DialogActivity;->finish()V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    #calls: Lcom/htc/musicenhancer/DialogActivity;->setAutoUpdateSetting(I)V
    invoke-static {v0, v1}, Lcom/htc/musicenhancer/DialogActivity;->access$200(Lcom/htc/musicenhancer/DialogActivity;I)V

    .line 130
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    #calls: Lcom/htc/musicenhancer/DialogActivity;->cancelDownload()V
    invoke-static {v0}, Lcom/htc/musicenhancer/DialogActivity;->access$300(Lcom/htc/musicenhancer/DialogActivity;)V

    .line 131
    iget-object v0, p0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;->this$0:Lcom/htc/musicenhancer/DialogActivity;

    invoke-virtual {v0}, Lcom/htc/musicenhancer/DialogActivity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
