.class Lcom/htc/android/mail/ComposeActivity$81;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->updateRecipientUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9292
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 9296
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v0, v0, Lcom/htc/android/mail/ComposeActivity;->mRepaintTo:Z

    if-ne v0, v1, :cond_0

    .line 9297
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 9298
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v0, v0, Lcom/htc/android/mail/ComposeActivity;->mRepaintCC:Z

    if-ne v0, v1, :cond_1

    .line 9299
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 9300
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v0, v0, Lcom/htc/android/mail/ComposeActivity;->mRepaintBCC:Z

    if-ne v0, v1, :cond_2

    .line 9301
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x2

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    .line 9302
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9303
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mUpdatingRecipientUI:Z
    invoke-static {v0, v2}, Lcom/htc/android/mail/ComposeActivity;->access$10902(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 9304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9305
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mUpdatingRecipientUI:Z
    invoke-static {v0, v3}, Lcom/htc/android/mail/ComposeActivity;->access$10902(Lcom/htc/android/mail/ComposeActivity;Z)Z

    .line 9306
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9307
    :try_start_1
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$81;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 9308
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9309
    return-void

    .line 9304
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 9308
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
