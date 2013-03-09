.class public Lcom/htc/android/mail/ProviderListScreen$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHandler"
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ProviderListScreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/ProviderListScreen;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 429
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 430
    return-void
.end method


# virtual methods
.method public accountSyncResult(Z)V
    .locals 2
    .parameter "result"

    .prologue
    .line 460
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 464
    return-void

    .line 462
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 433
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ProviderListScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ProviderListScreen;

    .line 436
    .local v1, target:Lcom/htc/android/mail/ProviderListScreen;
    if-nez v1, :cond_2

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    invoke-virtual {v1}, Lcom/htc/android/mail/ProviderListScreen;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 444
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 446
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_3

    .line 447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/ProviderListScreen$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/ProviderListScreen;

    invoke-virtual {v2}, Lcom/htc/android/mail/ProviderListScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 449
    invoke-virtual {v1}, Lcom/htc/android/mail/ProviderListScreen;->finish()V

    .line 450
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/ProviderListScreen;->startActivity(Landroid/content/Intent;)V

    .line 453
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/ProviderListScreen;->removeDialog(I)V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
