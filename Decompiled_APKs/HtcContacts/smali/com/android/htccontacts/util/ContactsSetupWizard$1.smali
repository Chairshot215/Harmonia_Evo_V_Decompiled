.class Lcom/android/htccontacts/util/ContactsSetupWizard$1;
.super Landroid/os/Handler;
.source "ContactsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v6, 0x15b3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x270f

    if-ne v4, v5, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setResultExtra()V

    .line 142
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-virtual {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->finish()V

    .line 156
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    :cond_1
    return-void

    .line 143
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x22b8

    if-ne v4, v5, :cond_3

    .line 144
    iget-object v2, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    #calls: Lcom/android/htccontacts/util/ContactsSetupWizard;->checkIfNeedImportSIMContacts()V
    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->access$000(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    goto :goto_0

    .line 145
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1a0a

    if-ne v4, v5, :cond_5

    .line 146
    iget-object v4, p0, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->this$0:Lcom/android/htccontacts/util/ContactsSetupWizard;

    const/4 v5, 0x0

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v2, :cond_4

    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/htccontacts/util/ContactsSetupWizard;->setAllChildToggle(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    .line 147
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_0

    .line 148
    invoke-virtual {p0, v6}, Lcom/android/htccontacts/util/ContactsSetupWizard$1;->removeMessages(I)V

    .line 149
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 150
    .local v1, target:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/util/ContactsSetupWizard;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/util/ContactsSetupWizard;

    .line 151
    .local v0, activity:Lcom/android/htccontacts/util/ContactsSetupWizard;
    if-eqz v0, :cond_1

    .line 154
    new-instance v2, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;

    invoke-direct {v2, v0}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;-><init>(Lcom/android/htccontacts/util/ContactsSetupWizard;)V

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/util/ContactsSetupWizard$QueryGroupsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
