.class Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$000(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$000(Lcom/android/htccontacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 283
    return-void
.end method
