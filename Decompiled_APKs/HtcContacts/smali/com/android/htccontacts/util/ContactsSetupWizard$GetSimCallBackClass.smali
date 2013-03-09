.class public Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;
.super Ljava/lang/Object;
.source "ContactsSetupWizard.java"

# interfaces
.implements Lcom/android/htccontacts/model/AccountTypeManager$onGetSimContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GetSimCallBackClass"
.end annotation


# instance fields
.field private mAlreadyExcute:Z

.field mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/util/ContactsSetupWizard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mAlreadyExcute:Z

    .line 446
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mTarget:Ljava/lang/ref/WeakReference;

    .line 447
    return-void
.end method


# virtual methods
.method public onReceiveSimContact()V
    .locals 7

    .prologue
    const/16 v6, 0x15b3

    .line 451
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .line 452
    .local v3, target:Lcom/android/htccontacts/util/ContactsSetupWizard;
    iget-object v4, v3, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mAlreadyExcute:Z

    if-eqz v4, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    #getter for: Lcom/android/htccontacts/util/ContactsSetupWizard;->mAccountCountList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$400(Lcom/android/htccontacts/util/ContactsSetupWizard;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;

    .line 457
    .local v0, account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    iget-object v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountName:Ljava/lang/String;

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;->mAccountType:Ljava/lang/String;

    const-string v5, "com.anddroid.contacts.sim"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 463
    .end local v0           #account:Lcom/android/htccontacts/util/ContactsSetupWizard$AccountCount;
    :cond_3
    iget-object v4, v3, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 464
    .local v2, msg:Landroid/os/Message;
    iget-object v4, v3, Lcom/android/htccontacts/util/ContactsSetupWizard;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$GetSimCallBackClass;->mAlreadyExcute:Z

    goto :goto_0
.end method
