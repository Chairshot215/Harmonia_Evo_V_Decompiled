.class Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;
.super Landroid/os/Handler;
.source "HtcSimCardAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    #getter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$000(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    #setter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$102(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    #getter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$000(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    new-instance v5, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;)V

    #setter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->gsmResult:Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$102(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcGsmAuthenticationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    #getter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$000(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    #setter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$202(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    #getter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$000(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :try_start_3
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    if-eqz v2, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;->e:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    sget-object v4, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->SYNC_FAILURE_EXCEPTION:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException$Error;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    #setter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$202(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service$1;->this$1:Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;

    new-instance v5, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;-><init>(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticationException;)V

    #setter for: Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->akaResult:Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;->access$202(Lcom/android/internal/telephony/gsm/HtcSimCardAuthenticator$Service;Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;)Lcom/android/internal/telephony/gsm/HtcAkaAuthenticationResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
