.class Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 9489
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    .line 9490
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9491
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 9496
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/ComposeActivity;->updateRicipientFlag:Z

    .line 9497
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9498
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$FormatChangeObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 9499
    monitor-exit v1

    .line 9500
    return-void

    .line 9499
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
