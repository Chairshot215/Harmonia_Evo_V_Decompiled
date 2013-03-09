.class Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$3;
.super Ljava/lang/Object;
.source "UakFlowJudgeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finishactivity()V
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
    .line 160
    iput-object p1, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$3;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog$3;->this$0:Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;

    invoke-virtual {v0}, Lcom/android/settings/htcuserassignkey/UakFlowJudgeDialog;->finish()V

    .line 163
    return-void
.end method
