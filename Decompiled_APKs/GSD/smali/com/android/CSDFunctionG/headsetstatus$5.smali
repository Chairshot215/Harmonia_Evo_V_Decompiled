.class Lcom/android/CSDFunctionG/headsetstatus$5;
.super Landroid/content/BroadcastReceiver;
.source "headsetstatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/headsetstatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/headsetstatus;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/headsetstatus;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/CSDFunctionG/headsetstatus$5;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$5;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #setter for: Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z
    invoke-static {v1, v3}, Lcom/android/CSDFunctionG/headsetstatus;->access$302(Lcom/android/CSDFunctionG/headsetstatus;Z)Z

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$5;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #setter for: Lcom/android/CSDFunctionG/headsetstatus;->IsHstPlugin:Z
    invoke-static {v1, v4}, Lcom/android/CSDFunctionG/headsetstatus;->access$302(Lcom/android/CSDFunctionG/headsetstatus;Z)Z

    .line 526
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$5;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #getter for: Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z
    invoke-static {v1}, Lcom/android/CSDFunctionG/headsetstatus;->access$400(Lcom/android/CSDFunctionG/headsetstatus;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_InstructMsg1:Landroid/widget/TextView;

    const v2, 0x7f020021

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 529
    sget-object v1, Lcom/android/CSDFunctionG/headsetstatus;->HST_NextStepMsg:Landroid/widget/TextView;

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v1, p0, Lcom/android/CSDFunctionG/headsetstatus$5;->this$0:Lcom/android/CSDFunctionG/headsetstatus;

    #setter for: Lcom/android/CSDFunctionG/headsetstatus;->Plugin_TestFlag:Z
    invoke-static {v1, v4}, Lcom/android/CSDFunctionG/headsetstatus;->access$402(Lcom/android/CSDFunctionG/headsetstatus;Z)Z

    goto :goto_0
.end method
