.class Lcom/htc/util/backup/BackupRestoreService$1;
.super Landroid/os/Handler;
.source "BackupRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/backup/BackupRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/backup/BackupRestoreService;


# direct methods
.method constructor <init>(Lcom/htc/util/backup/BackupRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    iget-object v0, v0, Lcom/htc/util/backup/BackupRestoreService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WHAT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->stopMyself()V
    invoke-static {v0}, Lcom/htc/util/backup/BackupRestoreService;->access$300(Lcom/htc/util/backup/BackupRestoreService;)V

    .line 180
    return-void

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->reportStatus(I)V
    invoke-static {v0, v3}, Lcom/htc/util/backup/BackupRestoreService;->access$200(Lcom/htc/util/backup/BackupRestoreService;I)V

    goto :goto_0

    .line 167
    :pswitch_1
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RETURN_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/htc/util/backup/BackupRestoreService;->reportStatus(I)V
    invoke-static {v0, v1}, Lcom/htc/util/backup/BackupRestoreService;->access$200(Lcom/htc/util/backup/BackupRestoreService;I)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    #calls: Lcom/htc/util/backup/BackupRestoreService;->reportStatus(I)V
    invoke-static {v0, v3}, Lcom/htc/util/backup/BackupRestoreService;->access$200(Lcom/htc/util/backup/BackupRestoreService;I)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v0, p0, Lcom/htc/util/backup/BackupRestoreService$1;->this$0:Lcom/htc/util/backup/BackupRestoreService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RETURN_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    #calls: Lcom/htc/util/backup/BackupRestoreService;->reportStatus(I)V
    invoke-static {v0, v1}, Lcom/htc/util/backup/BackupRestoreService;->access$200(Lcom/htc/util/backup/BackupRestoreService;I)V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
