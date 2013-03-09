.class Lcom/htc/android/mail/ecEditAccount$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "ecEditAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ecEditAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ecEditAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/ecEditAccount;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ecEditAccount$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 109
    invoke-static {}, Lcom/htc/android/mail/ecEditAccount;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ecEditAccount"

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

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/ecEditAccount$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ecEditAccount;

    .line 112
    .local v0, target:Lcom/htc/android/mail/ecEditAccount;
    if-nez v0, :cond_2

    .line 113
    invoke-static {}, Lcom/htc/android/mail/ecEditAccount;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ecEditAccount"

    const-string v2, "editAccount does not exist"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/htc/android/mail/ecEditAccount;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-static {}, Lcom/htc/android/mail/ecEditAccount;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ecEditAccount"

    const-string v2, "editAccount is finishing"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
