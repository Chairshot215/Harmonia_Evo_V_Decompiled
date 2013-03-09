.class Lcom/htc/android/mail/ReadScreen$40;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->reloadAttachment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4709
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4711
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->showAttachmentSwitch()V
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6700(Lcom/htc/android/mail/ReadScreen;)V

    .line 4712
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mShowAttachThreadLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6800(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4713
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->expandAttachmentView:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$6900(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4714
    const/4 v1, 0x0

    .line 4715
    .local v1, notHtmlCursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/ReadScreen;->GetNotHtmlCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4716
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4717
    .local v0, _attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v2, v2, Lcom/htc/android/mail/ReadScreen;->mMailCommon:Lcom/htc/android/mail/MailCommon;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/MailCommon;->getAttachInfo(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4718
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2, v1}, Lcom/htc/android/mail/ReadScreen;->closeCursor(Landroid/database/Cursor;)V

    .line 4720
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$40;->this$0:Lcom/htc/android/mail/ReadScreen;

    new-instance v4, Lcom/htc/android/mail/ReadScreen$40$1;

    invoke-direct {v4, p0, v0}, Lcom/htc/android/mail/ReadScreen$40$1;-><init>(Lcom/htc/android/mail/ReadScreen$40;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v4}, Lcom/htc/android/mail/ReadScreen;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4726
    .end local v0           #_attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Attachment;>;"
    .end local v1           #notHtmlCursor:Landroid/database/Cursor;
    :cond_0
    monitor-exit v3

    .line 4727
    return-void

    .line 4726
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
