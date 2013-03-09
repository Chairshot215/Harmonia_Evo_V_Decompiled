.class Lcom/android/htccontacts/BrowseContactsAllActivity2$8;
.super Landroid/os/Handler;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 873
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x270f

    if-ne v0, v1, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->loadPrefs()V
    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1400(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    .line 881
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 882
    return-void

    .line 877
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xf006

    if-ne v0, v1, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$8;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$1500(Lcom/android/htccontacts/BrowseContactsAllActivity2;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/htccontacts/util/ContactsSetupWizard;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
