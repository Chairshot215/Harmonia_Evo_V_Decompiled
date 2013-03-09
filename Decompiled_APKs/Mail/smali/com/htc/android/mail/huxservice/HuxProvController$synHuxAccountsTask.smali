.class public Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;
.super Landroid/os/AsyncTask;
.source "HuxProvController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxProvController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "synHuxAccountsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field aContext:Landroid/content/Context;

.field aWeakUIHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/MailRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 406
    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aContext:Landroid/content/Context;

    .line 407
    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aWeakUIHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 421
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aContext:Landroid/content/Context;

    .line 422
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aWeakUIHandler:Ljava/lang/ref/WeakReference;

    .line 424
    new-instance v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/huxservice/HuxProvController;->syncHuxAccounts(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "isSucess"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aWeakUIHandler:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aWeakUIHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    const-string v0, "HuxProvController"

    const-string v1, "synHuxAccountsTask aWeakUIHandler == null"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->aWeakUIHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/MailRequestHandler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/MailRequestHandler;->accountSyncResult(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HuxProvController$synHuxAccountsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
