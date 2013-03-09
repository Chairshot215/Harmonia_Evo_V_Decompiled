.class Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;
.super Ljava/lang/Object;
.source "UakFlowJudgeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Lcom/android/settings/htcuserassignkey/UakChooseFlowActivity;->isSetupRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.UAK_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, target:Landroid/content/Intent;
    const-string v1, "com.android.settings.extra.UAK_HW_KEY_INDEX"

    iget-object v2, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    iget v2, v2, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->mkeyCode_1b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->startActivity(Landroid/content/Intent;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-virtual {v1}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finish()V

    .line 134
    .end local v0           #target:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    const v2, 0x7f0c0521

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    iget-object v1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$2;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-virtual {v1}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finish()V

    goto :goto_0
.end method
