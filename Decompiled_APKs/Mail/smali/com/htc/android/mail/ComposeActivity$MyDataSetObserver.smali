.class Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 9476
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9476
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 9481
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/android/mail/ComposeActivity;->updateRicipientFlag:Z

    .line 9482
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 9483
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$MyDataSetObserver;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$10800(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 9484
    monitor-exit v1

    .line 9485
    return-void

    .line 9484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
