.class Lcom/android/htccontacts/BrowseContactsAllActivity2$14;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3341
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3343
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v0, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    if-nez v0, :cond_0

    .line 3344
    iget-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    new-instance v1, Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;

    iget-object v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BrowseContactsAllActivity2$DelayedStartQueryMyContactAndIndicator;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    iput-object v1, v0, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    .line 3351
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 3352
    return-void

    .line 3348
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$14;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iget-object v1, v1, Lcom/android/htccontacts/BrowseContactsAllActivity2;->delayedStartQueryMyContactAndIndicator:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0
.end method
