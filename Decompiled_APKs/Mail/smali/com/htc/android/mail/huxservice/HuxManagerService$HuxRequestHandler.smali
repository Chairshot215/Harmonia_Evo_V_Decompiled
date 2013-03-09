.class public Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;
.super Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;
.source "HuxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HuxRequestHandler"
.end annotation


# instance fields
.field protected final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/huxservice/HuxManagerService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/huxservice/HuxManagerService;Landroid/content/Context;Lcom/htc/android/mail/huxservice/HuxManagerService;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "target"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    .line 115
    invoke-direct {p0}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 120
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HuxManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HuxManagerService;

    .line 123
    .local v0, target:Lcom/htc/android/mail/huxservice/HuxManagerService;
    if-nez v0, :cond_2

    .line 124
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HuxManagerService"

    const-string v2, "target is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->handleMessage(Landroid/os/Message;)V

    .line 130
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HuxManagerService"

    const-string v2, "pinReceived()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$200(Lcom/htc/android/mail/huxservice/HuxManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$200(Lcom/htc/android/mail/huxservice/HuxManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :pswitch_1
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "HuxManagerService"

    const-string v2, "pinTimeOut()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$200(Lcom/htc/android/mail/huxservice/HuxManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxManagerService$HuxRequestHandler;->this$0:Lcom/htc/android/mail/huxservice/HuxManagerService;

    #getter for: Lcom/htc/android/mail/huxservice/HuxManagerService;->mGetPinLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxManagerService;->access$200(Lcom/htc/android/mail/huxservice/HuxManagerService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
