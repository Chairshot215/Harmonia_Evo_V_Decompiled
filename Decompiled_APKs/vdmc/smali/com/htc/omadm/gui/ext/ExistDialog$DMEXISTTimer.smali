.class public Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;
.super Landroid/os/CountDownTimer;
.source "ExistDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/gui/ext/ExistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DMEXISTTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/ExistDialog;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/gui/ext/ExistDialog;JJ)V
    .locals 0
    .parameter
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    .line 221
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 222
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$000(Lcom/htc/omadm/gui/ext/ExistDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$200(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResumeTimer -> startActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.andorid.omadm.dialog.resume"

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$500(Lcom/htc/omadm/gui/ext/ExistDialog;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/htc/omadm/gui/ext/ExistDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mSendIntent:Z
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$600(Lcom/htc/omadm/gui/ext/ExistDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$000(Lcom/htc/omadm/gui/ext/ExistDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$200(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResumeTimer -> onTick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mResumeHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$700(Lcom/htc/omadm/gui/ext/ExistDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    iget-boolean v0, v0, Lcom/htc/omadm/gui/ext/ExistDialog;->DBG:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$000(Lcom/htc/omadm/gui/ext/ExistDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/ExistDialog$DMEXISTTimer;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mStatus:I
    invoke-static {v2}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$200(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ResumeTimer -> Cancel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
