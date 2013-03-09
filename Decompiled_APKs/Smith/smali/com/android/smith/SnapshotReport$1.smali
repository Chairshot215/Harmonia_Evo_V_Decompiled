.class Lcom/android/smith/SnapshotReport$1;
.super Ljava/lang/Object;
.source "SnapshotReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/SnapshotReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/SnapshotReport;


# direct methods
.method constructor <init>(Lcom/android/smith/SnapshotReport;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/smith/SnapshotReport$1;->this$0:Lcom/android/smith/SnapshotReport;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 236
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$000()Lcom/android/smith/SnapshotReport$LogsThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$000()Lcom/android/smith/SnapshotReport$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/SnapshotReport$LogsThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "SM:SnapshotReport"

    const-string v1, "dumpping logs, ignore button click!"

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$100()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$200()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$300()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Saving logs, please wait ..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$100()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 248
    new-instance v1, Lcom/android/smith/SnapshotReport$LogsThread;

    iget-object v2, p0, Lcom/android/smith/SnapshotReport$1;->this$0:Lcom/android/smith/SnapshotReport;

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$400()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$500()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v2, v3, v0}, Lcom/android/smith/SnapshotReport$LogsThread;-><init>(Lcom/android/smith/SnapshotReport;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/android/smith/SnapshotReport;->access$002(Lcom/android/smith/SnapshotReport$LogsThread;)Lcom/android/smith/SnapshotReport$LogsThread;

    .line 249
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$000()Lcom/android/smith/SnapshotReport$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/SnapshotReport$LogsThread;->start()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$600()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$700()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "/data/data/com.android.smith/htclog/"

    goto :goto_1

    .line 251
    :cond_3
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$200()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 253
    new-instance v1, Lcom/android/smith/SnapshotReport$LogsThread;

    iget-object v2, p0, Lcom/android/smith/SnapshotReport$1;->this$0:Lcom/android/smith/SnapshotReport;

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$400()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$500()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/android/smith/SnapshotReport$LogsThread;-><init>(Lcom/android/smith/SnapshotReport;ILjava/lang/String;)V

    invoke-static {v1}, Lcom/android/smith/SnapshotReport;->access$002(Lcom/android/smith/SnapshotReport$LogsThread;)Lcom/android/smith/SnapshotReport$LogsThread;

    .line 254
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$000()Lcom/android/smith/SnapshotReport$LogsThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/smith/SnapshotReport$LogsThread;->start()V

    goto :goto_0

    .line 253
    :cond_4
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$600()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$700()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "/data/data/com.android.smith/htclog/"

    goto :goto_2

    .line 258
    :cond_6
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$100()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$200()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    invoke-static {}, Lcom/android/smith/SnapshotReport;->access$300()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Unknown button!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
