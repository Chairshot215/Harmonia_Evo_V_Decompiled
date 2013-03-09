.class Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;
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
    .line 109
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->setResult(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$1;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finish()V

    .line 113
    return-void
.end method
