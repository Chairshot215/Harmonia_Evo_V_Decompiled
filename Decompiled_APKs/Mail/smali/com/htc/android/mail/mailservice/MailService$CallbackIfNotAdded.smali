.class Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackIfNotAdded"
.end annotation


# instance fields
.field private mAccount:Lcom/htc/android/mail/Account;

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

.field private mStartId:I

.field private mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/AbsRequestController;Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;Ljava/lang/ref/WeakReference;ILcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "controller"
    .parameter "requestHandlerMap"
    .parameter
    .parameter "startId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/AbsRequestController;",
            "Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;I",
            "Lcom/htc/android/mail/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1343
    .local p3, weakRequestHandler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 1345
    iput-object p2, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    .line 1346
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 1347
    iput p4, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mStartId:I

    .line 1348
    iput-object p5, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mAccount:Lcom/htc/android/mail/Account;

    .line 1349
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1352
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailService"

    const-string v2, "DestroyRunnable run:"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 1354
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v2, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 1355
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1356
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mRequestHandlerMap:Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;

    iget v2, p0, Lcom/htc/android/mail/mailservice/MailService$CallbackIfNotAdded;->mStartId:I

    invoke-virtual {v1, v2, v0}, Lcom/htc/android/mail/mailservice/MailService$RequestHandlerMap;->remove(ILandroid/os/Handler;)V

    .line 1359
    :cond_1
    return-void
.end method
