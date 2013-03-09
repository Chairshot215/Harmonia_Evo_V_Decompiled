.class Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;
.super Landroid/os/Handler;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/model/AccountTypeManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    goto :goto_0

    .line 354
    :pswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->processBroadcastIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/model/AccountTypeManagerImpl$4;->this$0:Lcom/android/htccontacts/model/AccountTypeManagerImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    #calls: Lcom/android/htccontacts/model/AccountTypeManagerImpl;->processSIMBroadCastIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/htccontacts/model/AccountTypeManagerImpl;Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
